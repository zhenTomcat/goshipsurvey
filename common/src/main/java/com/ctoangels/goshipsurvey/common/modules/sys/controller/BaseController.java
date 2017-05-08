package com.ctoangels.goshipsurvey.common.modules.sys.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Dict;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author Sun.Han
 * @version 1.0
 * @FileName BaseController.java
 * @Description: Controller基类
 * @Date Apr 17, 2015
 */
public class BaseController {


    @Autowired
    protected HttpServletRequest request;

    @Autowired
    protected HttpSession session;

    @Value("${site_path}")
    private String sitePath;

    @Value("${fromAddress}")
    private String fromAddress;

    @Value("${fromPassword}")
    private String fromPassword;

    @Value("${mail.smtp.host}")
    private String mailSmtpHost;

    @Value("${mail.smtp.port}")
    private String mailSmtpPort;

    @Value("${effectiveTime}")
    private String effectiveTime;

    @Autowired
    private IDictService dictService;

    List<Dict> inspectionTypeDict = null;

    List<Dict> shipTypeDict = null;


    @Autowired
    protected ServletContext application;

    public HttpServletRequest getRequest() {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        return request;
    }

    /**
     * @param binder
     * @Title: initBinder
     * @Description:日期格式转换
     * @date Apr 17, 2015
     */
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(format, true));
    }


    public User getCurrentUser() {
        Subject subject = SecurityUtils.getSubject();
        return (User) subject.getPrincipal();
    }

    /**
     * <p>
     * 转换为 bootstrap-table 需要的分页格式 JSON
     * </p>
     *
     * @param page 分页对象
     * @return
     */
    protected JSONObject jsonPage(Page<?> page) {
        JSONObject jo = new JSONObject();
        jo.put(Const.DRAW, request.getParameter(Const.DRAW));
        jo.put(Const.RECORDSTOTAL, page.getTotal());
        jo.put(Const.RECORDSFILTERED, page.getTotal());
        jo.put(Const.NDATA, page.getRecords());
        return jo;
    }

    /**
     * <p>
     * 获取分页对象
     * </p>
     *
     * @return
     */
    protected <T> Page<T> getPage() {
        int start = 0;
        int length = 10;
        if (request.getParameter(Const.LENGTH) != null) {
            start = Integer.parseInt(request.getParameter(Const.START));
        }
        if (request.getParameter(Const.LENGTH) != null) {
            length = Integer.parseInt(request.getParameter(Const.LENGTH));
        }
        return new Page<>(start / length + 1, length);
    }

    protected <T> EntityWrapper<T> getEntityWrapper() {
        EntityWrapper<T> ew = new EntityWrapper<>();
        ew.where("del_flag={0}", Const.DEL_FLAG_NORMAL);
        return ew;
    }

    /**
     * 返回 JSON 格式对象
     *
     * @param object 转换对象
     * @return
     */
    protected String toJson(Object object) {
        return JSON.toJSONString(object, SerializerFeature.BrowserCompatible);
    }


    /**
     * 返回 JSON 格式对象
     *
     * @param object 转换对象
     * @param format 序列化特点
     * @return
     */
    protected String toJson(Object object, String format) {
        if (format == null) {
            return toJson(object);
        }
        return JSON.toJSONStringWithDateFormat(object, format, SerializerFeature.WriteDateUseDateFormat);
    }


    public List<Dict> getInspectionTypeDict() {
        if (inspectionTypeDict == null) {
            inspectionTypeDict = dictService.getListByType("inspectionType");
        }
        return this.inspectionTypeDict;
    }

    public List<Dict> getShipTypeDict() {
        if (shipTypeDict == null) {
            shipTypeDict = dictService.getListByType("shipType");
        }
        return this.shipTypeDict;
    }

    /**
     * 将数字值转换为字符描述
     *
     * @param values   数字值
     * @param dictList 字典表
     * @return
     */
    public String transferValuesToDes(String values, List<Dict> dictList) {
        String result = "";
        if (values != null && values.trim() != "") {
            String[] types = values.split(",");
            for (String type : types) {
                for (Dict dict : dictList) {
                    if (dict.getValue().equals(type)) {
                        result += dict.getDes() + ",";
                        break;
                    }
                }
            }
            result = result.substring(0, result.length() - 1);
        }
        return result;
    }

}
