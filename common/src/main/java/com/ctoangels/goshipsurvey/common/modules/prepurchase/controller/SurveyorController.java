package com.ctoangels.goshipsurvey.common.modules.prepurchase.controller;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Surveyor;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ISurveyorService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Surveyor 控制层
 */
@Controller
@RequestMapping(value = "surveyor")
public class SurveyorController extends BaseController {

    @Autowired
    ISurveyorService surveyorService;

    @RequestMapping(value = "/getSurveyors", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getSurveyors(ModelMap map) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("list", surveyorService.getSurveyorsByCompanyId(getCurrentUser().getId()));
        return jsonObject;
    }


}