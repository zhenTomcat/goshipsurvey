package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.surveyor;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationApplicationService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseQuotation;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IPurchaseQuotationService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IShipDetailService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.UserSurveyor;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IMessageService;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IUserSurveyorService;
import com.ctoangels.goshipsurvey.common.modules.wechat.controller.Template;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.Tools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * QuotationApplication 控制层
 */
@Controller
@RequestMapping(value = "surveyor/quotationApplication")
public class SurveyorQuotationApplicationController extends BaseController {

    private static String url= "/pages/selectType/selectType?openid=";
    private static String first= "您好：";
    private static String keyword1= "您申请的船舶检验，正在处理";
    private static String keyword2= "待审批";
    private static String remark= "点击此条消息查看更详细的信息";

    @Autowired
    IQuotationApplicationService quotationApplicationService;

    @Autowired
    IQuotationService quotationService;

    @Autowired
    IPurchaseQuotationService purchaseQuotationService;

    @Autowired
    IShipDetailService shipDetailService;

    @Autowired
    IMessageService messageService;

    @Autowired
    private Template template;

    @Autowired
    private IUserSurveyorService userSurveyorService;


    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject add(QuotationApplication qa) {
        JSONObject jsonObject = new JSONObject();
        qa.setUserId(getCurrentUser().getId());
        qa.setCreateInfo(getCurrentUser().getName());
        qa.setApplicationStatus(Const.QUO_APPLY_ING);
        if (quotationApplicationService.insert(qa)) {
           /* UserSurveyor userSurveyor=userSurveyorService.selectOne(new EntityWrapper<UserSurveyor>().addFilter("user_id={0}",getCurrentUser().getId()));
            if (userSurveyor!=null){
                String gzhOpenId= userSurveyor.getGzhOpenId();
                template.infomationNotice(gzhOpenId, Const.CHECK_REMIND,url,first,keyword1,keyword2,remark);
            }*/

            jsonObject.put("success", true);
            messageService.addApplicationMessage(qa.getId());
        } else {
            jsonObject.put("success", false);
        }
        return jsonObject;
    }

    @RequestMapping(value = "/cancel")
    @ResponseBody
    public JSONObject cancel(@RequestParam(required = false) Integer id) {
        JSONObject jsonObject = new JSONObject();
        QuotationApplication qa = new QuotationApplication();
        qa.setId(id);
        qa.setDelFlag(Const.DEL_FLAG_DELETE);
        qa.setUpdateInfo(getCurrentUser().getName());
        if (quotationApplicationService.updateSelectiveById(qa)) {
            jsonObject.put("status", 1);
        } else {
            jsonObject.put("status", 0);
        }
        return jsonObject;
    }
}