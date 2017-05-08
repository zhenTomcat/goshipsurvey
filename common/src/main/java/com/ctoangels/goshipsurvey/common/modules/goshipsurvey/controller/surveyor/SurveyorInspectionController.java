package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.surveyor;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IInspectionService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
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
        int userId = getCurrentUser().getId();
        map.put("staticPath", staticPath);
        List<Inspection> list = inspectionService.getInspectionsSurveyor(userId);
        for (Inspection inspection : list) {
            Quotation quotation = inspection.getQuotation();
            quotation.setShipType(transferValuesToDes(quotation.getShipType(), getShipTypeDict()));
            quotation.setInspectionType(transferValuesToDes(quotation.getInspectionType(), getInspectionTypeDict()));
            inspection.setQuotation(quotation);
            String inspectionType = inspection.getInspectionType();
            String[] inspectionTypes = inspectionType.split(",");
            inspection.setInspectionTypes(inspectionTypes);
        }
        map.put("list", list);
        map.put("shipType", dictService.getListByType("shipType"));
        map.put("inspectionType", dictService.getListByType("inspectionType"));
        return "goshipsurvey/surveyor/inspection/list";
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