package com.ctoangels.goshipsurvey.common.modules.wechat.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Surveyor;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ISurveyorService;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.UserSurveyor;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IUserSurveyorService;
import com.ctoangels.goshipsurvey.common.modules.sys.service.UserService;
import com.ctoangels.goshipsurvey.common.modules.wechat.service.CoreService;
import com.ctoangels.goshipsurvey.common.modules.wechat.util.ReturnModel;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.google.gson.Gson;
import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.mp.api.WxMpConfigStorage;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.message.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;
import me.chanjar.weixin.mp.bean.result.WxMpOAuth2AccessToken;
import me.chanjar.weixin.mp.bean.result.WxMpUser;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by FirenzesEagle on 2016/5/30 0030.
 * Email:liumingbo2008@gmail.com
 */
@Controller
public class CoreController {

    @Autowired
    protected WxMpConfigStorage configStorage;
    @Autowired
    protected WxMpService wxMpService;
    @Autowired
    protected CoreService coreService;
    protected Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    protected HttpSession session;

    @Autowired
    private IUserSurveyorService userServeyorService;

    @Autowired
    private UserService userService;

    @Autowired
    private Template template;

    @Autowired
    private ISurveyorService surveyorService;

    private static String url= "/pages/selectType/selectType?openid=";
    private static String first= "欢迎使用岙洋船务微信小程序！";
    private static String keyword1= "点击打开微信小程序";
    private static String keyword2= "新用户第一次使用需进行绑定";
    private static String remark= "点击此条消息即可跳转到岙洋船务小程序";

    @RequestMapping(value = "index")
    public String index() {
        return "index";
    }

    /**
     * 微信公众号webservice主服务接口，提供与微信服务器的信息交互
     *
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping(value = "core")
    public void wechatCore(HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        response.setStatus(HttpServletResponse.SC_OK);

        String signature = request.getParameter("signature");
        String nonce = request.getParameter("nonce");
        String timestamp = request.getParameter("timestamp");

        if (!this.wxMpService.checkSignature(timestamp, nonce, signature)) {
            // 消息签名不正确，说明不是公众平台发过来的消息
            response.getWriter().println("非法请求");
            return;
        }

        String echoStr = request.getParameter("echostr");
        if (StringUtils.isNotBlank(echoStr)) {
            // 说明是一个仅仅用来验证的请求，回显echostr
            String echoStrOut = String.copyValueOf(echoStr.toCharArray());
            response.getWriter().println(echoStrOut);
            return;
        }

        String encryptType = StringUtils.isBlank(request.getParameter("encrypt_type"))
                ? "raw"
                : request.getParameter("encrypt_type");

        if ("raw".equals(encryptType)) {
            // 明文传输的消息
            WxMpXmlMessage inMessage = WxMpXmlMessage.fromXml(request.getInputStream());
            WxMpXmlOutMessage outMessage = this.coreService.route(inMessage);
            response.getWriter().write(outMessage.toXml());
            return;
        }

        if ("aes".equals(encryptType)) {
            // 是aes加密的消息
            String msgSignature = request.getParameter("msg_signature");
            WxMpXmlMessage inMessage = WxMpXmlMessage.fromEncryptedXml(
                    request.getInputStream(), this.configStorage, timestamp, nonce,
                    msgSignature);
            WxMpXmlOutMessage outMessage = this.coreService.route(inMessage);
            response.getWriter()
                    .write(outMessage.toEncryptedXml(this.configStorage));
            return;
        }

        response.getWriter().println("不可识别的加密类型");
        return;
    }

    /**
     * 通过openid获得基本用户信息
     * 详情请见: http://mp.weixin.qq.com/wiki/14/bb5031008f1494a59c6f71fa0f319c66.html
     *
     * @param response
     * @param openid   openid
     * @param lang     zh_CN, zh_TW, en
     */
    @RequestMapping(value = "getUserInfo")
    public WxMpUser getUserInfo(HttpServletResponse response, @RequestParam(value = "openid") String openid, @RequestParam(value = "lang") String lang) {
        ReturnModel returnModel = new ReturnModel();
        WxMpUser wxMpUser = null;
        try {
            wxMpUser = this.wxMpService.getUserService().userInfo(openid, lang);
            returnModel.setResult(true);
            returnModel.setDatum(wxMpUser);
            renderString(response, returnModel);
        } catch (WxErrorException e) {
            returnModel.setResult(false);
            returnModel.setReason(e.getError().toString());
            renderString(response, returnModel);
            this.logger.error(e.getError().toString());
        }
        return wxMpUser;
    }

