package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.op;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.EmailQuotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IEmailQuotationService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.util.Const;
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
import java.util.Date;
import java.util.List;

/**
 * EmailQuotation 控制层
 */
@Controller
@RequestMapping(value = "op/emailQuotation")
public class EmailQuotationController extends BaseController {

    @Autowired
    IEmailQuotationService emailQuotationService;

    @Autowired
    private IDictService dictService;


    @RequestMapping
    public String list(ModelMap map) {
        map.put("shipType", getShipTypeDict());
        map.put("inspectionType", getInspectionTypeDict());
        return "goshipsurvey/op/emailQuotation/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getList(@RequestParam (required = false)String keyword) {
        EntityWrapper<EmailQuotation> ew=getEntityWrapper();
        if (keyword!=null && !keyword.trim().equals("")){
            ew.like("ship_name",keyword);
        }
        ew.orderBy("create_date",false);
        Page<EmailQuotation> page=emailQuotationService.selectPage(getPage(),ew);
        return jsonPage(page);
    }

    @RequestMapping(value = "/addEmailQuotation", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject addEmailQuotation(@Valid EmailQuotation emailQuotation, BindingResult result) {
        JSONObject jsonObject = new JSONObject();
        if (result.hasErrors() || !validateEmailQuotation(emailQuotation)) {
            jsonObject.put("success", false);
        } else {
            emailQuotation.setCreateDate(new Date());
            emailQuotation.setDelFlag(Const.DEL_FLAG_NORMAL);
            emailQuotation.setRemoteIp((String) request.getAttribute("ip"));
            jsonObject.put("success", emailQuotationService.sendEmailQuotation(emailQuotation));
            session.setAttribute("emailQuotation", emailQuotation);
        }
        return jsonObject;
    }

    /**
     *  将EmailQuotation的信息转存到Quotation中
     **/
    @RequestMapping(value = "/import", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject importQuotation(@RequestParam Integer id) {
        JSONObject jsonObject = new JSONObject();
        Boolean b= emailQuotationService.EmailQuotationIdImportQuotation(id,getCurrentUser());
        if (b) {
            jsonObject.put("status", 1);
        } else {
            jsonObject.put("status", 0);
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