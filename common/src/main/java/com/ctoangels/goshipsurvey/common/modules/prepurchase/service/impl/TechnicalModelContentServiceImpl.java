package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.TechnicalModel;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.TechnicalModelMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ITechnicalModelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.TechnicalModelContentMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.TechnicalModelContent;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ITechnicalModelContentService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.List;

/**
 *
 * TechnicalModelContent 表数据服务层接口实现类
 *
 */
@Service
public class TechnicalModelContentServiceImpl extends SuperServiceImpl<TechnicalModelContentMapper, TechnicalModelContent> implements ITechnicalModelContentService {


    @Autowired
    private TechnicalModelMapper technicalModelMapper;

    @Autowired
    private TechnicalModelContentMapper technicalModelContentMapper;


    @Override
    public List<TechnicalModelContent> selectByCatagoryAndTitle(String catagory, String title) {

        TechnicalModel technicalModel=technicalModelMapper.selectModelByCatagoryAndTitle(catagory,title);


        EntityWrapper<TechnicalModelContent> ew=new EntityWrapper<>();
        ew.addFilter("technical_model_id={0}",technicalModel.getId());
        List<TechnicalModelContent> contents=technicalModelContentMapper.selectList(ew);
        return contents;
    }
}