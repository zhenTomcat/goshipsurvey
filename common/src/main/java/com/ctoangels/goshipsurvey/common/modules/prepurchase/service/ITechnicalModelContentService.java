package com.ctoangels.goshipsurvey.common.modules.prepurchase.service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.TechnicalModelContent;
import com.baomidou.framework.service.ISuperService;

import java.util.List;

/**
 *
 * TechnicalModelContent 表数据服务层接口
 *
 */
public interface ITechnicalModelContentService extends ISuperService<TechnicalModelContent> {

    List<TechnicalModelContent> selectByCatagoryAndTitle(String catagory,String title);
}