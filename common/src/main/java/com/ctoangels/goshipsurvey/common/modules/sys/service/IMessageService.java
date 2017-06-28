package com.ctoangels.goshipsurvey.common.modules.sys.service;

import com.ctoangels.goshipsurvey.common.modules.sys.entity.Message;
import com.baomidou.framework.service.ISuperService;
import com.ctoangels.goshipsurvey.common.util.Const;

import java.util.List;

/**
 * Message 表数据服务层接口
 */
public interface IMessageService extends ISuperService<Message> {

    //群发
    void publicAll(String title, String content, Integer type);

    //发个一些人
    void publicSome(List<Integer> ids, String title, String content);

    //单独发
    void publicOne(int id, String title, String content);

    void commentMessage(int id, int type);

    void addApplicationMessage(int id);

    void publicPreInspectionEnd(int inspectionId);

    int getUnreadMessageCount(Integer userId);

}