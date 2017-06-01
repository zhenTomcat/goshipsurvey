package com.ctoangels.goshipsurvey.common.modules.sys.service.impl;

import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.sys.mapper.MessageMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Message;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IMessageService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Message 表数据服务层接口实现类
 *
 */
@Service
public class MessageServiceImpl extends SuperServiceImpl<MessageMapper, Message> implements IMessageService {


}