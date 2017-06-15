package com.ctoangels.goshipsurvey.common.modules.prepurchase.service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.GradeCondition;
import com.baomidou.framework.service.ISuperService;

import java.util.List;

/**
 *
 * GradeCondition 表数据服务层接口
 *
 */
public interface IGradeConditionService extends ISuperService<GradeCondition> {

    List<GradeCondition> selectGradeConditionByType(String type);
}