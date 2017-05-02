package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.SurveyorInfo;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.QuotationApplicationMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.QuotationMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.SurveyorInfoMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.mapper.UserMapper;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.InspectionMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IInspectionService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.List;

/**
 * Inspection 表数据服务层接口实现类
 */
@Service
public class InspectionServiceImpl extends SuperServiceImpl<InspectionMapper, Inspection> implements IInspectionService {

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

    @Override
    public boolean initInspection(int quotationId, int applicationId) {
        //更新所以询价申请状态
        QuotationApplication quotationApplication = new QuotationApplication();
        quotationApplication.setQuotationId(quotationId);
        List<QuotationApplication> applicationList = quotationApplicationMapper.selectList(new EntityWrapper<>(quotationApplication));
        int surveyorId = 0;
        double totalPrice = 0;
        for (QuotationApplication qa : applicationList) {
            if (qa.getId() == applicationId) {
                qa.setApplicationStatus(Const.QUO_APPLY_SUCCESS);
                surveyorId = qa.getUserId();
                totalPrice = qa.getTotalPrice();
            } else {
                qa.setApplicationStatus(Const.QUO_APPLY_FAILURE);
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
        inspection.setSurveyorId(surveyorId);
        inspection.setInspectionType(quotation.getInspectionType());
        inspection.setQuotationId(quotationId);
        inspection.setInspectionStatus(Const.INSPECTION_INIT);
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        inspection.setCreateInfo(user.getName());
        if (inspectionMapper.insert(inspection) < 0) {
            return false;
        }

        //生成surveyorInfo
        User surveyor = userMapper.selectById(surveyorId);
        SurveyorInfo surveyorInfo = new SurveyorInfo();
        surveyorInfo.setInspectionId(inspection.getId());
        surveyorInfo.setUserId(inspection.getSurveyorId());
        surveyorInfo.setType(surveyor.getType());
        surveyorInfo.setName(surveyor.getName());
        surveyorInfo.setCreateInfo(user.getName());
        if (surveyorInfoMapper.insert(surveyorInfo) < 0) {
            return false;
        }
        return true;
    }

    @Override
    public List<Inspection> getInspectionsOP(int userId) {
        EntityWrapper<Inspection> ew = new EntityWrapper<>();
        ew.addFilter("op_id={0} and inspection_status<{1}", userId, Const.INSPECTION_SURVEYOR_COMPLETE);
        ew.orderBy("update_date", false);
        List<Inspection> list = inspectionMapper.selectList(ew);
        for (Inspection i : list) {
            i.setQuotation(quotationMapper.selectById(i.getQuotationId()));
            SurveyorInfo surveyorInfo = new SurveyorInfo();
            surveyorInfo.setInspectionId(i.getId());
            surveyorInfo = surveyorInfoMapper.selectOne(surveyorInfo);
            i.setSurveyorInfo(surveyorInfo);
        }
        return list;
    }

    @Override
    public List<Inspection> getInspectionsSurveyor(int userId) {
        EntityWrapper<Inspection> ew = new EntityWrapper<>();
        ew.addFilter("surveyor_id={0} and inspection_status >={1} and inspection_status <{2}", userId, Const.INSPECTION_OP_OK, Const.INSPECTION_SURVEYOR_COMPLETE);
        ew.orderBy("update_date", false);
        List<Inspection> list = inspectionMapper.selectList(ew);
        for (Inspection i : list) {
            i.setQuotation(quotationMapper.selectById(i.getQuotationId()));
            SurveyorInfo surveyorInfo = new SurveyorInfo();
            surveyorInfo.setInspectionId(i.getId());
            surveyorInfo = surveyorInfoMapper.selectOne(surveyorInfo);
            i.setSurveyorInfo(surveyorInfo);
        }
        return list;
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