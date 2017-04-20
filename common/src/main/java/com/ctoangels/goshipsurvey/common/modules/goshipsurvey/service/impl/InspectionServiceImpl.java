package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.QuotationApplicationMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.QuotationMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
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


    @Override
    public boolean initInspection(int quotationId, int applicationId) {
        //更新所以询价申请状态
        QuotationApplication quotationApplication = new QuotationApplication();
        quotationApplication.setQuotationId(quotationId);
        List<QuotationApplication> applicationList = quotationApplicationMapper.selectList(new EntityWrapper<>(quotationApplication));
        for (QuotationApplication qa : applicationList) {
            if (qa.getId() == applicationId) {
                qa.setApplicationStatus(Const.QUO_APPLY_SUCCESS);
            } else {
                qa.setApplicationStatus(Const.QUO_APPLY_FAILURE);
            }
        }
        if (quotationApplicationMapper.updateBatchById(applicationList) < 0) {
            return false;
        }

        //更新询价状态
        Quotation quotation = quotationMapper.selectById(quotationId);
        quotation.setQuotationStatus(Const.QUOTATION_END);
        if (quotationMapper.updateById(quotation) < 0) {
            return false;
        }


        //生成船检
        Inspection inspection = new Inspection();
        inspection.setQuotationId(quotationId);
        inspection.setInspectionStatus(Const.INSPECTION_INIT);
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        inspection.setCreateInfo(user.getName());
        if (inspectionMapper.insert(inspection) < 0) {
            return false;
        }
        return true;
    }
}