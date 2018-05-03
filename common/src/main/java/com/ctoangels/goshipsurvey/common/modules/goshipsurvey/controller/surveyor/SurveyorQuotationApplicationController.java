package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.controller.surveyor;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationApplicationService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseQuotation;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Surveyor;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IPurchaseQuotationService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IShipDetailService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ISurveyorService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.UserSurveyor;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IMessageService;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IUserSurveyorService;
import com.ctoangels.goshipsurvey.common.modules.sys.service.UserService;
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

    private static String url= "pages/home/home";
    private static String first= "您好：";
    private static String keyword1= "您申请的船舶检验，正在处理";
    private static String keyword2= "待审核";
    private static String remark= "点击此条消息查看更详细的信息";

    @Autowired
    IQuotationApplicationService quotationApplicationService;

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

    @Autowired
    private ISurveyorService surveyorService;

    @Autowired
    private IQuotationService quotationService;


    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject add(QuotationApplication qa) {
        JSONObject jsonObject = new JSONObject();
        qa.setUserId(getCurrentUser().getId());
        qa.setCreateInfo(getCurrentUser().getName());
        qa.setApplicationStatus(Const.QUO_APPLY_ING);
        UserSurveyor userSurveyor= userSurveyorService.selectByUserId(getCurrentUser().getId());
        Surveyor surveyor=surveyorService.selectById(userSurveyor.getSurveyorId());
        qa.setSurveyId(surveyor.getId());

        Quotation quotation=quotationService.selectById(qa.getQuotationId());
        if (quotation.getTotalPrice()!=null){
            qa.setTotalPrice(quotation.getTotalPrice());
        }
        if (quotationApplicationService.insert(qa)) {
            String gzhOpenId= userSurveyor.getGzhOpenId();
            template.infomationNotice(gzhOpenId, Const.CHECK_REMIND,url,first,keyword1,keyword2,remark);
            jsonObject.put("success", true);
//            messageService.addApplicationMessage(qa.getId());
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
            UserSurveyor userSurveyor= userSurveyorService.selectByUserId(getCurrentUser().getId());
            String gzhOpenId= userSurveyor.getGzhOpenId();
            String keyword1="您已经取消了该船舶的检验申请";
            String keyword2="岙洋船务";
            template.infomationNotice(gzhOpenId, Const.CHECK_REMIND,url,first,keyword1,keyword2,remark);
        } else {
            jsonObject.put("status", 0);
        }
        return jsonObject;
    }
}