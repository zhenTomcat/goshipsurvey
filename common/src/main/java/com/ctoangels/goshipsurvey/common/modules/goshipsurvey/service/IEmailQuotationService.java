package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.EmailQuotation;
import com.baomidou.framework.service.ISuperService;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;

/**
 * EmailQuotation 表数据服务层接口
 */
public interface IEmailQuotationService extends ISuperService<EmailQuotation> {

    boolean sendEmailQuotation(EmailQuotation emailQuotation);

    boolean EmailQuotationIdImportQuotation(Integer id, User user);
}