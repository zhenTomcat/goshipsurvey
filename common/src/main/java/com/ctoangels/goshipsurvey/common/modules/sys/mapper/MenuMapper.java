package com.ctoangels.goshipsurvey.common.modules.sys.mapper;

import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Menu;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface MenuMapper extends AutoMapper<Menu> {
    List<Menu> findParentMenusByUserId(@Param("userId") int userId, @Param("proType") int proType);

    List<Menu> findMenusByUserIdAndParent(Map<?, ?> params);

    Menu getByPath(String url);

}