package com.ctoangels.goshipsurvey.common.modules.prepurchase.controller;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseInspection;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseQuotation;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IPurchaseInspectionService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IPurchaseQuotationService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * TechnicalAppendixInfo 控制层
 */
@Controller
@RequestMapping("prepurchase")
public class RecordController extends BaseController {

    @Autowired
    IPurchaseQuotationService purchaseQuotationService;

    @Autowired
    IPurchaseInspectionService purchaseInspectionService;


    @RequestMapping(value = "/op/record", method = RequestMethod.GET)
    public String opRecord(ModelMap modelMap) {
        return "prepurchase/op/record/list";
    }

    @RequestMapping(value = "/op/record/quotation/list", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject opGetRecordQuotation() {
        JSONObject jsonObject = new JSONObject();
        int start = 0;
        int length = 10;
        if (request.getParameter(Const.LENGTH) != null) {
            start = Integer.parseInt(request.getParameter(Const.START));
        }
        if (request.getParameter(Const.LENGTH) != null) {
            length = Integer.parseInt(request.getParameter(Const.LENGTH));
        }
        List<PurchaseQuotation> list = purchaseQuotationService.getOPRecordList(getCurrentUser().getId(), start, length);
        for (PurchaseQuotation q : list) {
            int shipType = Integer.parseInt(q.getShipDetail().getShipType());
            q.getShipDetail().setShipType(getShipTypeDict().get(shipType - 1).getDes());
        }
        jsonObject.put(Const.DRAW, request.getParameter(Const.DRAW));
        int total = purchaseQuotationService.getRecordTotal(getCurrentUser().getId());
        jsonObject.put(Const.RECORDSTOTAL, total);
        jsonObject.put(Const.RECORDSFILTERED, total);
        jsonObject.put(Const.NDATA, list);
        return jsonObject;
    }

    @RequestMapping(value = "/op/record/inspection/list", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject opGetRecordInspection() {
        JSONObject jsonObject = new JSONObject();
        int start = 0;
        int length = 10;
        if (request.getParameter(Const.LENGTH) != null) {
            start = Integer.parseInt(request.getParameter(Const.START));
        }
        if (request.getParameter(Const.LENGTH) != null) {
            length = Integer.parseInt(request.getParameter(Const.LENGTH));
        }
        List<PurchaseInspection> list = purchaseInspectionService.getOPRecordList(getCurrentUser().getId(), start, length);
//        for (PurchaseQuotation q : list) {
//            int shipType = Integer.parseInt(q.getShipDetail().getShipType());
//            q.getShipDetail().setShipType(getShipTypeDict().get(shipType - 1).getDes());
//        }
        jsonObject.put(Const.DRAW, request.getParameter(Const.DRAW));
        int total = purchaseQuotationService.getRecordTotal(getCurrentUser().getId());
        jsonObject.put(Const.RECORDSTOTAL, total);
        jsonObject.put(Const.RECORDSFILTERED, total);
        jsonObject.put(Const.NDATA, list);
        return jsonObject;
    }

    @RequestMapping(value = "/surveyor/record", method = RequestMethod.GET)
    public String surveyorRecord(ModelMap modelMap) {
        return "prepurchase/surveyor/record/list";
    }

    @RequestMapping(value = "/surveyor/record/inspection/list", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject surveyorGetRecord() {
        JSONObject jsonObject = new JSONObject();
        return jsonObject;
    }

}