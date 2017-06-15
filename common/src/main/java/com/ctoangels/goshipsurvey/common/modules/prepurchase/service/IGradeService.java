package com.ctoangels.goshipsurvey.common.modules.prepurchase.service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Grade;
import com.baomidou.framework.service.ISuperService;

import java.util.List;

/**
 *
 * Grade 表数据服务层接口
 *
 */
public interface IGradeService extends ISuperService<Grade> {

    List<Grade> selectListGrade(Integer reportId);

    List<Double> updateGradeById(Grade grade);

}