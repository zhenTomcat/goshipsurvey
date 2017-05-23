package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.surveyor;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationApplicationService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.util.Const;
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


    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject add(QuotationApplication qa) {
        JSONObject jsonObject = new JSONObject();
        qa.setUserId(getCurrentUser().getId());
        qa.setCreateInfo(getCurrentUser().getName());
        qa.setApplicationStatus(Const.QUO_APPLY_ING);
        qa.setType(Const.PROJECT_TYPE_HIRE);
        jsonObject.put("success", quotationApplicationService.insert(qa));
        return jsonObject;
    }
}