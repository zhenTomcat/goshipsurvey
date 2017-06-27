package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import org.apache.http.auth.AUTH;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.TechnicalModelMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.TechnicalModel;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ITechnicalModelService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * TechnicalModel 表数据服务层接口实现类
 *
 */
@Service
public class TechnicalModelServiceImpl extends SuperServiceImpl<TechnicalModelMapper, TechnicalModel> implements ITechnicalModelService {

    @Autowired
    private TechnicalModelMapper technicalModelMapper;

}