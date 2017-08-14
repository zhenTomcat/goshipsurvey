package com.ctoangels.goshipsurvey.common.modules.prepurchase.service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.EmailQuotation;
import com.baomidou.framework.service.ISuperService;

/**
 * EmailQuotation 表数据服务层接口
 */
public interface IEmailQuotationService extends ISuperService<EmailQuotation> {

    boolean sendEmailQuotation(EmailQuotation emailQuotation);
}