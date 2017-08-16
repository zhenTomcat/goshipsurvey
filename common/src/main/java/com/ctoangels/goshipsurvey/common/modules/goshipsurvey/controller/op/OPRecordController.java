package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.op;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Dict;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.SurveyorInfo;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IInspectionService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.ISurveyorInfoService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IMessageService;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.Tools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Wang on 2017/4/18.
 */
@Controller
@RequestMapping(value = "op/record")
public class OPRecordController extends BaseController {
    @Autowired
    IQuotationService quotationService;

    @Autowired
    IInspectionService inspectionService;

    @Autowired
    ISurveyorInfoService surveyorInfoService;

    @Autowired
    IDictService dictService;

    @Autowired
    IMessageService messageService;

    @RequestMapping
    public String list(ModelMap map) {
        map.put("shipType", getShipTypeDict());
        map.put("inspectionType", getInspectionTypeDict());
        return "goshipsurvey/op/record/list";
    }

    @RequestMapping(value = "/list/quotation")
    @ResponseBody
    public JSONObject quotationList(@RequestParam(required = false) String keyword) {
        EntityWrapper<Quotation> ew = getEntityWrapper();
        ew.addFilter("op_id={0} and quotation_status>={1}", getCurrentUser().getId(), Const.QUOTATION_END);
        ew.orderBy("update_date", false);
        Page<Quotation> page = quotationService.selectPage(getPage(), ew);
        for (Quotation q : page.getRecords()) {
            q.setInspectionType(Tools.transferValuesToDes(q.getInspectionType(), getInspectionTypeDict()));
            q.setShipType(Tools.transferValuesToDes(q.getShipType(), getShipTypeDict()));
        }
        return jsonPage(page);
    }

    @RequestMapping(value = "/list/inspection")
    @ResponseBody
    public JSONObject inspectionList(@RequestParam(required = false) String keyword) {
        int start = 0;
        int length = 10;
        if (request.getParameter(Const.START) != null) {
            start = Integer.parseInt(request.getParameter(Const.START));
        }
        if (request.getParameter(Const.LENGTH) != null) {
            length = Integer.parseInt(request.getParameter(Const.LENGTH));
        }
        JSONObject jsonObject = new JSONObject();
        List<Inspection> list = inspectionService.getOPRecordList(getCurrentUser().getId(), start, length);
        for (Inspection i : list) {
            Quotation q = i.getQuotation();
            q.setInspectionType(Tools.transferValuesToDes(q.getInspectionType(), getInspectionTypeDict()));
            q.setShipType(Tools.transferValuesToDes(q.getShipType(), getShipTypeDict()));
            i.setQuotation(q);
        }
        jsonObject.put(Const.DRAW, request.getParameter(Const.DRAW));
        int total = inspectionService.getRecordTotal(getCurrentUser().getId(), null);
        jsonObject.put(Const.RECORDSTOTAL, total);
        jsonObject.put(Const.RECORDSFILTERED, total);
        jsonObject.put(Const.NDATA, list);
        return jsonObject;
    }

}
