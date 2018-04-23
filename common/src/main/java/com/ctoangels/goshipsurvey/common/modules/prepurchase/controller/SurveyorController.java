package com.ctoangels.goshipsurvey.common.modules.prepurchase.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.toolkit.CollectionUtil;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Port;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.SurveyorInfo;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IPortService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Surveyor;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.SurveyorExperience;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ISurveyorExperienceService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ISurveyorService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.service.UserService;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.DateUtil;
import com.ctoangels.goshipsurvey.common.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * Surveyor 控制层
 */
@Controller
@RequestMapping(value = "surveyor")
public class SurveyorController extends BaseController {

    @Autowired
    ISurveyorService surveyorService;

    @Autowired
    ISurveyorExperienceService surveyorExperienceService;

    @Autowired
    UserService userService;

    @Autowired
    IPortService portService;

    @Value("${static_path}")
    private String staticPath;


    @RequestMapping
    public String surveyor(ModelMap map) {
        return "sys/surveyor/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getList(@RequestParam(required = false) String name,
                              @RequestParam(required = false) String port,
                              @RequestParam(required = false) Date startDate,
                              @RequestParam(required = false) Date endDate) {
        EntityWrapper<Surveyor> ew = getEntityWrapper();
        ew.addFilter("company_id={0} and del_flag={1}", getCurrentUser().getId(), Const.DEL_FLAG_NORMAL);
        if (StringUtils.isNotEmpty(name)) {
            ew.like("first_name", name);
            ew.or("last_name like {0}", "%" + name + "%");
        }
        if (StringUtils.isNotEmpty(port)) {
            ew.addFilter("( survey_port ={0} or survey_port REGEXP \"(^" + port + ",)|(," + port + "$)|(," + port + ",)\")", port);
        }
        if (startDate != null) {
            ew.addFilter("survey_time_start <={0}", DateUtil.formatDate(startDate, "yyyy-MM-dd"));
        }
        if (endDate != null) {
            ew.addFilter("survey_time_end >={0}", DateUtil.formatDate(endDate, "yyyy-MM-dd"));
        }

        List<Port> allPort = portService.selectList(new EntityWrapper<>());
        Page<Surveyor> page = surveyorService.selectPage(getPage(), ew);
        for (Surveyor s : page.getRecords()) {
            String portValue = "";
            String portString = s.getSurveyPort();
            String[] userPorts;
            if (StringUtils.isNotEmpty(portString)) {
                userPorts = portString.split(",");
                for (String p : userPorts) {
                    Port p1 = allPort.get(Integer.parseInt(p) - 1);
                    portValue += p1.getPortEn() + "," + p1.getCountryCode() + ";";
                }
                portValue = portValue.substring(0, portValue.length() - 1);
            }

            String surveyValue = "";
            String surveyString = s.getSurveyType();
            String[] userSurveys;
            if (StringUtils.isNotEmpty(surveyString)) {
                userSurveys = surveyString.split(",");
                for (String ss : userSurveys) {
                    surveyValue += getSurveyTypeDict().get(Integer.parseInt(ss) - 1).getDes() + ",";
                }
                surveyValue = surveyValue.substring(0, surveyValue.length() - 1);
            }
            s.setSurveyType(surveyValue);

            s.setSurveyPort(portValue);
        }

        return jsonPage(page);
    }


