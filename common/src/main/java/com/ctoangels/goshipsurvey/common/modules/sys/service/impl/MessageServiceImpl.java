package com.ctoangels.goshipsurvey.common.modules.sys.service.impl;

import com.ctoangels.goshipsurvey.common.modules.sys.controller.RightController;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.mapper.UserMapper;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.sys.mapper.MessageMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Message;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IMessageService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.ArrayList;
import java.util.List;

/**
 * Message 表数据服务层接口实现类
 */
@Service
public class MessageServiceImpl extends SuperServiceImpl<MessageMapper, Message> implements IMessageService {

    private static Logger logger = LoggerFactory.getLogger(MessageServiceImpl.class);

    @Autowired
    UserMapper userMapper;

    @Autowired
    MessageMapper messageMapper;


    @Override
    @Async
    public void publicAll(String title, String content, Integer type) {
        List<Integer> ids = userMapper.getAllId(type);
        publicSome(ids, title, content);
    }

    @Override
    public void publicSome(List<Integer> ids, String title, String content) {
        logger.info("publicMessage" + Thread.currentThread().getId());
        System.out.println();
        if (ids != null && ids.size() > 0) {
            User u = (User) SecurityUtils.getSubject().getPrincipal();
            Integer sender = u.getId();
            ids.remove(sender);
            List<Message> list = new ArrayList<>();
            for (Integer id : ids) {
                Message m = new Message();
                m.setReceiver(id);
                m.setSender(sender);
                m.setTitle(title);
                m.setContent(content);
                m.setReadStatus(Const.MESSAGE_UNREAD);
                m.setCreateInfo(u.getName());
                list.add(m);
            }
            messageMapper.insertBatch(list);
        }
    }

    @Override
    public void publicOne(int id, String title, String content) {
        User u = (User) SecurityUtils.getSubject().getPrincipal();
        Integer sender = u.getId();
        Message m = new Message();
        m.setReceiver(id);
        m.setSender(sender);
        m.setTitle(title);
        m.setContent(content);
        m.setReadStatus(Const.MESSAGE_UNREAD);
        m.setCreateInfo(u.getName());
        messageMapper.insert(m);
    }
}