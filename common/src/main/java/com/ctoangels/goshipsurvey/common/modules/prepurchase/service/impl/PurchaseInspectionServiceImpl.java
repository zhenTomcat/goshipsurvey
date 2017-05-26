package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.ShipDetail;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.ShipDetailMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.PurchaseInspectionMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseInspection;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IPurchaseInspectionService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.List;

/**
 *
 * PurchaseInspection 表数据服务层接口实现类
 *
 */
@Service
public class PurchaseInspectionServiceImpl extends SuperServiceImpl<PurchaseInspectionMapper, PurchaseInspection> implements IPurchaseInspectionService {

    @Autowired
    private PurchaseInspectionMapper purchaseInspectionMapper;

    @Autowired
    private ShipDetailMapper shipDetailMapper;

    @Override
    public List<PurchaseInspection> selectByInspection(Integer id) {

        List<PurchaseInspection>inspections=purchaseInspectionMapper.selectByInspection(id);
        return inspections;
    }
}