    @RequestMapping(value = "/batchDelete")
    @ResponseBody
    public JSONObject batchDelete(@RequestParam String ids) {
        JSONObject result = new JSONObject();
        if (!StringUtils.isEmpty(ids)) {
            List<Surveyor> list = surveyorService.selectBatchIds(Arrays.asList(ids.split(",")));
            for (Surveyor s : list) {
                s.setDelFlag(Const.DEL_FLAG_DELETE);
                s.setUpdateInfo(getCurrentUser().getName());
            }
            surveyorService.updateBatchById(list);
        }
        result.put("status", 1);
        return result;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(ModelMap map) {
        map.put("shipType", getShipTypeDict());
        map.put("surveyType", getSurveyTypeDict());
        map.put("staticPath", staticPath);
        return "sys/surveyor/add";
    }

    @RequestMapping(value = "/addComplete", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject addComplete(Surveyor surveyor) {

        JSONObject jsonObject = new JSONObject();
        surveyor.setPastEvaluation(0D);
        surveyor.setCompanyId(getCurrentUser().getId());
        surveyor.setCreateInfo(getCurrentUser().getName());

        String a = request.getParameter("myList");
        List<SurveyorExperience> list = JSON.parseArray(a, SurveyorExperience.class);

        jsonObject.put("success", surveyorService.insertSurveyorWithExperience(surveyor, list));
        return jsonObject;
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(ModelMap map, @RequestParam(required = false) int id, @RequestParam(required = false) Integer dialog) {
        Surveyor surveyor = surveyorService.selectById(id);

        String userShipType = surveyor.getShipType();
        if (StringUtils.isNotEmpty(userShipType)) {
            String[] userShipTypes = userShipType.split(",");
            map.put("userShipTypes", userShipTypes);
        }

        String userSurveyType = surveyor.getSurveyType();
        if (StringUtils.isNotEmpty(userSurveyType)) {
            String[] userSurveyTypes = userSurveyType.split(",");
            map.put("userSurveyTypes", userSurveyTypes);
        }

        String portString = surveyor.getSurveyPort();
        if (StringUtils.isNotEmpty(portString)) {
            String[] userPorts;
            userPorts = portString.split(",");
            List<Port> portList = portService.selectBatchIds(Arrays.asList(userPorts));
            map.put("portList", portList);
        }

        SurveyorExperience surveyorExperience = new SurveyorExperience();
        surveyorExperience.setSurveyorId(id);
        surveyorExperience.setDelFlag(Const.DEL_FLAG_NORMAL);
        List<SurveyorExperience> experienceList = surveyorExperienceService.selectList(new EntityWrapper<>(surveyorExperience));
        map.put("experienceList", experienceList);

        map.put("staticPath", staticPath);
        map.put("surveyor", surveyor);
        map.put("shipType", getShipTypeDict());
        map.put("surveyType", getSurveyTypeDict());

        if (dialog!=null && dialog == 1) {
            return "sys/surveyor/edit2";
        }
        return "sys/surveyor/edit";
    }

    @RequestMapping(value = "/editComplete", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editComplete(Surveyor surveyor) {
        JSONObject jsonObject = new JSONObject();
        String a = request.getParameter("myList");
        List<SurveyorExperience> list = JSON.parseArray(a, SurveyorExperience.class);
        jsonObject.put("success", surveyorService.updateSurveyorWithExperience(surveyor, list));
        return jsonObject;
    }

    @RequestMapping(value = "/editPort", method = RequestMethod.GET)
    public String editPort(ModelMap map, @RequestParam(required = false) Integer id) {
        Surveyor surveyor = surveyorService.selectById(id);
        String portString = surveyor.getSurveyPort();
        if (StringUtils.isNotEmpty(portString)) {
            String[] userPorts;
            userPorts = portString.split(",");
            List<Port> portList = portService.selectBatchIds(Arrays.asList(userPorts));
            map.put("portList", portList);
        }
        return "sys/surveyor/editPort";
    }

    @RequestMapping(value = "/editPortComplete", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editPortComplete(Surveyor surveyor) {
        JSONObject jsonObject = new JSONObject();
        surveyor.setUpdateInfo(getCurrentUser().getName());
        jsonObject.put("success", surveyorService.updateSelectiveById(surveyor));
        return jsonObject;
    }

    @RequestMapping(value = "/editTime", method = RequestMethod.GET)
    public String editTime(ModelMap map, @RequestParam(required = false) Integer id) {
        Surveyor surveyor = surveyorService.selectById(id);
        map.put("surveyor", surveyor);
        return "sys/surveyor/editTime";
    }

    @RequestMapping(value = "/editTimeComplete", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editTimeComplete(Surveyor surveyor) {
        JSONObject jsonObject = new JSONObject();
        surveyor.setUpdateInfo(getCurrentUser().getName());
        if (surveyorService.updateSelectiveById(surveyor)) {
            jsonObject.put("status", 1);
        } else {
            jsonObject.put("status", 0);
        }
        return jsonObject;
    }

    @RequestMapping(value = "/editSurveyType", method = RequestMethod.GET)
    public String editSurveyType(ModelMap map, @RequestParam(required = false) Integer id) {
        Surveyor surveyor = surveyorService.selectById(id);
        map.put("surveyor", surveyor);
        String userSurveyType = surveyor.getSurveyType();
        if (StringUtils.isNotEmpty(userSurveyType)) {
            String[] userSurveyTypes = userSurveyType.split(",");
            map.put("userSurveyTypes", userSurveyTypes);
        }
        map.put("surveyType", getSurveyTypeDict());
        return "sys/surveyor/editSurveyType";
    }

    @RequestMapping(value = "/editSurveyTypeComplete", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editSurveyTypeComplete(Surveyor surveyor) {
        JSONObject jsonObject = new JSONObject();
        if (surveyor.getSurveyType() == null) surveyor.setSurveyType("");
        surveyor.setUpdateInfo(getCurrentUser().getName());
        if (surveyorService.updateSelectiveById(surveyor)) {
            jsonObject.put("status", 1);
        } else {
            jsonObject.put("status", 0);
        }
        return jsonObject;
    }

    @RequestMapping(value = "/info", method = RequestMethod.GET)
    public String info(ModelMap map, @RequestParam(required = false) int id) {
        Surveyor surveyor = surveyorService.selectById(id);

        SurveyorExperience surveyorExperience = new SurveyorExperience();
        surveyorExperience.setSurveyorId(id);
        surveyorExperience.setDelFlag(Const.DEL_FLAG_NORMAL);
        List<SurveyorExperience> experienceList = surveyorExperienceService.selectList(new EntityWrapper<>(surveyorExperience));
        surveyor.setExperienceList(experienceList);

        String userShipType = surveyor.getShipType();
        String[] userShipTypes = null;
        if (StringUtils.isNotEmpty(userShipType)) {
            userShipTypes = userShipType.split(",");
        }

        String portString = surveyor.getSurveyPort();
        if (StringUtils.isNotEmpty(portString)) {
            String[] userPorts;
            userPorts = portString.split(",");
            List<Port> portList = portService.selectBatchIds(Arrays.asList(userPorts));
            map.put("portList", portList);
        }

        map.put("userShipTypes", userShipTypes);
        map.put("surveyor", surveyor);
        map.put("company", userService.selectById(surveyor.getCompanyId()));
        map.put("shipType", getShipTypeDict());
        return "sys/surveyor/info";
    }

    @RequestMapping(value = "/getSurveyors", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getSurveyors(ModelMap map) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("list", surveyorService.getSurveyorsByCompanyId(getCurrentUser().getId()));
        return jsonObject;
    }

    @RequestMapping(value = "/bindInfo", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject bindInfo(SurveyorInfo surveyorInfo) {
        JSONObject jsonObject = new JSONObject();
        List<Surveyor> bindSurveyors=surveyorService.selectBindInfo();
        jsonObject.put("bindSurveyors",bindSurveyors);
        return jsonObject;
    }


}