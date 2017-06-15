package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.surveyor;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationApplicationService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseQuotation;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IPurchaseQuotationService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IShipDetailService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IMessageService;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.Tools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * QuotationApplication 控制层
 */
@Controller
@RequestMapping(value = "surveyor/quotationApplication")
public class SurveyorQuotationApplicationController extends BaseController {

    @Autowired
    IQuotationApplicationService quotationApplicationService;

    @Autowired
    IQuotationService quotationService;

    @Autowired
    IPurchaseQuotationService purchaseQuotationService;

    @Autowired
    IShipDetailService shipDetailService;

    @Autowired
    IMessageService messageService;


    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject add(QuotationApplication qa) {
        Tools.loggerThreadId("add application");
        JSONObject jsonObject = new JSONObject();
        qa.setUserId(getCurrentUser().getId());
        qa.setCreateInfo(getCurrentUser().getName());
        qa.setApplicationStatus(Const.QUO_APPLY_ING);
        if (quotationApplicationService.insert(qa)) {
            jsonObject.put("success", true);
            messageService.addApplicationMessage(qa.getId());
        } else {
            jsonObject.put("success", false);
        }
        return jsonObject;
    }
}