package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.DictMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Dict;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.List;

/**
 * Dict 表数据服务层接口实现类
 */
@Service
public class DictServiceImpl extends SuperServiceImpl<DictMapper, Dict> implements IDictService {

    @Autowired
    DictMapper dictMapper;

    @Override
    public List<Dict> getListByType(String type) {
        EntityWrapper<Dict> ew = new EntityWrapper<>();
        ew.addFilter("type={0}", type);
        ew.orderBy("value");
        return dictMapper.selectList(ew);
    }

    @Override
    public String getDesByTypeAndValue(String type, String value) {
        Dict dict = new Dict(type, value);
        return dictMapper.selectOne(dict).getDes();
    }
}