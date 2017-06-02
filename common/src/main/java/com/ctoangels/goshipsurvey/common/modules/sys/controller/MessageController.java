package com.ctoangels.goshipsurvey.common.modules.sys.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Surveyor;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Message;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IMessageService;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.DateUtil;
import com.ctoangels.goshipsurvey.common.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
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
 * Message 控制层
 */
@Controller
@RequestMapping(value = "message")
public class MessageController extends BaseController {

    @Autowired
    IMessageService messageService;


    @RequestMapping(method = RequestMethod.GET)
    public String list(ModelMap map) {
//        String name = getCurrentUser().getName();
//        int id = getCurrentUser().getId();
//        List<Message> list = new ArrayList<>();
//        for (int i = 0; i < 25; i++) {
//            Message message = new Message();
//            message.setCreateInfo(name);
//            message.setReceiver(id);
//            message.setSender(id);
//            message.setReadStatus(i % 2);
//            message.setTitle("title" + i);
//            message.setContent("content" + i);
//            if (i % 4 == 0) {
//                long a = new Date().getTime();
//                int b = (int) a / 1000;
//                message.setTopTime(b);
//            } else {
//                message.setTopTime(Const.MESSAGE_NOT_TOP);
//            }
//            list.add(message);
//        }
//        messageService.insertBatch(list);
        return "sys/message/list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getList(@RequestParam(required = false) String title,
                              @RequestParam(required = false) Date dateStart,
                              @RequestParam(required = false) Date dateEnd,
                              @RequestParam(required = false) Integer readStatus) {
        EntityWrapper<Message> ew = new EntityWrapper<>();
        ew.addFilter("receiver = {0} and del_flag = {1}", getCurrentUser().getId(), Const.DEL_FLAG_NORMAL);
        if (StringUtils.isNotEmpty(title)) {
            ew.like("title", title);
        }
        if (dateStart != null) {
            ew.addFilter("create_date >={0}", DateUtil.formatDate(dateStart, "yyyy-MM-dd"));
        }
        if (dateEnd != null) {
            ew.addFilter("create_date <={0}", DateUtil.formatDate(dateEnd, "yyyy-MM-dd"));
        }
        if (readStatus != null) {
            ew.addFilter("read_status ={0}", readStatus);
        }
        ew.orderBy("top_time", false);
        ew.orderBy("create_date", false);
        Page<Message> page = messageService.selectPage(getPage(), ew);
        return jsonPage(page);
    }

    @RequestMapping(value = "/toTop", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject toTop(@RequestParam(required = false) Integer id,
                            @RequestParam(required = false) Boolean toTop) {
        JSONObject jsonObject = new JSONObject();
        if (id != null && toTop != null) {
            Message message = new Message();
            message.setId(id);
            if (toTop) {
                message.setTopTime(DateUtil.formatDate(new Date(), "yyyyMMddHHmmss"));
            } else {
                message.setTopTime("0");
            }
            jsonObject.put("success", messageService.updateSelectiveById(message));
        }
        return jsonObject;
    }

    @RequestMapping(value = "/batchDelete")
    @ResponseBody
    public JSONObject batchDelete(@RequestParam(required = false) String ids) {
        JSONObject result = new JSONObject();
        if (!StringUtils.isEmpty(ids)) {
            List<Message> list = messageService.selectBatchIds(Arrays.asList(ids.split(",")));
            for (Message m : list) {
                m.setDelFlag(Const.DEL_FLAG_DELETE);
            }
            if (messageService.updateBatchById(list)) {
                result.put("status", 1);
            } else {
                result.put("status", 0);
            }
        }
        return result;
    }

    @RequestMapping(value = "/batchRead")
    @ResponseBody
    public JSONObject batchRead(@RequestParam(required = false) String ids) {
        JSONObject result = new JSONObject();
        if (!StringUtils.isEmpty(ids)) {
            List<Message> list = messageService.selectBatchIds(Arrays.asList(ids.split(",")));
            for (Message m : list) {
                m.setReadStatus(Const.MESSAGE_READ);
                m.setReadDate(new Date());
            }
            if (messageService.updateBatchById(list)) {
                result.put("status", 1);
            } else {
                result.put("status", 0);
            }
        }
        return result;
    }

    @RequestMapping(value = "/batchUnread")
    @ResponseBody
    public JSONObject batchUnread(@RequestParam(required = false) String ids) {
        JSONObject result = new JSONObject();
        if (!StringUtils.isEmpty(ids)) {
            List<Message> list = messageService.selectBatchIds(Arrays.asList(ids.split(",")));
            for (Message m : list) {
                m.setReadStatus(Const.MESSAGE_UNREAD);
            }
            if (messageService.updateBatchById(list)) {
                result.put("status", 1);
            } else {
                result.put("status", 0);
            }
        }
        return result;
    }


    @RequestMapping(value = "/info", method = RequestMethod.GET)
    public String info(ModelMap map, @RequestParam(required = false) Integer id) {
        Message message = messageService.selectById(id);
        map.put("message", message);
        return "sys/message/info";
    }

}