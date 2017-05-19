package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Company;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.ICompanyService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Company 控制层
 */
@Controller
@RequestMapping("test")
public class TestController extends BaseController {

    @RequestMapping(value = "/getChartJson", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject test2(HttpServletResponse response, String callback) {
        JSONObject jsonObject = new JSONObject();
        long time = new Date().getTime();
        List<Double[]> stringList = new ArrayList<>();
        for (long i = 0; i < 100000; i++) {
            stringList.add(new Double[]{(time + i * 10000D), Math.random() * 100 + i * 0.0005});
        }
        jsonObject.put("callback", stringList);
        response.setHeader("Access-Control-Allow-Origin", "*");
        return jsonObject;
    }


    @RequestMapping(value = "/testUrl", method = RequestMethod.GET)
    public String test(String url) {
        return url;
    }


}