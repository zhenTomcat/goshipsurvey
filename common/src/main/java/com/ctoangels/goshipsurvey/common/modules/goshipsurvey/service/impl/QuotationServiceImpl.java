package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.SurveyorInfo;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.InspectionMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.QuotationApplicationMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.SurveyorInfoMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseQuotation;
import com.ctoangels.goshipsurvey.common.modules.sys.mapper.UserMapper;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.QuotationMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Quotation 表数据服务层接口实现类
 */
@Service
public class QuotationServiceImpl extends SuperServiceImpl<QuotationMapper, Quotation> implements IQuotationService {

    @Autowired
    InspectionMapper inspectionMapper;

    @Autowired
    QuotationMapper quotationMapper;

    @Autowired
    SurveyorInfoMapper surveyorInfoMapper;

    @Autowired
    QuotationApplicationMapper quotationApplicationMapper;

    @Autowired
    UserMapper userMapper;

    @Override
    public List<Quotation> getOPList(Integer opId, Integer start, Integer length) {
        return quotationMapper.getOPList(opId, start, length);
    }

    @Override
    public int getOPTotal(Integer opId) {
        EntityWrapper<Quotation> ew = new EntityWrapper<>();
        ew.addFilter("op_id={0} and end_date>={1}", opId, DateUtil.formatDate(new Date(), "yyyy-MM-dd"));
        return quotationMapper.selectCountByEw(ew);
    }

    @Override
    public Inspection getInspectionInfo(int id) {
        Inspection inspection = new Inspection();
        inspection.setQuotationId(id);
        inspection.setDelFlag(Const.DEL_FLAG_NORMAL);
        inspection = inspectionMapper.selectOne(inspection);
        if (inspection != null) {
            SurveyorInfo surveyorInfo = new SurveyorInfo();
            surveyorInfo.setDelFlag(Const.DEL_FLAG_NORMAL);
            surveyorInfo.setInspectionId(inspection.getId());
            surveyorInfo = surveyorInfoMapper.selectOne(surveyorInfo);
            inspection.setSurveyorInfo(surveyorInfo);
        }
        return inspection;
    }

    @Override
    public List<QuotationApplication> getApplication(int id) {
        QuotationApplication quotationApplication = new QuotationApplication();
        quotationApplication.setQuotationId(id);
        quotationApplication.setType(Const.PROJECT_TYPE_HIRE);
        List<QuotationApplication> list = quotationApplicationMapper.selectList(new EntityWrapper<>(quotationApplication));
        for (QuotationApplication q : list) {
            q.setUser(userMapper.selectById(q.getUserId()));
        }
        return list;
    }

    @Override
    public List<Quotation> getSatisfiedQuotations(int userId) {
        EntityWrapper<Quotation> ew = new EntityWrapper<>();
        ew.addFilter("quotation_status={0} and del_flag={1}", Const.QUOTATION_ING, Const.DEL_FLAG_NORMAL);
        ew.orderBy("update_date", false);
        List<Quotation> list = quotationMapper.selectList(ew);
        List<Quotation> applied = new ArrayList<>();
        for (Quotation q : list) {
            QuotationApplication qa = new QuotationApplication();
            qa.setDelFlag(Const.DEL_FLAG_NORMAL);
            qa.setQuotationId(q.getId());
            qa.setUserId(userId);
            qa = quotationApplicationMapper.selectOne(qa);
            if (qa != null) {
                applied.add(q);
            }
        }
        list.removeAll(applied);
        return list;
    }

    @Override
    public List<Quotation> getSurveyorList(Integer surveyorId, Integer start, Integer length) {
        return quotationMapper.getSurveyorList(surveyorId, start, length);
    }

    @Override
    public int getSurveyorTotal() {
        EntityWrapper<Quotation> ew = new EntityWrapper();
        ew.addFilter("end_date>={0}", DateUtil.formatDate(new Date(), "yyyy-MM-dd"));
        return quotationMapper.selectCountByEw(ew);
    }

}