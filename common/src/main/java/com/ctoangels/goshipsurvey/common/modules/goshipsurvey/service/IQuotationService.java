package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.baomidou.framework.service.ISuperService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Quotation 表数据服务层接口
 */
public interface IQuotationService extends ISuperService<Quotation> {

    //根据quo查询inspection  包含surveyorInfo
    Inspection getInspectionInfo(int id);

    //获取询价的询价申请集合
    List<QuotationApplication> getApplication(int id);

    //获取满足surveyor条件的quotation集合
    List<Quotation> getSatisfiedQuotations(int userId);




}