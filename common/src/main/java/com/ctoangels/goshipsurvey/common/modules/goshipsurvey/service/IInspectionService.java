package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.baomidou.framework.service.ISuperService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;

import java.util.List;

/**
 * Inspection 表数据服务层接口
 */
public interface IInspectionService extends ISuperService<Inspection> {

    //op确认邀请surveyor验船后,生成inspection
    boolean initInspection(int quotationId, int applicationId);

    List<Inspection> getInspectionsOP(int userId);

    List<Inspection> getInspectionsSurveyor(int userId);

    //op填写船的信息,后台更改inspection状态
    boolean opShipInfoComplete(Inspection inspection);

    boolean opConfirmComplete(int id);

    boolean surveyorConfirmComplete(int id);

}