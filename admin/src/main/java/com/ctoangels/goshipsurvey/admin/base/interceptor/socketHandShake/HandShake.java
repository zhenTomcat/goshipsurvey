package com.ctoangels.goshipsurvey.admin.base.interceptor.socketHandShake;

import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.http.server.ServletServerHttpResponse;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.HandshakeInterceptor;

import java.util.Map;

/**
 * Created by lenovo on 2017/6/28.
 */
public class HandShake implements HandshakeInterceptor {

    private static Logger logger = LoggerFactory.getLogger(HandShake.class);

    @Override
    public boolean beforeHandshake(ServerHttpRequest serverHttpRequest, ServerHttpResponse serverHttpResponse, WebSocketHandler webSocketHandler, Map<String, Object> map) {
        logger.info("握手前");
        try {
            Subject subject = SecurityUtils.getSubject();
            map.put("userId", ((User) subject.getPrincipal()).getId());
        } catch (Exception e) {
            logger.info(e.getMessage());
            return false;
        }
        return true;
    }

    @Override
    public void afterHandshake(ServerHttpRequest serverHttpRequest, ServerHttpResponse serverHttpResponse, WebSocketHandler webSocketHandler, Exception e) {
        logger.info("握手后");
    }
}
