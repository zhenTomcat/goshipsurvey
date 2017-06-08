package com.ctoangels.goshipsurvey.common.modules.prepurchase.controller;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Comment;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ICommentService;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
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

    @RequestMapping(value = "/editComment", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject addPoint(Comment comment) {
        JSONObject jsonObject = new JSONObject();
        comment.setUpdateInfo(getCurrentUser().getName());
        jsonObject.put("success", commentService.updateSelectiveById(comment));
        return jsonObject;
    }

}