package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.SurveyorMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Surveyor;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ISurveyorService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.List;

/**
 * Surveyor 表数据服务层接口实现类
 */
@Service
public class SurveyorServiceImpl extends SuperServiceImpl<SurveyorMapper, Surveyor> implements ISurveyorService {

    @Autowired
    SurveyorMapper surveyorMapper;

    @Override
    public List<Surveyor> getSurveyorsByCompanyId(int companyId) {
        EntityWrapper<Surveyor> ew = new EntityWrapper<>();
        ew.addFilter("company_id={0} and del_flag={1}", companyId, Const.DEL_FLAG_NORMAL);
        return surveyorMapper.selectList(ew);
    }
}