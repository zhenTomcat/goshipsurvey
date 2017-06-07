package com.ctoangels.goshipsurvey.common.modules.prepurchase.service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.TechnicalAppendix;
import com.baomidou.framework.service.ISuperService;

import java.util.List;

/**
 *
 * TechnicalAppendix 表数据服务层接口
 *
 */
public interface ITechnicalAppendixService extends ISuperService<TechnicalAppendix> {

    Boolean createTechnicalAppendix(Integer reportId);


    Boolean insertOrUpdateTechnicalAppendix(TechnicalAppendix technicalAppendix);

    List<TechnicalAppendix> selectListByReportId(Integer reportId,String catagory);
}