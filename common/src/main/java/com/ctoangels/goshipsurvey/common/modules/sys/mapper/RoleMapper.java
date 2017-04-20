package com.ctoangels.goshipsurvey.common.modules.sys.mapper;

import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Role;

import java.util.List;

public interface RoleMapper extends AutoMapper<Role> {

    List<String> findRolesIdByUserId(String userId);
}