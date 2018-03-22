package com.ctoangels.goshipsurvey.common.modules.wechat.controller;

import cn.binarywang.wx.miniapp.api.WxMaService;
import cn.binarywang.wx.miniapp.api.WxMaUserService;
import cn.binarywang.wx.miniapp.bean.WxMaJscode2SessionResult;
import cn.binarywang.wx.miniapp.bean.WxMaUserInfo;
import com.alibaba.fastjson.JSONObject;
import me.chanjar.weixin.common.exception.WxErrorException;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * 微信小程序用户接口
 *
 * @author <a href="https://github.com/binarywang">Binary Wang</a>
 */
@Controller
@RequestMapping("/wechat/user")
public class WxMaUserController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private WxMaService wxService;

    /**
     * 登陆接口
     */
    @GetMapping("/login")
    @ResponseBody
    public JSONObject login(String code) {
        JSONObject jsonObject = new JSONObject();
        try {
            WxMaJscode2SessionResult session = wxService.getUserService().getSessionInfo(code);
            jsonObject.put("openId", session.getOpenid());
            jsonObject.put("unionId", session.getUnionid());
        } catch (WxErrorException e) {
            System.out.println(e.toString());
        }
        return jsonObject;
    }

}
