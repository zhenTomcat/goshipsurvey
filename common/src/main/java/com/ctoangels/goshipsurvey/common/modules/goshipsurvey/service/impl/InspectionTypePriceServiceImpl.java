package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Dict;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.util.Tools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.InspectionTypePriceMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.InspectionTypePrice;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IInspectionTypePriceService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.List;

/**
 * InspectionTypePrice 表数据服务层接口实现类
 */
@Service
public class InspectionTypePriceServiceImpl extends SuperServiceImpl<InspectionTypePriceMapper, InspectionTypePrice> implements IInspectionTypePriceService {

    @Autowired
    IDictService dictService;

    @Override
    public List<InspectionTypePrice> getALl() {
        EntityWrapper<InspectionTypePrice> ew = new EntityWrapper<>();
        ew.where("del_flag = 0");
        List<InspectionTypePrice> pricesList = selectList(ew);
        List<Dict> typesDict = dictService.getListByType("emailQuotation");
        for (InspectionTypePrice inspectionTypePrice : pricesList) {
            inspectionTypePrice.setTypesText(Tools.transferValuesToDes(inspectionTypePrice.getTypes(), typesDict));
        }
        return selectList(ew);
    }
}