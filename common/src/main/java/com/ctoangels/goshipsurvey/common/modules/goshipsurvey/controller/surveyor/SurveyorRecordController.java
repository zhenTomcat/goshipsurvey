package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.surveyor;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.SurveyorInfo;
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
@RequestMapping(value = "surveyor/record")
public class SurveyorRecordController extends BaseController {

    @Autowired
    IInspectionService inspectionService;

    @Autowired
    ISurveyorInfoService surveyorInfoService;

    @Autowired
    IQuotationService quotationService;

    @RequestMapping
    public String list() {
        return "goshipsurvey/surveyor/record/list";
    }

    @RequestMapping(value = "/list")
    @ResponseBody
    public JSONObject getList() {
        EntityWrapper<Inspection> ew = getEntityWrapper();
        ew.addFilter("surveyor_id={0} and inspection_status>={1}", getCurrentUser().getId(), Const.INSPECTION_SURVEYOR_COMPLETE);
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
