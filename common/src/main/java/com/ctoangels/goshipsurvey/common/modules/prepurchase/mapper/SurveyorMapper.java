package com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Surveyor;
import com.baomidou.mybatisplus.mapper.AutoMapper;

import java.util.List;

/**
 * Surveyor 表数据库控制层接口
 */
public interface SurveyorMapper extends AutoMapper<Surveyor> {

    int updatePastEvaluation(Integer surveyorId);

    Surveyor  selectByTelAndEmail(String email,String tel);

    List<Surveyor> selectBindInfo();

}