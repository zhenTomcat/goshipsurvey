package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.toolkit.StringUtils;
import com.ctoangels.goshipsurvey.common.modules.go.entity.PublicShip;
import com.ctoangels.goshipsurvey.common.modules.go.service.IPublicShipService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Dict;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.InspectionTypePrice;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.DictMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IInspectionTypePriceService;
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

    @Autowired
    IPublicShipService publicShipService;

    @Autowired
    IInspectionTypePriceService inspectionTypePriceService;

    @Autowired
    IDictService dictService;

    @Override
    public boolean sendEmailQuotation(EmailQuotation emailQuotation) {
        if (emailQuotationMapper.insert(emailQuotation) < 0) {
            return false;
        }
        //处理inspectionType
        EntityWrapper<Dict> insEw = new EntityWrapper<>();
        insEw.addFilter("type={0}", "emailQuotationType");
        insEw.orderBy("value");
        List<Dict> emailQuotationTypeDict = dictMapper.selectList(insEw);
        emailQuotation.setInspectionType(Tools.transferValuesToDes(emailQuotation.getInspectionType(), emailQuotationTypeDict));
        //处理role
        if ("4".equals(emailQuotation.getRole())) {
            emailQuotation.setRole(emailQuotation.getRoleOther());
        } else {
            EntityWrapper<Dict> roleEW = new EntityWrapper<>();
            roleEW.addFilter("type={0}", "emailQuotationRole");
            roleEW.orderBy("value");
            List<Dict> emailQuotationRoleDict = dictMapper.selectList(roleEW);
            emailQuotation.setRole(Tools.transferValuesToDes(emailQuotation.getRole(), emailQuotationRoleDict));
        }


        //处理delivery
        if ("3".equals(emailQuotation.getDelivery())) {
            emailQuotation.setDelivery(emailQuotation.getDeliveryOther());
        } else {
            EntityWrapper<Dict> deliveryEW = new EntityWrapper<>();
            deliveryEW.addFilter("type={0}", "emailQuotationDelivery");
            deliveryEW.orderBy("value");
            List<Dict> emailQuotationDeliveryDict = dictMapper.selectList(deliveryEW);
            emailQuotation.setDelivery(Tools.transferValuesToDes(emailQuotation.getDelivery(), emailQuotationDeliveryDict));
        }


        //处理re-delivery
        if ("3".equals(emailQuotation.getReDelivery())) {
            emailQuotation.setReDelivery(emailQuotation.getReDeliveryOther());
        } else {
            EntityWrapper<Dict> reDeliveryEW = new EntityWrapper<>();
            reDeliveryEW.addFilter("type={0}", "emailQuotationReDelivery");
            reDeliveryEW.orderBy("value");
            List<Dict> emailQuotationReDeliveryDict = dictMapper.selectList(reDeliveryEW);
            emailQuotation.setReDelivery(Tools.transferValuesToDes(emailQuotation.getReDelivery(), emailQuotationReDeliveryDict));
        }


        EntityWrapper<PublicShip> ew2 = new EntityWrapper<>();
        ew2.where("imo={0}", emailQuotation.getImo());
        if (!StringUtils.isEmpty(emailQuotation.getImo())) {
            List<PublicShip> shipList = publicShipService.getListByIMO(emailQuotation.getImo());
            if (shipList == null || shipList.size() == 0) {
                emailQuotation.setPublicShip(null);
            } else {
                emailQuotation.setPublicShip(shipList.get(0));
            }
        }

        MailUtil.sendEmailQuotationInner(emailQuotation);
        MailUtil.sendEmailQuotationOuter(emailQuotation, inspectionTypePriceService.getALl());
        return true;
    }
}