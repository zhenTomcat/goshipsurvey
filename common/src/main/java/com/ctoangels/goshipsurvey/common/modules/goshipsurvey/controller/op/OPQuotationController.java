package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.op;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Dict;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

/**
 * Quotation 控制层
 */
@Controller
@RequestMapping(value = "op/quotation")
public class OPQuotationController extends BaseController {

    @Autowired
    IQuotationService quotationService;

    @RequestMapping
    public String list(ModelMap map) {
        map.put("shipType", getShipTypeDict());
        map.put("inspectionType", getInspectionTypeDict());
        return "goshipsurvey/op/quotation/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
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
        List<Quotation> list = quotationService.getOPList(getCurrentUser().getId(), start, length);
        for (Quotation q : list) {
            q.setInspectionType(transferValuesToDes(q.getInspectionType(), getInspectionTypeDict()));
            q.setShipType(transferValuesToDes(q.getShipType(), getShipTypeDict()));
        }
        jsonObject.put(Const.DRAW, request.getParameter(Const.DRAW));
        int total = quotationService.getOPTotal(getCurrentUser().getId());
        jsonObject.put(Const.RECORDSTOTAL, total);
        jsonObject.put(Const.RECORDSFILTERED, total);
        jsonObject.put(Const.NDATA, list);
        return jsonObject;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject addComplete(Quotation quotation) {
        JSONObject jsonObject = new JSONObject();
        User op = getCurrentUser();
        quotation.setOpId(op.getId());
        quotation.setOpName(op.getName());
        quotation.setQuotationStatus(Const.QUOTATION_INIT);
        quotation.setCreateInfo(op.getName());
        if (quotationService.insert(quotation)) {
            jsonObject.put("success", true);
        } else {
            jsonObject.put("success", false);
        }
        return jsonObject;
    }

    @RequestMapping(value = "/startQuotation", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject startQuotation(@RequestParam(required = false) int id) {
        JSONObject jsonObject = new JSONObject();
        Quotation quotation = quotationService.selectById(id);
        quotation.setQuotationStatus(Const.QUOTATION_ING);
        quotation.setUpdateInfo(getCurrentUser().getName());
        if (quotationService.updateById(quotation)) {
            jsonObject.put("success", true);
        } else {
            jsonObject.put("success", false);
        }
        return jsonObject;
    }

}