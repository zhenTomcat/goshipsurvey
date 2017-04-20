package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.op;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * QuotationApplication 控制层
 */
@Controller
@RequestMapping(value = "op/quotationApplication")
public class OPQuotationApplicationController {

    @Autowired
    IQuotationApplicationService quotationApplicationService;

    @RequestMapping
    public String page() {
        return "/goshipsurvey/op/quotationApplication/list";
    }


}