package com.ctoangels.goshipsurvey.common.modules.sys.service.impl;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Quotation;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.QuotationApplication;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.InspectionMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.QuotationApplicationMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.QuotationMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Comment;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseInspection;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseQuotation;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.ShipDetail;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.CommentMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.PurchaseInspectionMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.PurchaseQuotationMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.ShipDetailMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.RightController;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.mapper.UserMapper;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.MyWebSocketHandler;
import com.ctoangels.goshipsurvey.common.util.MyWebSocketMessage;
import com.ctoangels.goshipsurvey.common.util.Tools;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.sys.mapper.MessageMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Message;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IMessageService;
import com.baomidou.framework.service.impl.SuperServiceImpl;
import org.springframework.web.socket.TextMessage;

import java.util.ArrayList;
import java.util.List;

/**
 * Message 表数据服务层接口实现类
 */
@Service
public class MessageServiceImpl extends SuperServiceImpl<MessageMapper, Message> implements IMessageService {

    private static Logger logger = LoggerFactory.getLogger(MessageServiceImpl.class);

    @Autowired
    UserMapper userMapper;

    @Autowired
    MessageMapper messageMapper;

    @Autowired
    CommentMapper commentMapper;

    @Autowired
    QuotationMapper quotationMapper;

    @Autowired
    InspectionMapper inspectionMapper;

    @Autowired
    PurchaseQuotationMapper purchaseQuotationMapper;

    @Autowired
    PurchaseInspectionMapper purchaseInspectionMapper;

    @Autowired
    ShipDetailMapper shipDetailMapper;

    @Autowired
    QuotationApplicationMapper quotationApplicationMapper;

    @Autowired
    MyWebSocketHandler myWebSocketHandler;

    @Override
    @Async
    public void publicAll(String title, String content, Integer type) {
        Tools.loggerThreadId("publicAll");
        List<Integer> ids = userMapper.getAllId(type);
        publicSome(ids, title, content);
    }

    @Override
    @Async
    public void publicSome(List<Integer> ids, String title, String content) {
        Tools.loggerThreadId("publicSome");
        logger.info("publicMessage" + Thread.currentThread().getId());
        if (ids != null && ids.size() > 0) {
            User u = (User) SecurityUtils.getSubject().getPrincipal();
            Integer sender = u.getId();
            ids.remove(sender);
            List<Message> list = new ArrayList<>();
            for (Integer id : ids) {
                Message m = new Message();
                m.setReceiver(id);
                m.setSender(sender);
                m.setTitle(title);
                m.setContent(content);
                m.setReadStatus(Const.MESSAGE_UNREAD);
                m.setCreateInfo(u.getName());
                list.add(m);
            }
            messageMapper.insertBatch(list);
        }
        myWebSocketHandler.sendManyUsers("您有一条新消息", true, ids);
    }

    @Override
    @Async
    public void publicOne(Integer id, String title, String content) {
        if (id != null) {
            Tools.loggerThreadId("publicOne");
            User u = (User) SecurityUtils.getSubject().getPrincipal();
            Integer sender = u.getId();
            Message m = new Message();
            m.setReceiver(id);
            m.setSender(sender);
            m.setTitle(title);
            m.setContent(content);
            m.setReadStatus(Const.MESSAGE_UNREAD);
            m.setCreateInfo(u.getName());
            messageMapper.insert(m);
            myWebSocketHandler.sendOneUser(new MyWebSocketMessage("您有一条消息", getUnreadMessageCount(id), true), id);
        }
    }

    @Override
    @Async
    public void commentMessage(int id, int type) {
        Tools.loggerThreadId("commentMessage");
        Comment c = commentMapper.selectById(id);
        String title = "";
        int receiver = 1;
        if (Const.PROJECT_TYPE_HIRE == c.getProType()) {
            Inspection i = inspectionMapper.selectById(c.getInspectionId());
            String shipName = quotationMapper.selectById(i.getQuotationId()).getShipName();
            if (Const.MESSAGE_OP_TO_COMPANY == type) {
                title = shipName + "船租还船检验,船东已对本次验船做出评价";
                receiver = c.getCompanyId();
            } else if (Const.MESSAGE_COMPANY_TO_OP == type) {
                title = shipName + "船租还船检验,验船师已对本次验船做出评价";
                receiver = c.getOpId();
            }
        } else if (Const.PROJECT_TYPE_PURCHASE == c.getProType()) {
            PurchaseInspection pi = purchaseInspectionMapper.selectById(c.getInspectionId());
            String shipName = shipDetailMapper.selectById(pi.getShipId()).getShipName();
            if (Const.MESSAGE_OP_TO_COMPANY == type) {
                title = shipName + "船买卖船勘验,船东已对本次验船做出评价";
                receiver = c.getCompanyId();
            } else if (Const.MESSAGE_COMPANY_TO_OP == type) {
                title = shipName + "船买卖船勘验,验船师已对本次验船做出评价";
                receiver = c.getOpId();
            }
        }
        publicOne(receiver, title, title);
    }

    @Override
    @Async
    public void addApplicationMessage(int id) {
        Tools.loggerThreadId("addApplicationMessage");
        QuotationApplication qa = quotationApplicationMapper.selectById(id);
        if (Const.PROJECT_TYPE_HIRE == qa.getType()) {
            Quotation q = quotationMapper.selectById(qa.getQuotationId());
            String title = q.getShipName() + "船租还船检验,已有验船师申请检验";
            publicOne(q.getOpId(), title, title);
        } else {
            PurchaseQuotation q = purchaseQuotationMapper.selectById(qa.getQuotationId());
            String title = shipDetailMapper.selectById(q.getShipId()).getShipName() + "船买卖船检验,已有验船师申请勘验";
            publicOne(q.getOpId(), title, title);
        }
    }

    @Override
    @Async
    public void publicPreInspectionEnd(int inspectionId) {
        PurchaseInspection i = purchaseInspectionMapper.selectById(inspectionId);
        String shipName = shipDetailMapper.selectById(i.getShipId()).getShipName();
        String title = shipName + "船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价";
        publicOne(i.getOpId(), title, title);
    }

    @Override
    public int getUnreadMessageCount(Integer userId) {
        return messageMapper.getUnreadMessageCount(userId);
    }
}