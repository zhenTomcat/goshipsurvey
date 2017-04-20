package com.ctoangels.goshipsurvey.common.modules.sys.mapper;

import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Button;

import java.util.List;

public interface ButtonMapper  extends AutoMapper<Button> {
    List<Button> findButtonsByUserId(int userId);

}