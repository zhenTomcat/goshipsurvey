package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseInspection;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Inspection 表数据库控制层接口
 */
public interface InspectionMapper extends AutoMapper<Inspection> {

    List<Inspection> getList(@Param(value = "opId") Integer opId,
                             @Param(value = "companyId") Integer companyId,
                             @Param(value = "start") int start,
                             @Param(value = "length") int length);

    Inspection getById(int id);

    List<Inspection> getRecord(@Param(value = "opId") Integer opId,
                               @Param(value = "companyId") Integer companyId,
                               @Param(value = "proType") Integer proType,
                               @Param(value = "start") Integer start,
                               @Param(value = "length") Integer length);

}