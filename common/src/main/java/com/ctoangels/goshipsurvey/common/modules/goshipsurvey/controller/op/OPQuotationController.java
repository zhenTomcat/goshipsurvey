package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.op;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Dict;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.UserSurveyor;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IMessageService;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IUserSurveyorService;
import com.ctoangels.goshipsurvey.common.modules.sys.service.UserService;
import com.ctoangels.goshipsurvey.common.modules.sys.service.impl.MessageServiceImpl;
import com.ctoangels.goshipsurvey.common.modules.wechat.controller.Template;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.DateUtil;
import com.ctoangels.goshipsurvey.common.util.Tools;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

/**
 * Quotation 控制层
 */
@Controller
@RequestMapping(value = "op/quotation")
public class OPQuotationController extends BaseController {

    private static Logger logger = LoggerFactory.getLogger(OPQuotationController.class);

    @Autowired
    IQuotationService quotationService;

    @Autowired
    IMessageService messageService;

    @Autowired
    UserService userService;

    @Autowired
    private Template template;

    @Autowired
    private IUserSurveyorService userSurveyorService;

    private static String url = "/pages/selectType/selectType?openid=";
    private static String first = "询价消息通知";
    private static String keyword1 = "";
    private static String keyword2 = "岙洋船务";
    private static String remark = "打开小程序查看更详细类容";

    @RequestMapping
    public String list(ModelMap map) {
        map.put("shipType", getShipTypeDict());
        map.put("inspectionType", getInspectionTypeDict());
        return "goshipsurvey/op/quotation/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getList() {
        int start = 0;
        int length = 10;
        if (request.getParameter(Const.START) != null) {
            start = Integer.parseInt(request.getParameter(Const.START));
        }
        if (request.getParameter(Const.LENGTH) != null) {
            length = Integer.parseInt(request.getParameter(Const.LENGTH));
        }
        JSONObject jsonObject = new JSONObject();
        List<Quotation> list = quotationService.getOPList(getCurrentUser().getId(), start, length);
        for (Quotation q : list) {
            q.setInspectionType(Tools.transferValuesToDes(q.getInspectionType(), getInspectionTypeDict()));
            q.setShipType(Tools.transferValuesToDes(q.getShipType(), getShipTypeDict()));
        }
        jsonObject.put(Const.DRAW, request.getParameter(Const.DRAW));
        int total = quotationService.getOPTotal(getCurrentUser().getId());
        jsonObject.put(Const.RECORDSTOTAL, total);
        jsonObject.put(Const.RECORDSFILTERED, total);
        jsonObject.put(Const.NDATA, list);
        return jsonObject;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(ModelMap map) {
        map.put("inspectionType", getInspectionTypeDict());
        map.put("shipType", getShipTypeDict());
        return "goshipsurvey/op/quotation/add";
    }

    @RequestMapping(value = "/addComplete", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject addComplete(Quotation quotation) {
        JSONObject jsonObject = new JSONObject();
        User user = getCurrentUser();
        quotation.setOpUId(user.getId());
        quotation.setOpUName(user.getName());
        quotation.setQuotationStatus(Const.QUOTATION_INIT);
        quotation.setCreateInfo(user.getName());
        if (quotationService.insert(quotation)) {
            jsonObject.put("success", true);
        } else {
            jsonObject.put("success", false);
        }
        return jsonObject;
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(ModelMap map, @RequestParam(required = false) Integer id) {
        Quotation q = quotationService.selectById(id);
        String inspectionType = q.getInspectionType();
        String[] inspectionTypes = inspectionType.split(",");
        q.setInspectionTypes(inspectionTypes);
        User specifiedUser = userService.selectById(q.getSurveyorUId());
        map.put("quotation", q);
        map.put("inspectionType", getInspectionTypeDict());
        map.put("shipType", getShipTypeDict());
        map.put("specifiedUser", specifiedUser);
        return "goshipsurvey/op/quotation/edit";
    }


    @RequestMapping(value = "/editComplete", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject editComplete(Quotation quotation) {
        JSONObject jsonObject = new JSONObject();
        quotation.setUpdateInfo(getCurrentUser().getName());
        jsonObject.put("success", quotationService.updateById(quotation));
        return jsonObject;
    }

    /**
     * op询价前，选择指定的surveyor能看到
     *
     * */
    @RequestMapping(value = "/selectSurveyor", method = RequestMethod.GET)
    public String selectSurveyor(ModelMap map, @RequestParam(required = false) Integer id) {
        map.put("id",id);
        return "goshipsurvey/op/quotation/selectSurveyor";
    }

    @Transactional
    @RequestMapping(value = "/startQuotation", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject startQuotation(@RequestParam(required = false) int id,String surveyorUIds) {
        JSONObject jsonObject = new JSONObject();
        Quotation quotation = quotationService.selectById(id);
        quotation.setQuotationStatus(Const.QUOTATION_ING);
        quotation.setUpdateInfo(getCurrentUser().getName());
        quotation.setSurveyorUIds(surveyorUIds);
        if (quotationService.updateById(quotation)) {
            keyword1 += "您好，当前有新的船舶检验通知,请及时查看";
            List<String> gzhOpenIds = userSurveyorService.selectGzhOpenIdsBySurveyorUIds(surveyorUIds);
            for (String g : gzhOpenIds) {
                template.infomationNotice(g, Const.INQUIRY_NOTICE, url, first, keyword1, keyword2, remark);
            }
            jsonObject.put("success", true);
            /*String title = "本区域有可进行租还船检验船舶,请及时查看";
            Integer surveyorUId = quotation.getSurveyorUId();
            if (surveyorUId == null) {
                messageService.publicAll(title, title, Const.USER_TYPE_SURVEYOR_COMPANY);
            } else {
                messageService.publicOne(surveyorUId, title, title);
            }*/
        } else {
            jsonObject.put("success", false);
        }
        return jsonObject;
    }

    @RequestMapping(value = "/deleteById")
    @ResponseBody
    public JSONObject deleteById(@RequestParam(required = false) Integer id) {
        Quotation q = new Quotation();
        q.setId(id);
        q.setDelFlag(Const.DEL_FLAG_DELETE);
        JSONObject jsonObject = new JSONObject();
        if (quotationService.updateSelectiveById(q)) {
            jsonObject.put("status", 1);
        } else {
            jsonObject.put("status", 0);
        }
        return jsonObject;
    }
}