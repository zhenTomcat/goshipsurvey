package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.baomidou.framework.service.ISuperService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;

import java.util.List;

/**
 * Inspection 表数据服务层接口
 */
public interface IInspectionService extends ISuperService<Inspection> {

    boolean initInspection(int quotationId, int applicationId);

}