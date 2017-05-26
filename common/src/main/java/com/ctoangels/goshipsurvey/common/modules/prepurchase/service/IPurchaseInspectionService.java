package com.ctoangels.goshipsurvey.common.modules.prepurchase.service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseInspection;
import com.baomidou.framework.service.ISuperService;

import java.util.List;

/**
 *
 * PurchaseInspection 表数据服务层接口
 *
 */
public interface IPurchaseInspectionService extends ISuperService<PurchaseInspection> {

    List<PurchaseInspection> selectByInspection(Integer id);
}