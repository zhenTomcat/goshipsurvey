package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.op;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IInspectionService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by lenovo on 2017/4/18.
 */
@Controller
@RequestMapping(value = "op/record")
public class OPRecordController extends BaseController {
    @Autowired
    IQuotationService quotationService;

    @Autowired
    IInspectionService inspectionService;

    @RequestMapping
    public String list() {
        return "goshipsurvey/op/record/list";
    }

    @RequestMapping(value = "/list/quotation")
    @ResponseBody
    public JSONObject quotationList(@RequestParam(required = false) String keyword) {
        EntityWrapper<Quotation> ew = getEntityWrapper();
        ew.addFilter("op_id={0}", getCurrentUser().getId());
        ew.orderBy("update_date", false);
        Page<Quotation> page = quotationService.selectPage(getPage(), ew);
        return jsonPage(page);
    }

    @RequestMapping(value = "/list/inspection")
    @ResponseBody
    public JSONObject inspectionList(@RequestParam(required = false) String keyword) {
        EntityWrapper<Quotation> ew = getEntityWrapper();
        ew.addFilter("op_id={0}", getCurrentUser().getId());
        ew.orderBy("update_date", false);
        Page<Quotation> page = quotationService.selectPage(getPage(), ew);
        for (Quotation quotation : page.getRecords()) {
            quotation.setInspection(quotationService.getInspectionInfo(quotation.getId()));
        }
        return jsonPage(page);
    }

}
