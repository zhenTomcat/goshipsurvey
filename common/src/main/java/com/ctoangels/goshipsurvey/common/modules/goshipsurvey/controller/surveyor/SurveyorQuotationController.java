package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.surveyor;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationApplicationService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

/**
 * Quotation 控制层
 */
@Controller
@RequestMapping(value = "surveyor/quotation")
public class SurveyorQuotationController extends BaseController {

    @Autowired
    IQuotationService quotationService;

    @Autowired
    IQuotationApplicationService quotationApplicationService;

    @RequestMapping
    public String list() {
        return "goshipsurvey/surveyor/quotation/list";
    }

    @RequestMapping(value = "/list")
    @ResponseBody
    public JSONObject getQuotation() {
        JSONObject jsonObject = new JSONObject();
        int id = getCurrentUser().getId();
        List<QuotationApplication> applicationList = quotationApplicationService.getAppliedQuotations(id);
        List<Quotation> quotationList = quotationService.getSatisfiedQuotations(id);
        jsonObject.put("applicationList", applicationList);
        jsonObject.put("quotationList", quotationList);
        return jsonObject;
    }

}