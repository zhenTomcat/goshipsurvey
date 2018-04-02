package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.SurveyorInfo;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.QuotationApplicationMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.QuotationMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.SurveyorInfoMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Comment;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseInspection;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.CommentMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.UserSurveyor;
import com.ctoangels.goshipsurvey.common.modules.sys.mapper.UserMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.mapper.UserSurveyorMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IMessageService;
import com.ctoangels.goshipsurvey.common.modules.wechat.controller.Template;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.InspectionMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IInspectionService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.ArrayList;
import java.util.List;

/**
 * Inspection 表数据服务层接口实现类
 */
@Service
public class InspectionServiceImpl extends SuperServiceImpl<InspectionMapper, Inspection> implements IInspectionService {

    private static String url= "/pages/selectType/selectType?openid=";
    private static String first= "您好，申请结果如下";
    private static String keyword1= "";
    private static String keyword2= "";
    private static String remark= "";

    @Autowired
    InspectionMapper inspectionMapper;

    @Autowired
    QuotationApplicationMapper quotationApplicationMapper;

    @Autowired
    QuotationMapper quotationMapper;

    @Autowired
    SurveyorInfoMapper surveyorInfoMapper;

    @Autowired
    UserMapper userMapper;

    @Autowired
    CommentMapper commentMapper;

    @Autowired
    IMessageService messageService;

    @Autowired
    private UserSurveyorMapper userSurveyorMapper;

    @Autowired
    private Template template;

    @Override
    public boolean initInspection(int quotationId, int applicationId) {
        //更新所以询价申请状态
        QuotationApplication quotationApplication = new QuotationApplication();
        quotationApplication.setQuotationId(quotationId);
        quotationApplication.setType(Const.PROJECT_TYPE_HIRE);
        List<QuotationApplication> applicationList = quotationApplicationMapper.selectList(new EntityWrapper<>(quotationApplication));
        int surveyorId = 0;
        int companyId = 0;
        double totalPrice = 0;
        List<Integer> failureIds = new ArrayList<>();
        for (QuotationApplication qa : applicationList) {
            UserSurveyor userSurveyor=  userSurveyorMapper.selectByUserId(qa.getUserId());
            if (qa.getId() == applicationId) {
                qa.setApplicationStatus(Const.QUO_APPLY_SUCCESS);
                surveyorId = qa.getSurveyId();
                totalPrice = qa.getTotalPrice();
                companyId = qa.getUserId();


                if (userSurveyor!=null){
                    keyword2="你的申请成功通过，并且被邀请验船";
                    remark="详细信息打开微信小程序";
                    template.infomationNotice(userSurveyor.getGzhOpenId(),Const.NOTICE_AUDIT_RESULT,url,first,keyword1,keyword2,remark);
                }
            } else {
                if (userSurveyor!=null){
                    keyword2="很遗憾，您的申请未被通过。";
                    remark="详细信息打开微信小程序";
                    template.infomationNotice(userSurveyor.getGzhOpenId(),Const.NOTICE_AUDIT_RESULT,url,first,keyword1,keyword2,remark);
                }
                qa.setApplicationStatus(Const.QUO_APPLY_FAILURE);
                failureIds.add(qa.getUserId());
            }
        }
        if (quotationApplicationMapper.updateBatchById(applicationList) < 0) {
            return false;
        }

        //更新询价状态
        Quotation quotation = quotationMapper.selectById(quotationId);
        quotation.setTotalPrice(totalPrice);
        quotation.setQuotationStatus(Const.QUOTATION_END);
        if (quotationMapper.updateById(quotation) < 0) {
            return false;
        }


        //生成船检
        Inspection inspection = new Inspection();
        inspection.setOpId(quotation.getOpId());
        inspection.setCompanyId(companyId);
        inspection.setSurveyorId(surveyorId);
        inspection.setInspectionType(quotation.getInspectionType());
        inspection.setQuotationId(quotationId);
        inspection.setInspectionStatus(Const.INSPECTION_INIT);
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        inspection.setCreateInfo(user.getName());
        if (inspectionMapper.insert(inspection) < 0) {
            return false;
        }

        //生成评论
        Comment comment = new Comment();
        comment.setCompanyId(companyId);
        comment.setSurveyorId(surveyorId);
        comment.setOpId(quotation.getOpId());
        comment.setCreateInfo(user.getName());
        comment.setProType(Const.PROJECT_TYPE_HIRE);
        comment.setInspectionId(inspection.getId());
        if (commentMapper.insert(comment) < 0) {
            return false;
        }

        //发送信息
        String shipName = quotation.getShipName();
        String content1 = shipName + "船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船";
        messageService.publicOne(companyId, content1, content1);
        String content2 = shipName + "船租还船检验,验船申请失败";
        messageService.publicSome(failureIds, content2, content2);
        return true;
    }

