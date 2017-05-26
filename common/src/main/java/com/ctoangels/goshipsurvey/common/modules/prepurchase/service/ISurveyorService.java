package com.ctoangels.goshipsurvey.common.modules.prepurchase.service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Surveyor;
import com.baomidou.framework.service.ISuperService;

import java.util.List;

/**
 * Surveyor 表数据服务层接口
 */
public interface ISurveyorService extends ISuperService<Surveyor> {

    List<Surveyor> getSurveyorsByCompanyId(int companyId);

}