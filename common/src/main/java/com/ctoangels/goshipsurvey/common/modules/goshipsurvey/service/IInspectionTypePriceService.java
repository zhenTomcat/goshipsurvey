package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.InspectionTypePrice;
import com.baomidou.framework.service.ISuperService;

import java.util.List;

/**
 * InspectionTypePrice 表数据服务层接口
 */
public interface IInspectionTypePriceService extends ISuperService<InspectionTypePrice> {

    List<InspectionTypePrice> getALl();
}