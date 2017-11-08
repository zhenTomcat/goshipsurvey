package com.ctoangels.goshipsurvey.common.modules.prepurchase.controller;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Port;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.EmailQuotation;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IEmailQuotationService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.util.StringUtils;
import com.ctoangels.goshipsurvey.common.util.Tools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.io.Serializable;
import java.util.List;

/**
 * EmailQuotation 控制层
 */
@Controller
@RequestMapping(value = "emailQuotation")
public class EmailQuotationController extends BaseController {

    @Autowired
    IEmailQuotationService emailQuotationService;

    @Autowired
    private IDictService dictService;

    @RequestMapping(value = "/addEmailQuotation", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject addEmailQuotation(@Valid EmailQuotation emailQuotation, BindingResult result) {
        JSONObject jsonObject = new JSONObject();
        if (result.hasErrors() || !validateEmailQuotation(emailQuotation)) {
            jsonObject.put("success", false);
        } else {
            emailQuotation.setRemoteIp((String) request.getAttribute("ip"));
            jsonObject.put("success", emailQuotationService.sendEmailQuotation(emailQuotation));
            session.setAttribute("emailQuotation", emailQuotation);
        }
        return jsonObject;
    }

    @RequestMapping(value = "/detail")
    public String emailQuotationShow(ModelMap map) {
        return "sys/emailQuotation";
    }


    private boolean validateEmailQuotation(EmailQuotation emailQuotation) {
        if (emailQuotation == null) return false;
        String inspectionType = emailQuotation.getInspectionType();
        String[] types = inspectionType.split(",");
        for (String type : types) {
            if ("1".equals(type)) {
                String delivery = emailQuotation.getDelivery();
                if ("3".equals(delivery) && StringUtils.isEmpty(emailQuotation.getDeliveryOther())) {
                    return false;
                }
            } else if ("2".equals(type)) {
                String reDelivery = emailQuotation.getReDelivery();
                if ("3".equals(reDelivery) && StringUtils.isEmpty(emailQuotation.getReDeliveryOther())) {
                    return false;
                }
            }
        }
        String role = emailQuotation.getRole();
        if ("4".equals(role) && StringUtils.isEmpty(emailQuotation.getRoleOther())) return false;
        return true;
    }
}