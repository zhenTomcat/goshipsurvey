package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.*;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.*;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.*;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.QuotationApplicationMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.*;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IMessageService;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.ArrayList;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.List;

/**
 * PurchaseInspection 表数据服务层接口实现类
 */
@Service
public class PurchaseInspectionServiceImpl extends SuperServiceImpl<PurchaseInspectionMapper, PurchaseInspection> implements IPurchaseInspectionService {

    @Autowired
    private PurchaseInspectionMapper purchaseInspectionMapper;

    @Autowired
    private ShipDetailMapper shipDetailMapper;

    @Autowired
    QuotationApplicationMapper quotationApplicationMapper;

    @Autowired
    PurchaseQuotationMapper purchaseQuotationMapper;

    @Autowired
    InspectionReportMapper inspectionReportMapper;

    @Autowired
    ITechnicalAppendixService technicalAppendixService;

    @Autowired
    IDocumentService documentService;

    @Autowired
    GalleriesMapper galleriesMapper;

    @Autowired
    IShipDetailService shipDetailService;

    @Autowired
    CommentMapper commentMapper;

    @Autowired
    IMessageService messageService;

    @Autowired
    IDictService dictService;

    @Autowired
    IGradeModelService gradeModelService;

    @Autowired
    IGradeService gradeService;

    @Autowired
    private GradeMapper gradeMapper;

    @Autowired
    private IInspectionReportService inspectionReportService;


    @Override
    public List<PurchaseInspection> selectByInspection(Integer id, Integer start, Integer length) {

        List<PurchaseInspection> inspections = purchaseInspectionMapper.selectByInspection(id, start, length);
        List<Dict> shipTypeDict = dictService.getListByType("shipType");

        for (PurchaseInspection inspection : inspections) {
            inspection.getShipDetail().setShipType(shipTypeDict.get(Integer.parseInt(inspection.getShipDetail().getShipType()) - 1).getDes());
        }
        return inspections;
    }


    @Override
    public boolean initInspection(int quotationId, int applicationId) {
        //更新所有询价申请状态
        QuotationApplication quotationApplication = new QuotationApplication();
        quotationApplication.setQuotationId(quotationId);
        quotationApplication.setType(Const.PROJECT_TYPE_PURCHASE);
        List<QuotationApplication> applicationList = quotationApplicationMapper.selectList(new EntityWrapper<>(quotationApplication));
        int companyId = 0;
        int surveyorId = 0;
        List<Integer> failureIds = new ArrayList<>();
        double price = 0;
        for (QuotationApplication qa : applicationList) {
            if (qa.getId() == applicationId) {
                qa.setApplicationStatus(Const.QUO_APPLY_SUCCESS);
                companyId = qa.getUserId();
                surveyorId = qa.getSurveyId();
                price = qa.getTotalPrice();
            } else {
                qa.setApplicationStatus(Const.QUO_APPLY_FAILURE);
                failureIds.add(qa.getUserId());
            }
        }
        if (quotationApplicationMapper.updateBatchById(applicationList) < 0) {
            return false;
        }

        //更新询价状态
        PurchaseQuotation quotation = purchaseQuotationMapper.selectById(quotationId);
        quotation.setPublicStatus(Const.QUOTATION_END);
        quotation.setTotalPrice(price);
        if (purchaseQuotationMapper.updateById(quotation) < 0) {
            return false;
        }


        //生成船检
        PurchaseInspection inspection = new PurchaseInspection();
        inspection.setOpId(quotation.getOpId());
        inspection.setCompanyId(companyId);
        inspection.setSurveyId(surveyorId);
        inspection.setPurchaseQuoId(quotationId);
        inspection.setShipId(quotation.getShipId());
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        inspection.setCreateInfo(user.getName());
        if (purchaseInspectionMapper.insert(inspection) < 0) {
            return false;
        }

        //生成评论
        Comment comment = new Comment();
        comment.setCompanyId(companyId);
        comment.setSurveyorId(surveyorId);
        comment.setOpId(quotation.getOpId());
        comment.setCreateInfo(user.getName());
        comment.setProType(Const.PROJECT_TYPE_PURCHASE);
        comment.setInspectionId(inspection.getId());
        if (commentMapper.insert(comment) < 0) {
            return false;
        }
        inspectionReportService.createReport(inspection);

        //发送信息
        String shipName = shipDetailMapper.selectById(quotation.getShipId()).getShipName();
        String content1 = shipName + "船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船";
        messageService.publicOne(companyId, content1, content1);
        String content2 = shipName + "船买卖船勘验,验船申请失败";
        messageService.publicSome(failureIds, content2, content2);

        //report
        InspectionReport report = new InspectionReport();
        report.setShipId(inspection.getShipId());

        //插入一条报告
        inspectionReportMapper.insert(report);

        //创建两个默认相册
        Galleries galleries = new Galleries();
        galleries.setName("未命名");
        galleries.setNumber(0);
        galleries.setInspectionReportId(report.getId());
        galleries.setCreateDate(new Date());
        galleries.setDelFlag(Const.DEL_FLAG_NORMAL);
        galleriesMapper.insert(galleries);

        Galleries galleries1 = new Galleries();
        galleries1.setName("Certificate");
        galleries1.setNumber(0);
        galleries1.setInspectionReportId(report.getId());
        galleries1.setCreateDate(new Date());
        galleries1.setDelFlag(Const.DEL_FLAG_NORMAL);
        galleriesMapper.insert(galleries1);

        //创建16个Technical appendix
        technicalAppendixService.createTechnicalAppendix(report.getId());

        //创建12Document
        documentService.createDocuments(report.getId());


        //更新PurchaseInspection
        inspection.setInspectionReportId(report.getId());
        inspection.setSubmitStatus(Const.REPORT_UNSUBMIT);
        purchaseInspectionMapper.updateById(inspection);


        return true;
    }

