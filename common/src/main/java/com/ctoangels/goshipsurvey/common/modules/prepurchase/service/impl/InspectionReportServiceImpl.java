package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Dict;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Defect;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.PurchaseInspection;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.DefectMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IDefectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.InspectionReportMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.InspectionReport;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IInspectionReportService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.List;

/**
 *
 * InspectionReport 表数据服务层接口实现类
 *
 */
@Service
public class InspectionReportServiceImpl extends SuperServiceImpl<InspectionReportMapper, InspectionReport> implements IInspectionReportService {


    @Autowired
    private InspectionReportMapper inspectionReportMapper;

    @Autowired
    private IDefectService defectService;

    @Autowired
    private IDictService dictService;

    @Override
    public InspectionReport selectByPurchaseInspectionId(Integer purchaseInspectionId) {
        InspectionReport report=inspectionReportMapper.selectByPurchaseInspectionId(purchaseInspectionId);

        List<Dict> shipTypeDict = dictService.getListByType("shipType");

        report.getShipDetail().setShipType(shipTypeDict.get(Integer.parseInt(report.getShipDetail().getShipType())-1).getDes());
        return report;
    }

    @Override
    public Boolean updateDefect(InspectionReport inspectionReport) {
        //将页面删除的给删掉
        EntityWrapper<Defect> ew=new EntityWrapper<>();
        ew.addFilter("inspection_report_id={0}",inspectionReport.getId());
        List<Defect> defects=defectService.selectList(ew);
        for (Defect defect:defects){
            defectService.deleteSelective(defect);
        }

        List<Defect> defects1 =inspectionReport.getDefects();
        for(Defect defect:defects1){
            defectService.insertOrUpdate(defect);
        }
        return true;
    }
}