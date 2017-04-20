package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.surveyor;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IInspectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Inspection 控制层
 */
@Controller
@RequestMapping(value = "surveyor/inspection")
public class SurveyorInspectionController {

    @RequestMapping
    public String list() {
        return "goshipsurvey/surveyor/inspection/list";
    }

    @RequestMapping(value = "/list")
    @ResponseBody
    public JSONObject getQuotation() {
        JSONObject jsonObject = new JSONObject();
        return jsonObject;
    }


}