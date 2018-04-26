package com.ctoangels.goshipsurvey.common.modules.sys.service;

import com.ctoangels.goshipsurvey.common.modules.sys.entity.UserSurveyor;
import com.baomidou.framework.service.ISuperService;

import java.util.List;

/**
 *
 * UserServeyor 表数据服务层接口
 *
 */
public interface IUserSurveyorService extends ISuperService<UserSurveyor> {

  UserSurveyor selectByGzhOpenId(String gzhOpenId);

  UserSurveyor selectByUserId(Integer userId);

  List<String> selectGzhOpenIdsBySurveyorUIds(String userSurveyorIds);
}