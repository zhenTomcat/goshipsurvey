package com.ctoangels.goshipsurvey.common.modules.prepurchase.service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseQuotation;
import com.baomidou.framework.service.ISuperService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.ShipDetail;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * PurchaseQuotation 表数据服务层接口
 */
public interface IPurchaseQuotationService extends ISuperService<PurchaseQuotation> {

    boolean saveQuotationWithDetail(PurchaseQuotation quotation, ShipDetail detail);

    List<PurchaseQuotation> getOPList(Integer opId, Integer start, Integer length);

    List<PurchaseQuotation> getSurveyorList(Integer surveyorId, Integer start, Integer length);

    int getOPTotal(Integer opId);

    int getSurveyorTotal();

    List<PurchaseQuotation> getOPRecordList(Integer opId, Integer start, Integer length);

    int getRecordTotal(Integer opId);
}