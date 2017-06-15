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

    //获取surveyor所有的信息
    @RequestMapping(value = "/surveyor/inspection")
    public String surveyorList(){
        return "prepurchase/surveyor/inspection/inspectionList";
    }

    @RequestMapping(value = "/surveyor/inspection/list")
    @ResponseBody
    public JSONObject surveyorList(ModelMap modelMap){
        JSONObject jsonObject=new JSONObject();
        int id=getCurrentUser().getId();

        int start = 0;
        int length = 10;
        if (request.getParameter(Const.START) != null) {
            start = Integer.parseInt(request.getParameter(Const.START));
        }
        if (request.getParameter(Const.LENGTH) != null) {
            length = Integer.parseInt(request.getParameter(Const.LENGTH));
        }

        List<PurchaseInspection> inspections=purchaseInspectionService.selectByInspection(id,start, length);
        Integer total=purchaseInspectionService.getInspectionCount(id);

        jsonObject.put(Const.DRAW, request.getParameter(Const.DRAW));
        jsonObject.put(Const.RECORDSTOTAL, total);
        jsonObject.put(Const.RECORDSFILTERED, total);
        jsonObject.put(Const.NDATA, inspections);
        return jsonObject;
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


    //获取op所有的信息
    @RequestMapping(value = "/op/inspection")
    public String opList(){
        return "prepurchase/op/inspection/inspectionList";
    }

    @RequestMapping(value = "/op/inspection/list")
    @ResponseBody
    public JSONObject opList(ModelMap modelMap){
        JSONObject jsonObject=new JSONObject();
        int id=getCurrentUser().getId();

        int start = 0;
        int length = 10;
        if (request.getParameter(Const.START) != null) {
            start = Integer.parseInt(request.getParameter(Const.START));
        }
        if (request.getParameter(Const.LENGTH) != null) {
            length = Integer.parseInt(request.getParameter(Const.LENGTH));
        }

        List<PurchaseInspection> inspections=purchaseInspectionService.selectByOpInspection(id,start, length);
        Integer total=purchaseInspectionService.getOpInspectionCount(id);

        jsonObject.put(Const.DRAW, request.getParameter(Const.DRAW));
        jsonObject.put(Const.RECORDSTOTAL, total);
        jsonObject.put(Const.RECORDSFILTERED, total);
        jsonObject.put(Const.NDATA, inspections);
        return jsonObject;

    }

}