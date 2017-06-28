package com.ctoangels.goshipsurvey.common.util;

import java.io.Serializable;

/**
 * Created by lenovo on 2017/6/28.
 */
public class MyWebSocketMessage implements Serializable {
    private String MessageContent;
    private Integer unreadCount;
    private boolean alert;

    public MyWebSocketMessage(String messageContent, Integer unreadCount, boolean alert) {
        MessageContent = messageContent;
        this.unreadCount = unreadCount;
        this.alert = alert;
    }

    public String getMessageContent() {
        return MessageContent;
    }

    public void setMessageContent(String messageContent) {
        MessageContent = messageContent;
    }

    public Integer getUnreadCount() {
        return unreadCount;
    }

    public void setUnreadCount(Integer unreadCount) {
        this.unreadCount = unreadCount;
    }

    public boolean getAlert() {
        return alert;
    }

    public void setAlert(boolean alert) {
        this.alert = alert;
    }
}