    @Override
    public List<PurchaseInspection> selectByOpInspection(Integer id, Integer start, Integer length) {
        List<PurchaseInspection> inspections = purchaseInspectionMapper.selectByOpInspection(id, start, length);
        List<Dict> shipTypeDict = dictService.getListByType("shipType");

        for (PurchaseInspection inspection : inspections) {
            inspection.getShipDetail().setShipType(shipTypeDict.get(Integer.parseInt(inspection.getShipDetail().getShipType()) - 1).getDes());
        }

        return inspections;
    }

    @Override
    public PurchaseInspection selectByReportId(Integer reportId) {
        return purchaseInspectionMapper.selectByReportId(reportId);
    }

    public List<PurchaseInspection> getOPRecordList(Integer opId, Integer start, Integer length) {
        return purchaseInspectionMapper.getRecord(opId, null, Const.PROJECT_TYPE_PURCHASE, start, length);
    }

    @Override
    public List<PurchaseInspection> getCompanyRecordList(Integer companyId, Integer start, Integer length) {
        return purchaseInspectionMapper.getRecord(null, companyId, Const.PROJECT_TYPE_PURCHASE, start, length);
    }

    @Override
    public int getRecordTotal(Integer opId, Integer companyId) {
        PurchaseInspection pi = new PurchaseInspection();
        pi.setDelFlag(Const.DEL_FLAG_NORMAL);
        pi.setSubmitStatus(Const.REPORT_SUBMIT);
        if (opId != null) {
            pi.setOpId(opId);
        }
        if (companyId != null) {
            pi.setCompanyId(companyId);
        }
        return purchaseInspectionMapper.selectCount(pi);
    }

    @Override
    public Integer getInspectionCount(Integer id) {
        EntityWrapper<PurchaseInspection> ew = new EntityWrapper<>();
        ew.addFilter("company_id={0}", id);
        int total = purchaseInspectionMapper.selectCountByEw(ew);
        return total;
    }

    @Override
    public Integer getOpInspectionCount(Integer id) {
        EntityWrapper<PurchaseInspection> ew = new EntityWrapper<>();
        ew.addFilter("op_id={0}", id);
        int total = purchaseInspectionMapper.selectCountByEw(ew);
        return total;
    }

}