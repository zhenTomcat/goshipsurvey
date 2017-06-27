package com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Grade;
import com.baomidou.mybatisplus.mapper.AutoMapper;

import java.util.List;

/**
 *
 * Grade 表数据库控制层接口
 *
 */
public interface GradeMapper extends AutoMapper<Grade> {


    List<Grade> selectGradesByParentItem(String parentItem, Integer reportId);

    Grade selectGradeByItem(String parentItem,Integer reportId,Integer parentRank);

    List<Grade> getListByParentItem(String parentItem,Integer reportId);
}