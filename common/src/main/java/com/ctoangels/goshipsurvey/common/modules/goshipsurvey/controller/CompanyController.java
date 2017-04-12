package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Company;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.ICompanyService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Company 控制层
 */
@Controller
@RequestMapping("company")
public class CompanyController extends BaseController {
    @Autowired
    private ICompanyService companyService;

    @Value("${static_path}")
    private String staticPath;

    //查找当前的用户所在的公司
    @RequestMapping
    public String info(ModelMap modelMap) {
        int companyId = getCurrentUser().getCompanyId();
        EntityWrapper<Company> ew = getEntityWrapper();
        ew.addFilter("id={0}", companyId);
        Company company = companyService.selectOne(ew);
        modelMap.put("company", company);
        return "go/company/list";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(ModelMap map) {
        Integer companyId = getCurrentUser().getCompanyId();
        if (companyId != null) {
            Company company = companyService.selectById(companyId);
            map.put("company", company);
        }
        map.put("staticPath", staticPath);
        return "go/company/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editComplete(Company company) {
        JSONObject jsonObject = new JSONObject();
        company.setDelFlag(0);
        if (companyService.insertOrUpdate(company)) {
            jsonObject.put("success", true);
        } else {
            jsonObject.put("success", false);
            jsonObject.put("msg", "编辑时出错,请稍后再试");
        }
        return jsonObject;
    }

}