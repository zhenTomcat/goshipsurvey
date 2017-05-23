package com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseQuotation;
import com.baomidou.mybatisplus.mapper.AutoMapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * PurchaseQuotation 表数据库控制层接口
 */
public interface PurchaseQuotationMapper extends AutoMapper<PurchaseQuotation> {

    List<PurchaseQuotation> getOPList(@Param(value = "opId") Integer opId,
                                      @Param(value = "start") Integer start,
                                      @Param(value = "length") Integer length);


    List<PurchaseQuotation> getSurveyorList(@Param(value = "surveyorId") Integer surveyorId,
                                            @Param(value = "start") Integer start,
                                            @Param(value = "length") Integer length);
}