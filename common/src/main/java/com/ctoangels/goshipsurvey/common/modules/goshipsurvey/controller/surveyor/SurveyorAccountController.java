package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.surveyor;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Dict;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IInspectionService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.service.UserService;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Inspection 控制层
 */
@Controller
@RequestMapping(value = "surveyor/account")
public class SurveyorAccountController extends BaseController {

    @Autowired
    UserService userService;

    @Autowired
    IDictService dictService;

    @Autowired
    IInspectionService inspectionService;

    @Value("${static_path}")
    private String staticPath;

    @RequestMapping(value = "/personalEdit", method = RequestMethod.GET)
    public String personalEdit(ModelMap map) {
        map.put("shipType", dictService.getListByType("shipType"));
        String userShipType = getCurrentUser().getShipType();
        String[] userShipTypes = null;
        if (StringUtils.isNotEmpty(userShipType)) {
            userShipTypes = userShipType.split(",");
        }
        map.put("userShipTypes", userShipTypes);
        map.put("staticPath", staticPath);
        return "goshipsurvey/surveyor/account/personalEdit";
    }

    @RequestMapping(value = "/companyEdit", method = RequestMethod.GET)
    public String companyEdit(ModelMap map) {
        map.put("shipType", dictService.getListByType("shipType"));
        String userShipType = getCurrentUser().getShipType();
        String[] userShipTypes = null;
        if (StringUtils.isNotEmpty(userShipType)) {
            userShipTypes = userShipType.split(",");
        }
        map.put("userShipTypes", userShipTypes);
        map.put("staticPath", staticPath);
        return "goshipsurvey/surveyor/account/companyEdit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editComplete(User user) {
        JSONObject jsonObject = new JSONObject();
        user.setUpdateInfo(user.getName());
        jsonObject.put("success", userService.updateSelectiveById(user));
        session.setAttribute(Const.SESSION_USER, userService.selectById(user.getId()));
        return jsonObject;
    }

    @RequestMapping(value = "/personalInfo", method = RequestMethod.GET)
    public String personalInfo(@RequestParam(required = false) int id, ModelMap map) {
        User user = userService.selectById(id);
        String userShipType = user.getShipType();
        String types = transferShipType(userShipType);
        map.put("user", user);
        map.put("shipType", types);
        return "goshipsurvey/surveyor/account/personalInfo";
    }

    @RequestMapping(value = "/companyInfo", method = RequestMethod.GET)
    public String companyInfo(@RequestParam(required = false) int id, ModelMap map) {
        User user = userService.selectById(id);
        String userShipType = user.getShipType();
        String types = transferShipType(userShipType);
        map.put("user", user);
        map.put("shipType", types);
        return "goshipsurvey/surveyor/account/companyInfo";
    }

    public String transferShipType(String userShipType) {
        String[] userShipTypes = null;
        if (StringUtils.isNotEmpty(userShipType)) {
            userShipTypes = userShipType.split(",");
        }
        List<Dict> shipTypes = dictService.getListByType("shipType");
        String types = "";
        if (userShipTypes != null && userShipTypes.length > 0) {
            for (String s : userShipTypes) {
                for (Dict d : shipTypes) {
                    if (d.getValue().equals(s)) {
                        types += d.getDes() + ",";
                        break;
                    }
                }
            }
            types = types.substring(0, types.length());
        }
        return types;
    }

}