    /**
     * 通过code获得基本用户信息
     * 详情请见: http://mp.weixin.qq.com/wiki/14/bb5031008f1494a59c6f71fa0f319c66.html
     *
     * @param response
     * @param code     code
     * @param lang     zh_CN, zh_TW, en
     */
    @RequestMapping(value = "getOAuth2UserInfo")
    public void getOAuth2UserInfo(HttpServletResponse response, @RequestParam(value = "code") String code, @RequestParam(value = "lang") String lang) {
        ReturnModel returnModel = new ReturnModel();
        WxMpOAuth2AccessToken accessToken;
        WxMpUser wxMpUser;
        try {
            accessToken = this.wxMpService.oauth2getAccessToken(code);
            wxMpUser = this.wxMpService.getUserService()
                    .userInfo(accessToken.getOpenId(), lang);
            returnModel.setResult(true);
            returnModel.setDatum(wxMpUser);
            renderString(response, returnModel);
        } catch (WxErrorException e) {
            returnModel.setResult(false);
            returnModel.setReason(e.getError().toString());
            renderString(response, returnModel);
            this.logger.error(e.getError().toString());
        }
    }

    @RequestMapping(value = "goToBind")
    public String goToBind(HttpServletResponse response,
                           @RequestParam(value = "code") String code,
                           @RequestParam(value = "lang", required = false) String lang,
                           ModelMap map) {
        WxMpOAuth2AccessToken accessToken;
        WxMpUser wxMpUser;
        String errMsg = "";
        String surveyorEmail="";
        try {
            accessToken = this.wxMpService.oauth2getAccessToken(code);
            wxMpUser = this.wxMpService.getUserService()
                    .userInfo(accessToken.getOpenId(), lang);
            UserSurveyor userServeyor=userServeyorService.selectByGzhOpenId(wxMpUser.getOpenId());
            Boolean exist = false;
            if(userServeyor!=null && userServeyor.getGzhOpenId().equals(wxMpUser.getOpenId())){
                surveyorEmail =surveyorService.selectByOpenId(wxMpUser.getOpenId()).getEmail();
                exist = true;  // TODO: 从wxMpUser获取openId unionId判断是否已经绑定  wxMpUser 放入session中
            }
            if (exist) {
                // 如果存在
                errMsg = "你的信息已经被绑定"; //用户存在的错误信息
                template.infomationNotice(wxMpUser.getOpenId(), Const.IDENTITY_BINDING_SUCCESSFULLY_NOTICE,url,first,surveyorEmail,keyword2,remark);
            } else {
                errMsg="";
            }
            session.setAttribute("wxMpUser", wxMpUser);
        } catch (WxErrorException e) {
            errMsg = "绑定信息失败，请重新操作";// 抓取错误
        }
        map.put("errMsg", errMsg);
        return "we_chat/bind";
    }

    @RequestMapping(method = RequestMethod.POST, value = "bindWeiXinPublic")
    @ResponseBody
    public JSONObject bindWeiXinPublic(Surveyor surveyor) {
        JSONObject jsonObject = new JSONObject();;
        // TODO 通过surveyor的email 和 tel  查找数据库有没有这个验船师 flag

        WxMpUser wxMpUser = (WxMpUser) session.getAttribute("wxMpUser");
        if (wxMpUser != null) {
            userService.insertByInfo(jsonObject,surveyor,wxMpUser);

        }
        String delFlag= (String) jsonObject.get("delFlag");
        if(delFlag.equals("3")){
            template.infomationNotice(wxMpUser.getOpenId(), Const.IDENTITY_BINDING_SUCCESSFULLY_NOTICE,url,first,surveyor.getEmail(),keyword2,remark);
        }
        session.removeAttribute("wxMpUser");
        return jsonObject;
    }


    /**
     * 用code换取oauth2的openid
     * 详情请见: http://mp.weixin.qq.com/wiki/1/8a5ce6257f1d3b2afb20f83e72b72ce9.html
     *
     * @param response
     * @param code     code
     */
    @RequestMapping(value = "getOpenid")
    public void getOpenid(HttpServletResponse response, @RequestParam(value = "code") String code) {
        ReturnModel returnModel = new ReturnModel();
        WxMpOAuth2AccessToken accessToken;
        try {
            accessToken = this.wxMpService.oauth2getAccessToken(code);
            returnModel.setResult(true);
            returnModel.setDatum(accessToken.getOpenId());
            renderString(response, returnModel);
        } catch (WxErrorException e) {
            returnModel.setResult(false);
            returnModel.setReason(e.getError().toString());
            renderString(response, returnModel);
            this.logger.error(e.getError().toString());
        }
    }

    private String renderString(HttpServletResponse response, Object object) {
        return renderString(response, new Gson().toJson(object), "application/json");
    }

    private String renderString(HttpServletResponse response, String string, String type) {
        try {
            response.reset();
            response.setContentType(type);
            response.setCharacterEncoding("utf-8");
            //解决跨域问题
            response.setHeader("Access-Control-Allow-Origin", "*");
            response.getWriter().print(string);
        } catch (IOException e) {
            return null;
        }
        return null;
    }

}
