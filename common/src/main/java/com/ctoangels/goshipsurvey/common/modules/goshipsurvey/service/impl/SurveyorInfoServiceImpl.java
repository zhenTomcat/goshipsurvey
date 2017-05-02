package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.impl;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Inspection;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.InspectionMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.SurveyorInfoMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.SurveyorInfo;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.ISurveyorInfoService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 * SurveyorInfo 表数据服务层接口实现类
 */
@Service
public class SurveyorInfoServiceImpl extends SuperServiceImpl<SurveyorInfoMapper, SurveyorInfo> implements ISurveyorInfoService {

    @Autowired
    SurveyorInfoMapper surveyorInfoMapper;

    @Autowired
    InspectionMapper inspectionMapper;

    @Override
    public boolean editInfo(int id, String type, String url) {

        User user = (User) SecurityUtils.getSubject().getPrincipal();
        String userName = user.getName();

        SurveyorInfo surveyorInfo = new SurveyorInfo();
        surveyorInfo.setId(id);
        surveyorInfo = surveyorInfoMapper.selectById(id);
        surveyorInfo.setUpdateInfo(userName);
        if ("passport".equals(type)) {
            surveyorInfo.setPassportUrl(url);
        } else if ("loi".equals(type)) {
            surveyorInfo.setLoiUrl(url);
        } else if ("report".equals(type)) {
            surveyorInfo.setReportUrl(url);
            Inspection inspection = new Inspection();
            inspection.setId(surveyorInfo.getInspectionId());
            inspection.setInspectionStatus(Const.INSPECTION_REPORT_OK);
            inspection.setUpdateInfo(userName);
            inspectionMapper.updateSelectiveById(inspection);
        }

        if (surveyorInfoMapper.updateById(surveyorInfo) < 0) {
            return false;
        }

        return true;
    }
}