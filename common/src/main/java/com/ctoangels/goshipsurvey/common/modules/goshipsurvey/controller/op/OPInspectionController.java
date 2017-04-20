package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.op;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IInspectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Inspection 控制层
 */
@Controller
@RequestMapping(value = "op/inspection")
public class OPInspectionController {

    @Autowired
    IInspectionService inspectionService;

    @RequestMapping
    public String list() {
        return "goshipsurvey/op/inspection/list";
    }

    @RequestMapping(value = "/list")
    @ResponseBody
    public JSONObject getList() {
        JSONObject jsonObject = new JSONObject();
        //TODO:获取所有正在进行的船检
        return jsonObject;
    }

    @RequestMapping(value = "/add")
    @ResponseBody
    public JSONObject add(@RequestParam(required = false) int quotationId,
                          @RequestParam(required = false) int applicationId) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", inspectionService.initInspection(quotationId, applicationId));
        return jsonObject;
    }


}