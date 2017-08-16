package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Dict;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.DictMapper;
import com.ctoangels.goshipsurvey.common.util.MailUtil;
import com.ctoangels.goshipsurvey.common.util.Tools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.EmailQuotationMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.EmailQuotation;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IEmailQuotationService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.List;

/**
 * EmailQuotation 表数据服务层接口实现类
 */
@Service
public class EmailQuotationServiceImpl extends SuperServiceImpl<EmailQuotationMapper, EmailQuotation> implements IEmailQuotationService {

    @Autowired
    EmailQuotationMapper emailQuotationMapper;

    @Autowired
    DictMapper dictMapper;

    @Override
    public boolean sendEmailQuotation(EmailQuotation emailQuotation) {
        if (emailQuotationMapper.insert(emailQuotation) < 0) {
            return false;
        }
        EntityWrapper<Dict> ew = new EntityWrapper<>();
        ew.addFilter("type={0}", "emailQuotationType");
        ew.orderBy("value");
        List<Dict> emailQuotationTypeDict = dictMapper.selectList(ew);
        emailQuotation.setInspectionType(Tools.transferValuesToDes(emailQuotation.getInspectionType(), emailQuotationTypeDict));
        MailUtil.sendEmailQuotation(emailQuotation);
        return true;
    }
}