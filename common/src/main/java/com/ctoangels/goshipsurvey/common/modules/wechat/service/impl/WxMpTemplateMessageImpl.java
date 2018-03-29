/*
package com.ctoangels.goshipsurvey.common.modules.wechat.service.impl;

import com.alibaba.fastjson.JSONObject;
import me.chanjar.weixin.mp.bean.template.WxMpTemplateData;
import me.chanjar.weixin.mp.bean.template.WxMpTemplateMessage;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

*/
/**
 * Created by wanggc on 2017/5/9.
 *//*

public class WxMpTemplateMessageImpl extends WxMpTemplateMessage implements Serializable {

    private Map miniprogram;

    public Map getMiniprogram() {
        return miniprogram;
    }

    public void setMiniprogram(Map miniprogram) {
        this.miniprogram = miniprogram;
    }

    public WxMpTemplateMessageImpl() {
        super();
    }

    public String toJson() {
        Map map = new HashMap();
        Map paramMap = new HashMap();
        for(WxMpTemplateData wxMpTemplateData:this.getData()){
            Map dataMap = new HashMap();
            dataMap.put("value",wxMpTemplateData.getValue());
            dataMap.put("color",wxMpTemplateData.getColor());
            paramMap.put(wxMpTemplateData.getName(),dataMap);
        }
        map.put("touser",this.getToUser());
        map.put("template_id",this.getTemplateId());
        map.put("url",this.getUrl());
        map.put("data",paramMap);
        map.put("miniprogram",this.getMiniprogram());
        return JSONObject.toJSONString(map);
    }

    public static WxMpTemplateMessageImpl.WxMpTemplateMessageBuilder builder1() {
        return new WxMpTemplateMessageImpl.WxMpTemplateMessageBuilder();
    }

    public static class WxMpTemplateMessageBuilder {
        private String toUser;
        private String templateId;
        private String url;
        private Map miniprogram;
        private List<WxMpTemplateData> data = new ArrayList();

        public WxMpTemplateMessageBuilder() {
        }

        public WxMpTemplateMessageImpl.WxMpTemplateMessageBuilder toUser(String toUser) {
            this.toUser = toUser;
            return this;
        }

        public WxMpTemplateMessageImpl.WxMpTemplateMessageBuilder templateId(String templateId) {
            this.templateId = templateId;
            return this;
        }

        public WxMpTemplateMessageImpl.WxMpTemplateMessageBuilder url(String url) {
            this.url = url;
            return this;
        }

        public WxMpTemplateMessageImpl.WxMpTemplateMessageBuilder data(List<WxMpTemplateData> data) {
            this.data = data;
            return this;
        }

        public WxMpTemplateMessageImpl.WxMpTemplateMessageBuilder miniprogram(Map miniprogram) {
            this.miniprogram = miniprogram;
            return this;
        }

        public WxMpTemplateMessageImpl.WxMpTemplateMessageBuilder from(WxMpTemplateMessageImpl origin) {
            this.toUser(origin.getToUser());
            this.templateId(origin.getTemplateId());
            this.url(origin.getUrl());
            this.data(origin.getData());
            this.miniprogram(origin.miniprogram);
            return this;
        }

        public WxMpTemplateMessageImpl build() {
            WxMpTemplateMessageImpl m = new WxMpTemplateMessageImpl();
            m.setToUser(this.toUser);
            m.setTemplateId(this.templateId);
            m.setUrl(this.url);
            m.miniprogram = this.miniprogram;
            return m;
        }
    }
}
*/
