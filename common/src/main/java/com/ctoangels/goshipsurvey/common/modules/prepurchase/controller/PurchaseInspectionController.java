package com.ctoangels.goshipsurvey.common.modules.prepurchase.controller;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseInspection;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IPurchaseInspectionService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 *
 * PurchaseInspection 控制层
 *
 */
@Controller
@RequestMapping("prepurchase")
public class PurchaseInspectionController  extends BaseController {
    @Value("${static_path}")
    private String staticPath;

    @Autowired
    private IPurchaseInspectionService purchaseInspectionService;

    @RequestMapping(value = "/surveyor/inspection", method = RequestMethod.GET)
    public String inspectionList(ModelMap modelMap){
        int id=getCurrentUser().getId();
        List<PurchaseInspection> inspections=purchaseInspectionService.selectByInspection(id);
        modelMap.put("inspections",inspections);
        return "prepurchase/surveyor/inspection/inspectionList";
    }

}