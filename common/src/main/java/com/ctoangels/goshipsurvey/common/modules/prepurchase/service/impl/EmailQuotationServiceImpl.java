package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import com.ctoangels.goshipsurvey.common.util.MailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.EmailQuotationMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.EmailQuotation;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IEmailQuotationService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 * EmailQuotation 表数据服务层接口实现类
 */
@Service
public class EmailQuotationServiceImpl extends SuperServiceImpl<EmailQuotationMapper, EmailQuotation> implements IEmailQuotationService {

    @Autowired
    EmailQuotationMapper emailQuotationMapper;

    @Override
    public boolean sendEmailQuotation(EmailQuotation emailQuotation) {
        if (emailQuotationMapper.insert(emailQuotation) < 0) {
            return false;
        }
        MailUtil.sendEmailQuotation(emailQuotation);
        return true;
    }
}