    @Override
    public List<Inspection> getList(Integer opId, Integer companyId, int start, int length) {
        return inspectionMapper.getList(opId, companyId, start, length);
    }

    @Override
    public Inspection getById(int id) {
        return inspectionMapper.getById(id);
    }

    @Override
    public int getTotal(Integer opId, Integer companyId) {
        EntityWrapper<Inspection> ew = new EntityWrapper<>();
        ew.addFilter("del_flag = 0");
        if (opId != null) {
            ew.addFilter("op_id ={0}", opId);
        }
        if (companyId != null) {
            ew.addFilter("company_id ={0}", companyId);
        }
        return inspectionMapper.selectCountByEw(ew);
    }

    @Override
    public boolean editUrl(int id, String type, String url) {
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        String userName = user.getName();

        Inspection i = new Inspection();
        i.setId(id);
        i.setUpdateInfo(userName);
        if ("passport".equals(type)) {
            i.setPassportUrl(url);
        } else if ("loi".equals(type)) {
            i.setLoiUrl(url);
        } else if ("report".equals(type)) {
            i.setReportUrl(url);
            i.setInspectionStatus(Const.INSPECTION_END);
        }

        if (inspectionMapper.updateSelectiveById(i) < 0) {
            return false;
        } else {
            Inspection inspection = inspectionMapper.selectById(id);
            String shipName = quotationMapper.selectById(inspection.getQuotationId()).getShipName();
            if (!"report".equals(type)) {
                String content = shipName + "船租还船检验,验船师已上传相关文件,请及时查看";
                messageService.publicOne(inspection.getOpId(), content, content);
            } else {
                String content = shipName + "船租还船检验,检验报告已出,请及时在网上查看,并对本次船检做出评价";
                messageService.publicOne(inspection.getOpId(), content, content);
            }
        }

        return true;
    }

    public List<Inspection> getOPRecordList(Integer opId, Integer start, Integer length) {
        return inspectionMapper.getRecord(opId, null, Const.PROJECT_TYPE_HIRE, start, length);
    }

    @Override
    public List<Inspection> getCompanyRecordList(Integer companyId, Integer start, Integer length) {
        return inspectionMapper.getRecord(null, companyId, Const.PROJECT_TYPE_HIRE, start, length);
    }


    @Override
    public int getRecordTotal(Integer opId, Integer companyId) {
        EntityWrapper<Inspection> ew = new EntityWrapper<>();
        if (opId != null) {
            ew.addFilter("op_id={0} and inspection_status >={1} and del_flag=0", opId, Const.INSPECTION_SURVEYOR_COMPLETE);
        }
        if (companyId != null) {
            ew.addFilter("company_id={0} and inspection_status >={1} and del_flag=0", companyId, Const.INSPECTION_SURVEYOR_COMPLETE);
        }
        return inspectionMapper.selectCountByEw(ew);
    }


    @Override
    public boolean opShipInfoComplete(Inspection inspection) {
        inspection.setInspectionStatus(Const.INSPECTION_OP_OK);
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        inspection.setUpdateInfo(user.getName());
        if (inspectionMapper.updateSelectiveById(inspection) < 0) {
            return false;
        }
        return true;
    }

    @Override
    public boolean opConfirmComplete(int id) {
        Inspection inspection = new Inspection();
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        inspection.setId(id);
        inspection.setUpdateInfo(user.getName());
        inspection.setInspectionStatus(Const.INSPECTION_OP_COMPLETE);
        return (inspectionMapper.updateSelectiveById(inspection) >= 0);
    }

    @Override
    public boolean surveyorConfirmComplete(int id) {
        Inspection inspection = new Inspection();
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        inspection.setId(id);
        inspection.setUpdateInfo(user.getName());
        inspection.setInspectionStatus(Const.INSPECTION_SURVEYOR_COMPLETE);
        return (inspectionMapper.updateSelectiveById(inspection) >= 0);
    }
}