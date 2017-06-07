package com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.TechnicalAppendix;
import com.baomidou.mybatisplus.mapper.AutoMapper;

import java.util.List;

/**
 *
 * TechnicalAppendix 表数据库控制层接口
 *
 */
public interface TechnicalAppendixMapper extends AutoMapper<TechnicalAppendix> {

   List<TechnicalAppendix> selectListByReportId(Integer reportId,String catagory);

}