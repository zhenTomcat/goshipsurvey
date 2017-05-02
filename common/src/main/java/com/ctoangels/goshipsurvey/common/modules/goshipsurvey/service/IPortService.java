package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Port;
import com.baomidou.framework.service.ISuperService;

import java.util.List;

/**
 * Port 表数据服务层接口
 */
public interface IPortService extends ISuperService<Port> {

    List<Port> searchByPortEn(String keyword);


}