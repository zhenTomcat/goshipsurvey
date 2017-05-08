package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.op;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IInspectionService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.util.Const;
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
@RequestMapping(value = "op/inspection")
public class OPInspectionController extends BaseController {

    @Autowired
    IInspectionService inspectionService;

    @Autowired
    IDictService dictService;

    @Value("${static_path}")
    private String staticPath;

    @RequestMapping
    public String list(ModelMap map) {
        int userId = getCurrentUser().getId();
        map.put("staticPath", staticPath);
        List<Inspection> list = inspectionService.getInspectionsOP(userId);
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
        map.put("inspectionType", getInspectionTypeDict());
        return "goshipsurvey/op/inspection/list";
    }

    @RequestMapping(value = "/add")
    @ResponseBody
    public JSONObject add(@RequestParam(required = false) int quotationId,
                          @RequestParam(required = false) int applicationId) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", inspectionService.initInspection(quotationId, applicationId));
        return jsonObject;
    }

    @RequestMapping(value = "/editOtherDetails", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editOtherDetails(Inspection inspection) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", inspectionService.opShipInfoComplete(inspection));
        return jsonObject;
    }

    @RequestMapping(value = "/confirm", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject confirm(@RequestParam(required = false) int id) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", inspectionService.opConfirmComplete(id));
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