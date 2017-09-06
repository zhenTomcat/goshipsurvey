package com.ctoangels.goshipsurvey.common.modules.prepurchase.controller;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Port;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.EmailQuotation;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IEmailQuotationService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.util.Tools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
    public JSONObject addEmailQuotation(EmailQuotation emailQuotation) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", emailQuotationService.sendEmailQuotation(emailQuotation));
        session.setAttribute("emailQuotationId", emailQuotation.getId());
        return jsonObject;
    }

    @RequestMapping(value = "/detail")
    public String emailQuotationShow(ModelMap map) {
        Object objId = session.getAttribute("emailQuotationId");
        if (objId != null) {
            Integer id = (Integer) objId;
            EmailQuotation eq = emailQuotationService.selectById(id);
            eq.setInspectionType(Tools.transferValuesToDes(eq.getInspectionType(), getEmailQuotationTypeDict()));
            map.put("quotation", eq);
        }
        return "sys/emailQuotation";
    }
}