package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Port;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IPortService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Port 控制层
 */
@Controller
@RequestMapping(value = "port")
public class PortController extends BaseController {

    @Autowired
    IPortService portService;

    @RequestMapping(value = "/searchList")
    @ResponseBody
    public JSONObject list(@RequestParam(required = false) String keyword) {
        JSONObject jsonObject = new JSONObject();
        List<Port> portList = portService.searchByPortEn(keyword);
        jsonObject.put("list", portList);
        return jsonObject;
    }

}