package com.ctoangels.goshipsurvey.common.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Message;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.mapper.MessageMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IMessageService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.*;

import java.io.IOException;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/**
 * Created by lenovo on 2017/6/28.
 */
@Component
public class MyWebSocketHandler implements WebSocketHandler {

    @Autowired
    MessageMapper messageMapper;

    private static Logger logger = LoggerFactory.getLogger(MyWebSocketHandler.class);

    public MyWebSocketHandler() {
        logger.info("MyWebSocketHandler加载了");
    }

    public static final Map<Integer, WebSocketSession> userSocketSessionMap;

    static {
        userSocketSessionMap = new HashMap<>();
    }


    @Override
    public void afterConnectionEstablished(WebSocketSession webSocketSession) {
        try {
            Integer userId = (Integer) webSocketSession.getAttributes().get("userId");
            logger.info("链接成功userId" + userId);
            userSocketSessionMap.putIfAbsent(userId, webSocketSession);
            MyWebSocketMessage message = new MyWebSocketMessage("连接成功", messageMapper.getUnreadMessageCount(userId), false);
            webSocketSession.sendMessage(new TextMessage(JSON.toJSONString(message)));
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public void handleMessage(WebSocketSession webSocketSession, WebSocketMessage<?> webSocketMessage) throws Exception {
        webSocketSession.sendMessage(webSocketMessage);
    }

    @Override
    public void handleTransportError(WebSocketSession webSocketSession, Throwable throwable) throws Exception {
        if (webSocketSession.isOpen()) {
            webSocketSession.close();
        }
        Iterator<Entry<Integer, WebSocketSession>> it = userSocketSessionMap
                .entrySet().iterator();
        // 移除Socket会话
        while (it.hasNext()) {
            Entry<Integer, WebSocketSession> entry = it.next();
            if (entry.getValue().getId().equals(webSocketSession.getId())) {
                userSocketSessionMap.remove(entry.getKey());
                System.out.println("Socket会话已经移除:用户ID" + entry.getKey());
                break;
            }
        }
    }

    @Override
    public void afterConnectionClosed(WebSocketSession webSocketSession, CloseStatus closeStatus) throws Exception {
        System.out.println("Websocket:" + webSocketSession.getId() + "已经关闭");
        Iterator<Entry<Integer, WebSocketSession>> it = userSocketSessionMap
                .entrySet().iterator();
        // 移除Socket会话
        while (it.hasNext()) {
            Entry<Integer, WebSocketSession> entry = it.next();
            if (entry.getValue().getId().equals(webSocketSession.getId())) {
                userSocketSessionMap.remove(entry.getKey());
                System.out.println("Socket会话已经移除:用户ID" + entry.getKey());
                break;
            }
        }
    }

    @Override
    public boolean supportsPartialMessages() {
        return false;
    }


    /**
     * 给单个用户发送消息
     */
    public void sendOneUser(MyWebSocketMessage message, Integer id) {
        logger.info("给单个用户发送消息");
        if (userSocketSessionMap.containsKey(id)) {
            logger.info("给单个用户发送消息id:" + id);
            WebSocketSession session = userSocketSessionMap.get(id);
            if (session.isOpen()) {
                try {
                    session.sendMessage(new TextMessage(JSON.toJSONString(message)));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /**
     * 给多个用户发送消息
     */
    public void sendManyUsers(String messageContent, boolean alert, List<Integer> ids) {
        logger.info("给多个用户发送消息");
        for (Integer id : ids) {
            if (userSocketSessionMap.containsKey(id)) {
                sendOneUser(new MyWebSocketMessage(messageContent, messageMapper.getUnreadMessageCount(id), alert), id);
            }
        }
    }


}
