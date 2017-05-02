package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.PortMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Port;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IPortService;
import com.baomidou.framework.service.impl.SuperServiceImpl;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Port 表数据服务层接口实现类
 */
@Service
public class PortServiceImpl extends SuperServiceImpl<PortMapper, Port> implements IPortService {

    @Autowired
    PortMapper portMapper;

    @Override
    public List<Port> searchByPortEn(String keyword) {
        EntityWrapper<Port> ew = new EntityWrapper<>();
        if (!StringUtils.isEmpty(keyword)) {
            ew.like("port_en", keyword);
        }
        ew.setSqlSelect("id,port_en,country_code");
        Page p = new Page<>(1, 10);
        return portMapper.selectPage(p, ew);
    }
}