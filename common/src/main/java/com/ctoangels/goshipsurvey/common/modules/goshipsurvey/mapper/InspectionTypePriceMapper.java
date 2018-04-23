package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.InspectionTypePrice;
import com.baomidou.mybatisplus.mapper.AutoMapper;

/**
 *
 * InspectionTypePrice 表数据库控制层接口
 *
 */
public interface InspectionTypePriceMapper extends AutoMapper<InspectionTypePrice> {

    InspectionTypePrice selectByTypes(String inspectionType);

}