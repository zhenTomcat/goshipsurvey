package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.surveyor;

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

import java.util.List;

/**
 * Created by lenovo on 2017/4/18.
 */
@Controller
@RequestMapping(value = "surveyor/record")
public class SurveyorRecordController extends BaseController {

    @RequestMapping
    public String list() {
        return "goshipsurvey/surveyor/record/list";
    }

    @RequestMapping(value = "/list")
    @ResponseBody
    public JSONObject getQuotation() {
        JSONObject jsonObject = new JSONObject();
        //TODO:获取inspection记录
        List<Quotation> list = null;
        jsonObject.put("list", list);
        return jsonObject;
    }

}
