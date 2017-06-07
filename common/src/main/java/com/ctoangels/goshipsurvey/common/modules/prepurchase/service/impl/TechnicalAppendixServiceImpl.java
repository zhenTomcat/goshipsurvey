package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.InspectionReport;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.TechnicalAppendixInfo;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IInspectionReportService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ITechnicalAppendixInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.TechnicalAppendixMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.TechnicalAppendix;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ITechnicalAppendixService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.List;

/**
 *
 * TechnicalAppendix 表数据服务层接口实现类
 *
 */
@Service
public class TechnicalAppendixServiceImpl extends SuperServiceImpl<TechnicalAppendixMapper, TechnicalAppendix> implements ITechnicalAppendixService {


    @Autowired
    private ITechnicalAppendixService technicalAppendixService;

    @Autowired
    private ITechnicalAppendixInfoService technicalAppendixInfoService;

    @Autowired
    private IInspectionReportService iInspectionReportService;

    @Autowired
    private TechnicalAppendixMapper technicalAppendixMapper;

    @Override
    public Boolean createTechnicalAppendix(Integer reportId) {
            for (int i = 0; i < 15; i++) {
                TechnicalAppendix technicalAppendix = new TechnicalAppendix();
                technicalAppendix.setInspectionReportId(reportId);
                if (i == 0) {

                    technicalAppendix.setCatagory("Navigation & Communications Equipments");
                    technicalAppendix.setTitle1("Equipmet");
                    technicalAppendix.setTitle2("Maker");
                    technicalAppendix.setTitle3("Type");
                    technicalAppendixService.insert(technicalAppendix);
                    continue;
                } else if (i == 1) {
                    technicalAppendix.setCatagory("Cargo hold capacities");
                    technicalAppendix.setTitle1("Hold #");
                    technicalAppendix.setTitle2("(m3)");
                    technicalAppendix.setTitle3(null);
                    technicalAppendixService.insert(technicalAppendix);
                    continue;
                } else if (i == 2) {
                    technicalAppendix.setCatagory("Hatch dimensions");
                    technicalAppendix.setTitle1("Hold #");
                    technicalAppendix.setTitle2("m×m");
                    technicalAppendix.setTitle3(null);
                    technicalAppendixService.insert(technicalAppendix);
                    continue;
                } else if (i == 3) {
                    technicalAppendix.setCatagory("Cargo tank capacities");
                    technicalAppendix.setTitle1("Tank #");
                    technicalAppendix.setTitle2("Frames");
                    technicalAppendix.setTitle3("(m3)");
                    technicalAppendixService.insert(technicalAppendix);
                    continue;
                } else if (i == 4) {
                    technicalAppendix.setCatagory("Vessel tank capacity");
                    technicalAppendix.setTitle1("Ballast Tank #");
                    technicalAppendix.setTitle2("Frames");
                    technicalAppendix.setTitle3("(m3)");
                    technicalAppendixService.insert(technicalAppendix);
                    continue;
                } else if (i == 5) {
                    technicalAppendix.setCatagory("Vessel tank capacity");
                    technicalAppendix.setTitle1("Heavy Fuel Oil Capacity Tank #");
                    technicalAppendix.setTitle2("Frames");
                    technicalAppendix.setTitle3("(m3)");
                    technicalAppendixService.insert(technicalAppendix);
                    continue;
                } else if (i == 6) {
                    technicalAppendix.setCatagory("Vessel tank capacity");
                    technicalAppendix.setTitle1("Diesel Oil Capacity  Tank #");
                    technicalAppendix.setTitle2("Frames");
                    technicalAppendix.setTitle3("(m3)");
                    technicalAppendixService.insert(technicalAppendix);
                    continue;
                } else if (i == 7) {
                    technicalAppendix.setCatagory("Vessel tank capacity");
                    technicalAppendix.setTitle1("Fresh Water Capacity Tank #");
                    technicalAppendix.setTitle2("Frames");
                    technicalAppendix.setTitle3("(m3)");
                    technicalAppendixService.insert(technicalAppendix);
                    continue;
                } else if (i == 8) {
                    technicalAppendix.setCatagory("Vessel tank capacity");
                    technicalAppendix.setTitle1("Lube Oil Capacity Tank #");
                    technicalAppendix.setTitle2("Frames");
                    technicalAppendix.setTitle3("(m3)");
                    technicalAppendixService.insert(technicalAppendix);
                    continue;
                } else if (i == 9) {
                    technicalAppendix.setCatagory("Vessel tank capacity");
                    technicalAppendix.setTitle1("Miscellaneous Tanks Capacity Tank #");
                    technicalAppendix.setTitle2("Frames");
                    technicalAppendix.setTitle3("(m3)");
                    technicalAppendixService.insert(technicalAppendix);
                    continue;
                } else if (i == 10) {
                    technicalAppendix.setCatagory("Propulsion machinery");
                    technicalAppendix.setTitle1("Tank #");
                    technicalAppendix.setTitle2("Frames");
                    technicalAppendix.setTitle3("(m3)");
                    technicalAppendixService.insert(technicalAppendix);
                    continue;
                } else if (i == 11) {
                    technicalAppendix.setCatagory("Auxilliaries machinery");
                    technicalAppendix.setTitle1("Tank #");
                    technicalAppendix.setTitle2("Frames");
                    technicalAppendix.setTitle3("(m3)");
                    technicalAppendixService.insert(technicalAppendix);
                    continue;
                } else if (i == 12) {
                    technicalAppendix.setCatagory("Main deck and equipment");
                    technicalAppendix.setTitle1("Tank #");
                    technicalAppendix.setTitle2("Frames");
                    technicalAppendix.setTitle3("(m3)");
                    technicalAppendixService.insert(technicalAppendix);
                    continue;
                } else if (i == 13) {
                    technicalAppendix.setCatagory("Cargo handling equipment");
                    technicalAppendix.setTitle1("Tank #");
                    technicalAppendix.setTitle2("Frames");
                    technicalAppendix.setTitle3("(m3)");
                    technicalAppendixService.insert(technicalAppendix);
                    continue;
                } else if (i == 14) {
                    technicalAppendix.setCatagory("Lifesaving & firefighting equipment");
                    technicalAppendix.setTitle1("Tank #");
                    technicalAppendix.setTitle2("Frames");
                    technicalAppendix.setTitle3("(m3)");
                    technicalAppendixService.insert(technicalAppendix);
                    continue;
                }

                }
            return null;
        }

    @Override
    public Boolean insertOrUpdateTechnicalAppendix(TechnicalAppendix technicalAppendix) {
        EntityWrapper<TechnicalAppendixInfo> ew=new EntityWrapper<>();
        ew.addFilter("technical_appendix_id={0}",technicalAppendix.getId());
        List<TechnicalAppendixInfo> infos=technicalAppendixInfoService.selectList(ew);

        if(infos.size()>0){
            for(TechnicalAppendixInfo info:infos){
                technicalAppendixInfoService.deleteById(info);
            }
        }

        if(technicalAppendix.getTechnicalAppendixInfo()==null){
            return false;
        }



        List<TechnicalAppendixInfo> technicalAppendixInfos=technicalAppendix.getTechnicalAppendixInfo();

        for(TechnicalAppendixInfo info:technicalAppendixInfos){
            info.setTechnicalAppendixId(technicalAppendix.getId());
            technicalAppendixInfoService.insert(info);
        }


        return null;
    }

    @Override
    public List<TechnicalAppendix> selectListByReportId(Integer reportId,String catagory) {
       List<TechnicalAppendix> technicalAppendices= technicalAppendixMapper.selectListByReportId(reportId,catagory);
        return technicalAppendices;
    }
}