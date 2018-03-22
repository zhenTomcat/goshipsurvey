package com.ctoangels.goshipsurvey.common.modules.sys.service;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.framework.service.ISuperService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Surveyor;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Role;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import me.chanjar.weixin.mp.bean.result.WxMpUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by dongs on 2016/11/21.
 */
public interface UserService extends ISuperService<User> {
    List<Role> getRoles(Integer userId);

    void editRole(User user);

    boolean isNameExist(String loginName);

    JSONObject editPassword(String password, String oldPassword);

    User getTryUser();

    List<Integer> getAllId(Integer role);

    List<User> getSurveyorList(String keyword);

    User getUserByUnionId(String unionId);

    User registerWeiXinUser(WxMpUser wxMpUser);

    boolean existUnionId(String unionId);

    Boolean insertByInfo(JSONObject jsonObject,Surveyor surveyor,WxMpUser wxMpUser);
}
