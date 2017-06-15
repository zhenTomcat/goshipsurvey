package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.GradeConditionMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.GradeCondition;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IGradeConditionService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.List;

/**
 *
 * GradeCondition 表数据服务层接口实现类
 *
 */
@Service
public class GradeConditionServiceImpl extends SuperServiceImpl<GradeConditionMapper, GradeCondition> implements IGradeConditionService {

    @Autowired
    private GradeConditionMapper gradeConditionMapper;

    @Override
    public List<GradeCondition> selectGradeConditionByType(String type) {
        EntityWrapper<GradeCondition> ew=new EntityWrapper<>();
        ew.addFilter("type={0}",type);
        List<GradeCondition> gradeConditions=gradeConditionMapper.selectList(ew);
        return gradeConditions;
    }
}