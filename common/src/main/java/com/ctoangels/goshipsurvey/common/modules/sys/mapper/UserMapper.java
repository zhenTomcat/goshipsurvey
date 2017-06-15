package com.ctoangels.goshipsurvey.common.modules.sys.mapper;

import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.baomidou.mybatisplus.mapper.AutoMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * User 表数据库控制层接口
 */
public interface UserMapper extends AutoMapper<User> {

    List<Integer> getAllId(@Param(value = "role") Integer role);

}