package com.ctoangels.goshipsurvey.common.modules.prepurchase.controller;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseInspection;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IPurchaseInspectionService;
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

    //surveyour提交loi和passport
    @RequestMapping(value = "/surveyor/saveLoiPassport")
    @ResponseBody
    public JSONObject saveLoiPassport(PurchaseInspection inspection){
        JSONObject jsonObject=new JSONObject();
        try{
            PurchaseInspection inspection1=purchaseInspectionService.selectById(inspection.getId());
            inspection1.setLoi(inspection.getLoi());
            inspection1.setLoiUrl(inspection.getLoiUrl());
            inspection1.setPassport(inspection.getPassport());
            inspection1.setPassportUrl(inspection.getPassportUrl());
            purchaseInspectionService.updateById(inspection1);

            jsonObject.put("mes",true);
        }catch (Exception e){
            jsonObject.put("mes",false);
            e.printStackTrace();
        }
        return jsonObject;
    }


    @RequestMapping(value = "/op/inspection", method = RequestMethod.GET)
    public String inspection(ModelMap modelMap){
        int id=getCurrentUser().getId();
        List<PurchaseInspection> inspections=purchaseInspectionService.selectByInspection(id);
        modelMap.put("inspections",inspections);
        return "prepurchase/op/inspection/inspectionList";
    }

}