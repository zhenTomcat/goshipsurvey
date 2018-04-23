package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.surveyor;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.SurveyorInfo;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.ISurveyorInfoService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Surveyor;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.service.UserService;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * SurveyorInfo 控制层
 */
@Controller
@RequestMapping(value = "surveyor/surveyorInfo")
public class SurveyorInfoController extends BaseController {

    @Autowired
    ISurveyorInfoService surveyorInfoService;

    @Autowired
    UserService userService;

    @RequestMapping(value = "/editInfo", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editInfo(@RequestParam(required = false) int id,
                               @RequestParam(required = false) String type,
                               @RequestParam(required = false) String url) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("success", surveyorInfoService.editInfo(id, type, url));
        return jsonObject;
    }

    @RequestMapping(value = "/editHeadImg", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editHeadImg(@RequestParam(required = false) String url) {
        JSONObject jsonObject = new JSONObject();
        User user = new User();
        user.setId(getCurrentUser().getId());
        user.setHeadImgUrl(url);
        user.setUpdateInfo(user.getName());
        jsonObject.put("success", userService.updateSelectiveById(user));
        session.setAttribute(Const.SESSION_USER, userService.selectById(user.getId()));
        return jsonObject;
    }

    @RequestMapping(value = "/editInfoName", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editInfoName(SurveyorInfo surveyorInfo) {
        JSONObject jsonObject = new JSONObject();
        surveyorInfo.setUpdateInfo(getCurrentUser().getName());
        jsonObject.put("success", surveyorInfoService.updateSelectiveById(surveyorInfo));
        return jsonObject;
    }
}