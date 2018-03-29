package com.ctoangels.goshipsurvey.common.modules.wechat.controller;

import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.mp.api.WxMpTemplateMsgService;
import me.chanjar.weixin.mp.bean.template.WxMpTemplateData;
import me.chanjar.weixin.mp.bean.template.WxMpTemplateMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

/**
 * szh 2017/6/18.
 */
@Service
public class Template {

    @Autowired
    protected WxMpTemplateMsgService wxMpTemplateMsgService;
    @Value("${weixin.appId}")
    private String appid;


    /**
     * 信息通知
     *
     * @param openid
     * @param id
     * @param key1
     * @param key2
     */
    public void infomationNotice(String openid,String templateId,String url, String first, String keyword1, String keyword2, String remark) {

        WxMpTemplateMessage templateMessage=WxMpTemplateMessage.builder().build();

        templateMessage.setToUser(openid);
        templateMessage.setTemplateId(templateId);
        templateMessage.setUrl(url);


        WxMpTemplateMessage.MiniProgram miniProgram =new WxMpTemplateMessage.MiniProgram(openid,url);

        templateMessage.setMiniProgram(miniProgram);
        templateMessage.getData().add(new WxMpTemplateData("first", first, "#000000"));
        templateMessage.getData().add(new WxMpTemplateData("keyword1", keyword1));
        templateMessage.getData().add(new WxMpTemplateData("keyword2", keyword2));
        templateMessage.getData().add(new WxMpTemplateData("remark", remark, "#eb3436"));

        templatePush(templateMessage);
    }

    /**
     * 审核结果通知
     *
     * @param openid
     * @param id
     * @param key1
     * @param key2
     */
    public void NoticeAuditResult(String openid,String templateId,String url, String first, String keyword1, String keyword2,String keyword3, String remark) {

        WxMpTemplateMessage templateMessage=WxMpTemplateMessage.builder().build();

        templateMessage.setToUser(openid);
        templateMessage.setTemplateId(templateId);
        templateMessage.setUrl(url);


        WxMpTemplateMessage.MiniProgram miniProgram =new WxMpTemplateMessage.MiniProgram(openid,url);

        templateMessage.setMiniProgram(miniProgram);
        templateMessage.getData().add(new WxMpTemplateData("first", first, "#000000"));
        templateMessage.getData().add(new WxMpTemplateData("keyword1", keyword1));
        templateMessage.getData().add(new WxMpTemplateData("keyword2", keyword2));
        templateMessage.getData().add(new WxMpTemplateData("keyword3", keyword3));
        templateMessage.getData().add(new WxMpTemplateData("remark", remark, "#000000"));

        templatePush(templateMessage);
    }




    public void templatePush(WxMpTemplateMessage templateMessage) {
        try {
            System.out.println(templateMessage.toJson());
            wxMpTemplateMsgService.sendTemplateMsg(templateMessage);
        } catch (WxErrorException e) {
            e.printStackTrace();
        }
    }

}
