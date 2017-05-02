package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.op;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IInspectionService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Enumeration;

/**
 * Inspection 控制层
 */
@Controller
@RequestMapping(value = "op/account")
public class OPAccountController extends BaseController {

    @Autowired
    UserService userService;

    @Autowired
    IDictService dictService;

    @Autowired
    IInspectionService inspectionService;

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(ModelMap map) {
        map.put("shipType", dictService.getListByType("shipType"));
        return "goshipsurvey/op/account/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editComplete() {
        JSONObject jsonObject = new JSONObject();
        return jsonObject;
    }

    @RequestMapping(value = "/info", method = RequestMethod.GET)
    public String info(@RequestParam(required = false) int id, ModelMap map) {
        return "goshipsurvey/op/account/info";
    }

}