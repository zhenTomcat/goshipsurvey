package com.ctoangels.goshipsurvey.common.modules.sys.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.sys.mapper.UserSurveyorMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.UserSurveyor;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IUserSurveyorService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * UserServeyor 表数据服务层接口实现类
 *
 */
@Service
public class UserSurveyorServiceImpl extends SuperServiceImpl<UserSurveyorMapper, UserSurveyor> implements IUserSurveyorService {

    @Autowired
    private UserSurveyorMapper userSurveyorMapper;

    @Override
    public UserSurveyor selectByGzhOpenId(String gzhOpenId) {
        UserSurveyor userSurveyor= userSurveyorMapper.selectByGzhOpenId(gzhOpenId);

        return userSurveyor;
    }

    @Override
    public UserSurveyor selectByUserId(Integer userId) {
        return userSurveyorMapper.selectByUserId(userId);
    }
}