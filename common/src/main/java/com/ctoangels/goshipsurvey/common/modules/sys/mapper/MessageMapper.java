package com.ctoangels.goshipsurvey.common.modules.sys.mapper;

import com.ctoangels.goshipsurvey.common.modules.sys.entity.Message;
import com.baomidou.mybatisplus.mapper.AutoMapper;
import org.apache.ibatis.annotations.Param;

/**
 * Message 表数据库控制层接口
 */
public interface MessageMapper extends AutoMapper<Message> {

    int getUnreadMessageCount(@Param("userId") Integer userId);
}