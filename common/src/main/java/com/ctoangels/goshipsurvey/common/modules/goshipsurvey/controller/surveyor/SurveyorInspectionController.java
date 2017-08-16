package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.surveyor;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IInspectionService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.Tools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Inspection 控制层
 */
@Controller
@RequestMapping(value = "surveyor/inspection")
public class SurveyorInspectionController extends BaseController {

    @Autowired
    IInspectionService inspectionService;

    @Value("${static_path}")
    private String staticPath;

    @Autowired
    IDictService dictService;

    @RequestMapping
    public String list(ModelMap map) {
        map.put("inspectionType", getInspectionTypeDict());
        return "goshipsurvey/surveyor/inspection/list";
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
        List<Inspection> list = inspectionService.getList(null, getCurrentUser().getId(), start, length);
        for (Inspection i : list) {
            Quotation q = i.getQuotation();
            q.setInspectionType(Tools.transferValuesToDes(q.getInspectionType(), getInspectionTypeDict()));
            q.setShipType(Tools.transferValuesToDes(q.getShipType(), getShipTypeDict()));
            String inspectionType = i.getInspectionType();
            String[] inspectionTypes = inspectionType.split(",");
            i.setInspectionTypes(inspectionTypes);
            i.setQuotation(q);
        }
        jsonObject.put(Const.DRAW, request.getParameter(Const.DRAW));
        int total = inspectionService.getTotal(null, getCurrentUser().getId());
        jsonObject.put(Const.RECORDSTOTAL, total);
        jsonObject.put(Const.RECORDSFILTERED, total);
        jsonObject.put(Const.NDATA, list);
        return jsonObject;
    }


    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String list(ModelMap map, @RequestParam(required = false) int id) {
        map.put("staticPath", staticPath);
        map.put("inspectionType", getInspectionTypeDict());
        Inspection i = inspectionService.getById(id);
        String inspectionType = i.getInspectionType();
        String[] inspectionTypes = inspectionType.split(",");
        i.setInspectionTypes(inspectionTypes);
        map.put("inspection", i);
        return "goshipsurvey/surveyor/inspection/edit";
    }

    @RequestMapping(value = "/editUrl", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editInfo(@RequestParam(required = false) int id,
                               @RequestParam(required = false) String type,
                               @RequestParam(required = false) String url) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", inspectionService.editUrl(id, type, url));
        return jsonObject;
    }

    @RequestMapping(value = "/confirm", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject confirm(@RequestParam(required = false) int id) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", inspectionService.surveyorConfirmComplete(id));
        return jsonObject;
    }

    @RequestMapping(value = "/addPoint", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject addPoint(Inspection inspection) {
        JSONObject jsonObject = new JSONObject();
        inspection.setUpdateInfo(getCurrentUser().getName());
        jsonObject.put("success", inspectionService.updateSelectiveById(inspection));
        return jsonObject;
    }


}