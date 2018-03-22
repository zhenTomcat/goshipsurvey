package com.ctoangels.goshipsurvey.common.modules.sys.mapper;

import com.ctoangels.goshipsurvey.common.modules.sys.entity.UserSurveyor;
import com.baomidou.mybatisplus.mapper.AutoMapper;

/**
 *
 * UserServeyor 表数据库控制层接口
 *
 */
public interface UserSurveyorMapper extends AutoMapper<UserSurveyor> {

    UserSurveyor selectByGzhOpenId(String gzhOpenId);

    UserSurveyor selectBySurveyorId(Integer surveyorId);

}