package com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseInspection;
import com.baomidou.mybatisplus.mapper.AutoMapper;

import java.util.List;

/**
 *
 * PurchaseInspection 表数据库控制层接口
 *
 */
public interface PurchaseInspectionMapper extends AutoMapper<PurchaseInspection> {

    List<PurchaseInspection> selectByInspection(Integer id);

    List<PurchaseInspection> selectByOpInspection(Integer id);

}