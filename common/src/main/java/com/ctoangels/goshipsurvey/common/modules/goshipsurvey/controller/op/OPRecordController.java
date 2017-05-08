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
import com.ctoangels.goshipsurvey.common.util.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by lenovo on 2017/4/18.
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


    @RequestMapping
    public String list() {
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
            q.setInspectionType(transferValuesToDes(q.getInspectionType(), getInspectionTypeDict()));
            q.setShipType(transferValuesToDes(q.getShipType(), getShipTypeDict()));
        }
        return jsonPage(page);
    }

    @RequestMapping(value = "/list/inspection")
    @ResponseBody
    public JSONObject inspectionList(@RequestParam(required = false) String keyword) {
        EntityWrapper<Inspection> ew = getEntityWrapper();
        ew.addFilter("op_id={0} and inspection_status>={1}", getCurrentUser().getId(), Const.INSPECTION_SURVEYOR_COMPLETE);
        ew.orderBy("update_date", false);
        Page<Inspection> page = inspectionService.selectPage(getPage(), ew);
        for (Inspection inspection : page.getRecords()) {
            Quotation quotation = quotationService.selectById(inspection.getQuotationId());
            quotation.setInspectionType(transferValuesToDes(quotation.getInspectionType(), getInspectionTypeDict()));
            quotation.setShipType(transferValuesToDes(quotation.getShipType(), getShipTypeDict()));
            inspection.setQuotation(quotation);
            SurveyorInfo surveyorInfo = new SurveyorInfo();
            surveyorInfo.setInspectionId(inspection.getId());
            inspection.setSurveyorInfo(surveyorInfoService.selectOne(surveyorInfo));
        }
        return jsonPage(page);
    }

}
