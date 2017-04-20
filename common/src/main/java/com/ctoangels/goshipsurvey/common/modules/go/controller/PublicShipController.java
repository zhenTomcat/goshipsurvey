package com.ctoangels.goshipsurvey.common.modules.go.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ctoangels.goshipsurvey.common.modules.go.entity.PublicShip;
import com.ctoangels.goshipsurvey.common.modules.go.service.IPublicShipService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Dict;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * PublicShip 控制层
 */
@Controller
@RequestMapping(value = "publicShip")
public class PublicShipController extends BaseController {

    @Autowired
    private IPublicShipService publicShipService;

    @Autowired
    private IDictService dictService;

    @RequestMapping(value = "/searchList")
    @ResponseBody
    public JSONObject list(@RequestParam(required = false) String keyword) {
        JSONObject jsonObject = new JSONObject();
        List<PublicShip> shipList = publicShipService.getSearchList(keyword);
        jsonObject.put("list", shipList);
        return jsonObject;
    }

    @RequestMapping(value = "/searchOne")
    @ResponseBody
    public JSONObject one(@RequestParam(required = false) Integer id) {
        JSONObject jsonObject = new JSONObject();
        try {
            PublicShip publicShip = publicShipService.getById(id);
            jsonObject.put("mes", true);
            jsonObject.put("ship", publicShip);
            jsonObject.put("shipTypeDes", dictService.getDesByTypeAndValue("shipType", publicShip.getTypeId().toString()));
        } catch (Exception e) {
            e.printStackTrace();
            jsonObject.put("mes", false);
        }
        return jsonObject;
    }


}