package com.ctoangels.goshipsurvey.common.modules.sys.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Surveyor;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Role;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.service.RoleService;
import com.ctoangels.goshipsurvey.common.modules.sys.service.UserService;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.SimpleHash;
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

import java.util.Arrays;
import java.util.List;

/**
 * @author Sun.Han
 * @version 1.0
 * @FileName UserController.java
 * @Description:
 * @Date 2015年5月9日
 */
@Controller
@RequestMapping(value = "/user")
public class UserController extends BaseController {

    private static Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Value("${static_path}")
    private String staticPath;

    @RequestMapping(value = "/editPwd", method = RequestMethod.GET)
    public String editPwd() {
        return "sys/admin/editPassword";
    }

    @RequestMapping(value = "/editPwd", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject doEditPwd(String password, String oldPassword) {
        return userService.editPassword(password, oldPassword);
    }

    @RequestMapping(value = "/unauthorized")
    public String unauthorized() {
        return "sys/admin/unauthorized";
    }

    @RequestMapping
    public String page() {
        return "sys/user/user_list";
    }

    @RequestMapping(value = "/list")
    @ResponseBody
    public JSONObject list(@RequestParam(required = false) String keyword) {
        EntityWrapper<User> ew = getEntityWrapper();
        if (!StringUtils.isEmpty(keyword))
            ew.addFilter("CONCAT(IFNULL(login_name,''),IFNULL(name,'')) like {0}", "%" + keyword + "%");
        return jsonPage(userService.selectPage(getPage(), ew));
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String toAdd(ModelMap map) {
        map.put("del_flag", 0);
        map.put("allocatable", 1);
        List<Role> roles = roleService.selectByMap(map);
        map.put("roles", roles);
        return "sys/user/user_add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject add(User user) {
        JSONObject jsonObject = new JSONObject();
        // 登录名统一转换成小写
        user.setLoginName(user.getLoginName().toLowerCase());
        if (userService.isNameExist(user.getLoginName())) {
            jsonObject.put("status", 0);
            jsonObject.put("msg", "用户名重复，请修改");
        } else {
            String password = new SimpleHash("SHA-1", user.getLoginName(), user.getPassword()).toString();
            user.setPassword(password);
            user.setDelFlag(Const.DEL_FLAG_NORMAL);

            userService.insert(user);
            jsonObject.put("status", 1);
        }
        return jsonObject;
    }

    @RequestMapping(value = "/checkName", method = RequestMethod.POST)
    @ResponseBody
    public int checkName(String loginName) {
        int result = 0;
        try {
            if (userService.isNameExist(loginName)) {
                result = 1;
            }
        } catch (Exception e) {
            logger.error("check group name error", e);
        }
        return result;
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String toEdit(@RequestParam Integer id, ModelMap map) {
        User user = userService.selectById(id);
        user.setRoles(userService.getRoles(id));

        map.put("user", user);
        return "sys/user/user_edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject edit(User user) {
        JSONObject result = new JSONObject();
        if (StringUtils.isNotBlank(user.getPassword())) {
            User u = userService.selectById(user.getId());
            String loginName = u.getLoginName();
            String password = new SimpleHash("SHA-1", loginName, user.getPassword()).toString();
            user.setPassword(password);
        } else {
            user.setPassword(null);
        }
        userService.updateSelectiveById(user);
        Subject subject = SecurityUtils.getSubject();
        if (subject.hasRole(Const.ADMIN_ROLE)) userService.editRole(user);
        result.put("status", 1);
        return result;
    }

    @RequestMapping(value = "/delete")
    @ResponseBody
    public JSONObject delete(@RequestParam Integer id) {
        JSONObject result = new JSONObject();
        userService.deleteById(id);
        result.put("status", 1);
        return result;
    }

    @RequestMapping(value = "/batchDelete")
    @ResponseBody
    public JSONObject batchDelete(@RequestParam String ids) {
        JSONObject result = new JSONObject();
        if (!StringUtils.isEmpty(ids))
            userService.deleteBatchIds(Arrays.asList(ids.split(",")));
        result.put("status", 1);
        return result;
    }

    @RequestMapping(value = "/editRole", method = RequestMethod.GET)
    public String toEditRole(@RequestParam Integer id, ModelMap map) {
        List<Role> roles = userService.getRoles(id);
        map.put("userId", id);
//        List<Role> roles = roleService.selectList(getEntityWrapper());
        map.put("roles", roles);
        return "sys/user/user_role_edit";
    }

    @RequestMapping(value = "/editRole", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editRole(User user) {
        JSONObject result = new JSONObject();
        userService.editRole(user);
        result.put("status", 1);
        return result;
    }


    @RequestMapping(value = "/companyEdit", method = RequestMethod.GET)
    public String companyEdit(ModelMap map) {
        map.put("shipType", getShipTypeDict());
        User company = userService.selectById(getCurrentUser().getId());
        map.put("company", company);
        String userShipType = company.getShipType();
        String[] userShipTypes = null;
        if (StringUtils.isNotEmpty(userShipType)) {
            userShipTypes = userShipType.split(",");
        }
        map.put("userShipTypes", userShipTypes);
        map.put("staticPath", staticPath);
        return "sys/user/companyEdit";
    }

    @RequestMapping(value = "/companyEditComplete", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject companyEditComplete(User user) {
        JSONObject jsonObject = new JSONObject();
        user.setUpdateInfo(user.getName());
        jsonObject.put("success", userService.updateSelectiveById(user));
        return jsonObject;
    }

    @RequestMapping(value = "/companyInfo", method = RequestMethod.GET)
    public String companyInfo(@RequestParam(required = false) Integer id, ModelMap map) {
        User company = userService.selectById(id);
        map.put("company", company);
        String types = transferShipType(company.getShipType());
        map.put("shipType", types);
        return "sys/user/companyInfo";
    }

    @RequestMapping(value = "/opEdit", method = RequestMethod.GET)
    public String opEdit(ModelMap map) {
        User op = userService.selectById(getCurrentUser().getId());
        map.put("op", op);
        map.put("staticPath", staticPath);
        return "sys/user/opEdit";
    }

    @RequestMapping(value = "/opEditComplete", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject opEditComplete(User user) {
        JSONObject result = new JSONObject();
        return result;
    }

    @RequestMapping(value = "/opInfo", method = RequestMethod.GET)
    public String opInfo(@RequestParam(required = false) Integer id, ModelMap map) {
        User op = userService.selectById(id);
        map.put("op", op);
        return "sys/user/opInfo";
    }

    @RequestMapping(value = "/searchSurveyors")
    @ResponseBody
    public JSONObject searchSurveyors(@RequestParam(required = false) String keyword) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("list", userService.getSurveyorList(keyword));
        return jsonObject;
    }


}
