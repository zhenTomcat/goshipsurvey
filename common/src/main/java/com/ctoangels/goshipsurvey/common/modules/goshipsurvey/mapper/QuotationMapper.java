package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseQuotation;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Quotation 表数据库控制层接口
 */
public interface QuotationMapper extends AutoMapper<Quotation> {

    List<Quotation> getOPList(@Param(value = "opId") Integer opId,
                              @Param(value = "start") Integer start,
                              @Param(value = "length") Integer length);

    List<Quotation> getSurveyorList(@Param(value = "surveyorId") Integer surveyorId,
                                    @Param(value = "start") Integer start,
                                    @Param(value = "length") Integer length);

}