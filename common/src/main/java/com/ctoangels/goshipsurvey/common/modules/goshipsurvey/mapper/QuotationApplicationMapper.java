package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.baomidou.mybatisplus.mapper.AutoMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 *
 * QuotationApplication 表数据库控制层接口
 *
 */
public interface QuotationApplicationMapper extends AutoMapper<QuotationApplication> {

    List<QuotationApplication> getApplications(@Param(value = "quotationId") Integer quotationId, @Param(value = "proType") Integer proType);

}