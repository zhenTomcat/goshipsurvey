package com.ctoangels.goshipsurvey.common.modules.prepurchase.service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.InspectionReport;
import com.baomidou.framework.service.ISuperService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseInspection;

/**
 *
 * InspectionReport 表数据服务层接口
 *
 */
public interface IInspectionReportService extends ISuperService<InspectionReport> {
    InspectionReport selectByPurchaseInspectionId(Integer purchaseInspectionId);

    Boolean updateDefect(InspectionReport inspectionReport);

    void createReport(PurchaseInspection inspection);

    String downloadReportByReportId(Integer reportId,String endpoint,String accessId,String accessKey,String bucket) throws Exception;

}