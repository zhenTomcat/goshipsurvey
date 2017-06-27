package com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.TechnicalModel;
import com.baomidou.mybatisplus.mapper.AutoMapper;

/**
 *
 * TechnicalModel 表数据库控制层接口
 *
 */
public interface TechnicalModelMapper extends AutoMapper<TechnicalModel> {

    TechnicalModel selectModelByCatagoryAndTitle(String catagory,String title);

}