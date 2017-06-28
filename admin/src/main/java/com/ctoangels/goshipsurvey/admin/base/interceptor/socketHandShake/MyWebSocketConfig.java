package com.ctoangels.goshipsurvey.admin.base.interceptor.socketHandShake;

import com.ctoangels.goshipsurvey.admin.base.interceptor.dataSourceSelect.DataSourceInterceptor;
import com.ctoangels.goshipsurvey.common.util.MyWebSocketHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

import javax.annotation.Resource;

/**
 * Created by lenovo on 2017/6/28.
 */
@Component
@EnableWebMvc
@EnableWebSocket
public class MyWebSocketConfig extends WebMvcConfigurerAdapter implements WebSocketConfigurer {
    @Resource
    MyWebSocketHandler handler;

    private static Logger logger = LoggerFactory.getLogger(MyWebSocketConfig.class);

    public MyWebSocketConfig() {
        logger.info("MyWebSocketConfig加载了");
    }

    @Override
    public void registerWebSocketHandlers(WebSocketHandlerRegistry webSocketHandlerRegistry) {
        logger.info("注册sebSocket handler");
        webSocketHandlerRegistry.addHandler(handler, "/wsMy").addInterceptors(new HandShake());
        webSocketHandlerRegistry.addHandler(handler, "/wsMy/sockjs").addInterceptors(new HandShake()).withSockJS();
    }
}
