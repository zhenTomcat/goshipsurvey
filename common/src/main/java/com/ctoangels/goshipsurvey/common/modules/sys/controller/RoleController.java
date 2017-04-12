package com.ctoangels.goshipsurvey.common.modules.sys.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Role;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.RoleTree;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.modules.sys.service.RoleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Arrays;
import java.util.List;

/**
 * @author Sun.Han
 * @version 1.0
 * @FileName RoleController.java
 * @Description:
 * @Date 2015年5月9日
 */
@Controller
@RequestMapping(value = "/role")
public class RoleController extends BaseController {

    private static Logger logger = LoggerFactory.getLogger(RoleController.class);

    @Autowired
    private RoleService roleService;

    @RequestMapping
    public String page() {
        return "sys/role/role_list";
    }

    @RequestMapping(value = "/list")
    @ResponseBody
    public JSONObject listMenu(Role role) {
        EntityWrapper<Role> ew = getEntityWrapper();
        if (!StringUtils.isEmpty(role.getRoleName()))
            ew.addFilter("role_name={0}",role.getRoleName());
        Page<Role> page = roleService.selectPage(getPage(), ew);
        return jsonPage(page);
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String toAdd() {
        return "sys/role/role_add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject add(Role role) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("status", 1);
        role.setDelFlag(Const.DEL_FLAG_NORMAL);
        roleService.insert(role);
        return jsonObject;
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String toEdit(@RequestParam Integer id, ModelMap map) {
        Role role = roleService.selectById(id);
        map.put("role", role);

        return "sys/role/role_edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject edit(Role role) {
        JSONObject jsonObject = new JSONObject();
        roleService.updateById(role);
        jsonObject.put("status", 1);
        return jsonObject;
    }

    @RequestMapping(value = "/delete")
    @ResponseBody
    public JSONObject delete(@RequestParam Integer id) {
        roleService.deleteById(id);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("status", 1);
        return jsonObject;
    }

    @RequestMapping(value = "/batchDelete")
    @ResponseBody
    public JSONObject batchDelete(String ids) {
        JSONObject jsonObject = new JSONObject();
        roleService.deleteBatchIds(Arrays.asList(ids.split(",")));
        jsonObject.put("status", 1);
        return jsonObject;

    }

    @RequestMapping(value = "/editRight", method = RequestMethod.GET)
    public String toEditRight(@RequestParam Integer id, ModelMap map) {
        map.put("role", roleService.selectById(id));
        return "sys/role/role_right_edit";
    }

    @RequestMapping(value = "/resNodes")
    @ResponseBody
    public List<RoleTree> resNodes(@RequestParam Integer id) {
        return roleService.listTreeData(id);
    }

    @RequestMapping(value = "/editRight", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editRight(String selRes, Integer roleId) {

        JSONObject jsonObject = new JSONObject();
        roleService.editRight(selRes, roleId);

        jsonObject.put("status", 1);
        return jsonObject;
    }

}
