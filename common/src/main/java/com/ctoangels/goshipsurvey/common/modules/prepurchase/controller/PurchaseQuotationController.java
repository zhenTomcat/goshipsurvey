package com.ctoangels.goshipsurvey.common.modules.prepurchase.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationApplicationService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseQuotation;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.ShipDetail;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IPurchaseInspectionService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IPurchaseQuotationService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IShipDetailService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

/**
 * PurchaseQuotation 控制层
 */
@Controller
@RequestMapping(value = "prepurchase")
public class PurchaseQuotationController extends BaseController {

    @Autowired
    private IPurchaseQuotationService purchaseQuotationService;
    @Autowired
    private IPurchaseInspectionService purchaseInspectionService;
    @Autowired
    private IShipDetailService shipDetailService;
    @Autowired
    private IQuotationApplicationService quotationApplicationService;


    @Value("${static_path}")
    private String staticPath;

    //op
    @RequestMapping(value = "/op/quotation")
    public String opList(ModelMap map) {
        return "prepurchase/op/quotation/list";
    }

    @RequestMapping(value = "/op/quotation/list")
    @ResponseBody
    public JSONObject opGetList() {
        JSONObject jsonObject = new JSONObject();
        int start = 0;
        int length = 10;
        if (request.getParameter(Const.LENGTH) != null) {
            start = Integer.parseInt(request.getParameter(Const.START));
        }
        if (request.getParameter(Const.LENGTH) != null) {
            length = Integer.parseInt(request.getParameter(Const.LENGTH));
        }
        List<PurchaseQuotation> list = purchaseQuotationService.getOPList(getCurrentUser().getId(), start, length);
        for (PurchaseQuotation q : list) {
            int shipType = Integer.parseInt(q.getShipDetail().getShipType());
            q.getShipDetail().setShipType(getShipTypeDict().get(shipType - 1).getDes());
        }
        jsonObject.put(Const.DRAW, request.getParameter(Const.DRAW));
        int total = purchaseQuotationService.getOPTotal(getCurrentUser().getId());
        jsonObject.put(Const.RECORDSTOTAL, total);
        jsonObject.put(Const.RECORDSFILTERED, total);
        jsonObject.put(Const.NDATA, list);
        return jsonObject;
    }

    @RequestMapping(value = "/op/quotation/add", method = RequestMethod.GET)
    public String add(ModelMap map) {
        map.put("shipType", getShipTypeDict());
        map.put("staticPath", staticPath);
        return "prepurchase/op/quotation/add";
    }

    @RequestMapping(value = "/op/quotation/addComplete", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject addComplete(PurchaseQuotation quotation, ShipDetail detail) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", purchaseQuotationService.saveQuotationWithDetail(quotation, detail));
        return jsonObject;
    }

    @RequestMapping(value = "/op/quotation/choose", method = RequestMethod.GET)
    public String choose(ModelMap map, @RequestParam(required = false) int quotationId) {
        List<QuotationApplication> list = quotationApplicationService.getApplications(quotationId, Const.PROJECT_TYPE_PURCHASE);
        map.put("list", list);
        return "prepurchase/op/quotation/choose";
    }

    @RequestMapping(value = "/op/quotation/chooseComplete", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject chooseComplete(@RequestParam(required = false) int quotationId,
                                     @RequestParam(required = false) int applicationId) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", purchaseInspectionService.initInspection(quotationId, applicationId));
        return jsonObject;
    }


    //surveyor
    @RequestMapping(value = "/surveyor/quotation")
    public String surveyorList(ModelMap map) {
        return "prepurchase/surveyor/quotation/list";
    }

    @RequestMapping(value = "/surveyor/quotation/list")
    @ResponseBody
    public JSONObject surveyorGetList() {
        JSONObject jsonObject = new JSONObject();
        int start = 0;
        int length = 10;
        if (request.getParameter(Const.LENGTH) != null) {
            start = Integer.parseInt(request.getParameter(Const.START));
        }
        if (request.getParameter(Const.LENGTH) != null) {
            length = Integer.parseInt(request.getParameter(Const.LENGTH));
        }
        List<PurchaseQuotation> list = purchaseQuotationService.getSurveyorList(getCurrentUser().getId(), start, length);
        for (PurchaseQuotation q : list) {
            int shipType = Integer.parseInt(q.getShipDetail().getShipType());
            q.getShipDetail().setShipType(getShipTypeDict().get(shipType - 1).getDes());
        }
        jsonObject.put(Const.DRAW, request.getParameter(Const.DRAW));
        int total = purchaseQuotationService.getSurveyorTotal();
        jsonObject.put(Const.RECORDSTOTAL, total);
        jsonObject.put(Const.RECORDSFILTERED, total);
        jsonObject.put(Const.NDATA, list);
        return jsonObject;
    }

}