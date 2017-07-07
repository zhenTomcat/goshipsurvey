package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.QuotationApplicationMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.ShipDetail;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.ShipDetailMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IMessageService;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.DateUtil;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.PurchaseQuotationMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseQuotation;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IPurchaseQuotationService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.Date;
import java.util.List;

/**
 * PurchaseQuotation 表数据服务层接口实现类
 */
@Service
public class PurchaseQuotationServiceImpl extends SuperServiceImpl<PurchaseQuotationMapper, PurchaseQuotation> implements IPurchaseQuotationService {
    @Autowired
    private PurchaseQuotationMapper purchaseQuotationMapper;
    @Autowired
    private ShipDetailMapper shipDetailMapper;
    @Autowired
    private IMessageService messageService;

    @Override
    public boolean saveQuotationWithDetail(PurchaseQuotation quotation, ShipDetail detail) {
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        detail.setCreateInfo(user.getName());
        if (shipDetailMapper.insert(detail) < 0) {
            return false;
        }
        quotation.setOpId(user.getId());
        quotation.setShipId(detail.getId());
        quotation.setCreateInfo(user.getName());
        quotation.setPublicStatus(Const.QUOTATION_ING);
        if (purchaseQuotationMapper.insert(quotation) < 0) {
            return false;
        }
        String title = "本区域内有可进行买卖船勘验船舶,请及时查看";
        messageService.publicAll(title, title, Const.USER_TYPE_SURVEYOR_COMPANY);
        return true;
    }

    @Override
    public List<PurchaseQuotation> getOPList(Integer opId, Integer start, Integer length) {
        return purchaseQuotationMapper.getOPList(opId, start, length);
    }

    @Override
    public int getOPTotal(Integer opId) {
        EntityWrapper<PurchaseQuotation> ew = new EntityWrapper();
        ew.addFilter("op_id={0} and end_date>={1} and del_flag=0", opId, DateUtil.formatDate(new Date(), "yyyy-MM-dd"));
        return purchaseQuotationMapper.selectCountByEw(ew);
    }

    @Override
    public int getSurveyorTotal() {
        EntityWrapper<PurchaseQuotation> ew = new EntityWrapper();
        ew.addFilter("end_date>={0} and del_flag=0", DateUtil.formatDate(new Date(), "yyyy-MM-dd"));
        return purchaseQuotationMapper.selectCountByEw(ew);
    }

    @Override
    public List<PurchaseQuotation> getOPRecordList(Integer opId, Integer start, Integer length) {
        return purchaseQuotationMapper.getOPRecordList(opId, start, length);
    }

    @Override
    public int getRecordTotal(Integer opId) {
        EntityWrapper<PurchaseQuotation> ew = new EntityWrapper();
        ew.addFilter("op_id={0} and public_status > {1}", opId, Const.QUOTATION_ING);
        return purchaseQuotationMapper.selectCountByEw(ew);
    }

    @Override
    public List<PurchaseQuotation> getSurveyorList(Integer surveyorId, Integer start, Integer length) {
        return purchaseQuotationMapper.getSurveyorList(surveyorId, start, length);
    }

}