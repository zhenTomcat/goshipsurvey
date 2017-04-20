package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Dict;
import com.baomidou.framework.service.ISuperService;

import java.util.List;

/**
 * Dict 表数据服务层接口
 */
public interface IDictService extends ISuperService<Dict> {

    List<Dict> getListByType(String type);

    String getDesByTypeAndValue(String type, String value);

}