package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.SurveyorExperience;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.SurveyorExperienceMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.UserSurveyor;
import com.ctoangels.goshipsurvey.common.modules.sys.mapper.UserSurveyorMapper;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.SurveyorMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Surveyor;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ISurveyorService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.ArrayList;
import java.util.List;

/**
 * Surveyor 表数据服务层接口实现类
 */
@Service
public class SurveyorServiceImpl extends SuperServiceImpl<SurveyorMapper, Surveyor> implements ISurveyorService {

    @Autowired
    SurveyorMapper surveyorMapper;

    @Autowired
    SurveyorExperienceMapper surveyorExperienceMapper;

    @Autowired
    private UserSurveyorMapper userSurveyorMapper;

    @Override
    public List<Surveyor> getSurveyorsByCompanyId(int companyId) {
        EntityWrapper<Surveyor> ew = new EntityWrapper<>();
        ew.addFilter("company_id={0} and del_flag={1}", companyId, Const.DEL_FLAG_NORMAL);
        return surveyorMapper.selectList(ew);
    }

    @Override
    public boolean insertSurveyorWithExperience(Surveyor surveyor, List<SurveyorExperience> experienceList) {
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        surveyor.setCreateInfo(user.getName());
        surveyor.setEmail(surveyor.getEmail().trim());
        surveyor.setTel(surveyor.getTel().trim());
        if (surveyorMapper.insert(surveyor) < 0) {
            return false;
        }
        if (experienceList != null && experienceList.size() > 0) {
            for (SurveyorExperience e : experienceList) {
                e.setSurveyorId(surveyor.getId());
            }
            if (surveyorExperienceMapper.insertBatch(experienceList) < 0) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean updateSurveyorWithExperience(Surveyor surveyor, List<SurveyorExperience> experienceList) {
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        surveyor.setUpdateInfo(user.getName());
        if (surveyorMapper.updateById(surveyor) < 0) {
            return false;
        }
        if (experienceList != null && !experienceList.isEmpty()) {
            List<SurveyorExperience> insertList = new ArrayList<>();
            List<SurveyorExperience> updateList = new ArrayList<>();
            Integer surveyorId = surveyor.getId();
            for (SurveyorExperience e : experienceList) {
                e.setSurveyorId(surveyorId);
                if (e.getId() == null) {
                    insertList.add(e);
                } else {
                    updateList.add(e);
                }
            }
            if (!insertList.isEmpty()) {
                if (surveyorExperienceMapper.insertBatch(insertList) < 0) {
                    return false;
                }
            }
            if (!updateList.isEmpty()) {
                if (surveyorExperienceMapper.updateBatchById(updateList) < 0) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override
    public boolean updatePastEvaluation(Integer surveyorId) {
        return surveyorMapper.updatePastEvaluation(surveyorId) >= 0;
    }

    @Override
    public Surveyor selectByOpenId(String gzhOpenId) {
       UserSurveyor userSurveyor= userSurveyorMapper.selectByGzhOpenId(gzhOpenId);
       Surveyor surveyor= surveyorMapper.selectById(userSurveyor.getUserId());
        return surveyor;
    }

    @Override
    public List<Surveyor> selectBindInfo() {
        return surveyorMapper.selectBindInfo();
    }
}