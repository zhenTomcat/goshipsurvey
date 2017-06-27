package com.ctoangels.goshipsurvey.common.modules.prepurchase.controller;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IInspectionService;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IQuotationService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Comment;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ICommentService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IPurchaseInspectionService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ISurveyorService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl.PurchaseInspectionServiceImpl;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IMessageService;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Comment 控制层
 */
@Controller
@RequestMapping(value = "comment")
public class CommentController extends BaseController {

    @Autowired
    ICommentService commentService;

    @Autowired
    ISurveyorService surveyorService;

    @Autowired
    IInspectionService inspectionService;

    @Autowired
    IQuotationService quotationService;

    @Autowired
    IMessageService messageService;

    @Autowired
    IPurchaseInspectionService purchaseInspectionService;


    @RequestMapping(value = "/editComment", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject addPoint(Comment comment) {
        JSONObject jsonObject = new JSONObject();
        comment.setUpdateInfo(getCurrentUser().getName());
        if (commentService.updateSelectiveById(comment)) {
            jsonObject.put("success", true);
            if (comment.getOpGrade() != null) {
                surveyorService.updatePastEvaluation(comment.getSurveyorId());
                messageService.commentMessage(comment.getId(), Const.MESSAGE_OP_TO_COMPANY);
            } else {
                messageService.commentMessage(comment.getId(), Const.MESSAGE_COMPANY_TO_OP);
            }
        } else {
            jsonObject.put("success", false);
        }
        return jsonObject;
    }

}