package com.ctoangels.goshipsurvey.common.modules.sys.controller;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Style;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IStyleService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IPurchaseInspectionService;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Button;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Menu;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.service.LoginService;
import com.ctoangels.goshipsurvey.common.modules.sys.service.UserService;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.MD5;
import com.ctoangels.goshipsurvey.common.util.MailUtil;
import com.ctoangels.goshipsurvey.common.util.Tools;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

/**
 * @author Sun.Han
 * @version 1.0
 * @FileName LoginController.java
 * @Description:
 * @Date Apr 17, 2015
 */
@Controller
public class PublicController extends BaseController {

    private static Logger logger = LoggerFactory.getLogger(PublicController.class);

    @Autowired
    private IDictService dictService;

    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public String welcome(ModelMap map) {
        map.put("emailQuotationTypeDict", getEmailQuotationTypeDict());
        map.put("emailQuotationRoleDict", dictService.getListByType("emailQuotationRole"));
        return "sys/welcome";
    }

    @RequestMapping(value = "public/ourReports", method = RequestMethod.GET)
    public String ourReports(ModelMap map) {
        return "public/ourReports";
    }

    @RequestMapping(value = "public/ourSurveyors", method = RequestMethod.GET)
    public String ourSurveyors(ModelMap map) {
        return "public/ourSurveyors";
    }

    @RequestMapping(value = "public/aboutUs", method = RequestMethod.GET)
    public String aboutUs(ModelMap map) {
        return "public/aboutUs";
    }

    @RequestMapping(value = "public/downloadCenter", method = RequestMethod.GET)
    public String downloadCenter(ModelMap map) {
        return "public/downloadCenter";
    }
}
