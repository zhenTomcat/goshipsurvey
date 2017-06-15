package com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseInspection;
import com.baomidou.mybatisplus.mapper.AutoMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * PurchaseInspection 表数据库控制层接口
 */
public interface PurchaseInspectionMapper extends AutoMapper<PurchaseInspection> {

    List<PurchaseInspection> selectByInspection(Integer id,Integer start , Integer length);

    List<PurchaseInspection> selectByOpInspection(Integer id,Integer start, Integer length);

    PurchaseInspection selectByReportId(Integer reportId);

    List<PurchaseInspection> getRecord(@Param(value = "opId") Integer opId,
                                       @Param(value = "companyId") Integer companyId,
                                       @Param(value = "proType") Integer proType,
                                       @Param(value = "start") Integer start,
                                       @Param(value = "length") Integer length);

}