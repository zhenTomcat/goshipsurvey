package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.baomidou.framework.service.ISuperService;

import java.util.List;

/**
 * QuotationApplication 表数据服务层接口
 */
public interface IQuotationApplicationService extends ISuperService<QuotationApplication> {

    //获取所有已申请的记录
    List<QuotationApplication> getAppliedQuotations(int userId);

    List<QuotationApplication> getApplications(Integer quotationId, Integer proType);

}