package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.QuotationMapper;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.QuotationApplicationMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationApplicationService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.List;

/**
 * QuotationApplication 表数据服务层接口实现类
 */
@Service
public class QuotationApplicationServiceImpl extends SuperServiceImpl<QuotationApplicationMapper, QuotationApplication> implements IQuotationApplicationService {

    @Autowired
    QuotationApplicationMapper quotationApplicationMapper;

    @Autowired
    QuotationMapper quotationMapper;

    @Override
    public List<QuotationApplication> getAppliedQuotations(int userId) {
        EntityWrapper<QuotationApplication> ew = new EntityWrapper<>();
        ew.addFilter("user_id={0} and del_flag={1}", userId, Const.DEL_FLAG_NORMAL);
        ew.orderBy("update_date", false);
        List<QuotationApplication> applicationList = quotationApplicationMapper.selectList(ew);
        for (QuotationApplication application : applicationList) {
            application.setQuotation(quotationMapper.selectById(application.getQuotationId()));
        }
        return applicationList;
    }

}