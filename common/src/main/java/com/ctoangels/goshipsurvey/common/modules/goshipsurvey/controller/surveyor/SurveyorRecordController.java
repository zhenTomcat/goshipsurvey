package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.surveyor;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.SurveyorInfo;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IInspectionService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.ISurveyorInfoService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.util.Const;
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

    @Autowired
    IInspectionService inspectionService;

    @Autowired
    ISurveyorInfoService surveyorInfoService;

    @Autowired
    IQuotationService quotationService;

    @RequestMapping
    public String list() {
        return "goshipsurvey/surveyor/record/list";
    }

    @RequestMapping(value = "/list")
    @ResponseBody
    public JSONObject getList() {
        int start = 0;
        int length = 10;
        if (request.getParameter(Const.START) != null) {
            start = Integer.parseInt(request.getParameter(Const.START));
        }
        if (request.getParameter(Const.LENGTH) != null) {
            length = Integer.parseInt(request.getParameter(Const.LENGTH));
        }
        JSONObject jsonObject = new JSONObject();
        List<Inspection> list = inspectionService.getCompanyRecordList(getCurrentUser().getId(), start, length);
        for (Inspection i : list) {
            Quotation q = i.getQuotation();
            q.setInspectionType(transferValuesToDes(q.getInspectionType(), getInspectionTypeDict()));
            q.setShipType(transferValuesToDes(q.getShipType(), getShipTypeDict()));
            i.setQuotation(q);
        }
        jsonObject.put(Const.DRAW, request.getParameter(Const.DRAW));
        int total = inspectionService.getRecordTotal(null, getCurrentUser().getId());
        jsonObject.put(Const.RECORDSTOTAL, total);
        jsonObject.put(Const.RECORDSFILTERED, total);
        jsonObject.put(Const.NDATA, list);
        return jsonObject;
    }

}
