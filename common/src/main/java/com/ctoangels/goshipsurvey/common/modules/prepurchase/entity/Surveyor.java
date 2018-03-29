package com.ctoangels.goshipsurvey.common.modules.prepurchase.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Port;
import com.ctoangels.goshipsurvey.common.util.Const;

/**
 *
 *
 *
 */
@TableName("t_surveyor")
public class Surveyor implements Serializable {

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /** surveyor的id */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**  */
    @TableField(value = "first_name")
    private String firstName;

    /**  */
    private String sex;

    /**  */
    private String nation;

    /** 户籍 */
    @TableField(value = "census_register")
    private String censusRegister;

    /** 出生日期 */
    @TableField(value = "birth_time")
    private String birthTime;

    /** 婚姻状况 */
    @TableField(value = "marital_status")
    private String maritalStatus;

    /** 毕业学校 */
    @TableField(value = "graduate_school")
    private String graduateSchool;

    /** 学历 */
    private String education;

    /** 专业 */
    private String professional;

    /** 常住地 */
    @TableField(value = "permanent_residence")
    private String permanentResidence;

    /** 先从事工作 */
    private String work;

    /** 职务 */
    private String position;

    /** 外语语种 */
    @TableField(value = "foreign_languages")
    private String foreignLanguages;

    /** 外语水平 */
    @TableField(value = "foreign_language_level")
    private String foreignLanguageLevel;

    /** 相关工作经验 */
    @TableField(value = "related_work_experience")
    private String relatedWorkExperience;

    /** 计算机能力 */
    @TableField(value = "computer_power")
    private String computerPower;

    /** 教育/培训经历及所获证书 */
    @TableField(value = "certificate_education")
    private String certificateEducation;

    /** 船舶检验经历 */
    @TableField(value = "ship_inspection_experience")
    private String shipInspectionExperience;

    /** 联系电话号码 */
    private String tel;

    /** 邮箱 */
    private String email;

    /**  */
    @TableField(value = "last_name")
    private String lastName;

    /** 国籍 */
    private String nationality;

    /** 能够开始验船的时间 */
    @TableField(value = "survey_time_start")
    private Date surveyTimeStart;

    /** 能够结束验船的日期 */
    @TableField(value = "survey_time_end")
    private Date surveyTimeEnd;

    /** 验船港口 */
    @TableField(value = "survey_port")
    private String surveyPort;

    /**  */
    @TableField(value = "surveyor_profile")
    private String surveyorProfile;

    /** 公司id */
    @TableField(value = "company_id")
    private Integer companyId;

    /** 头像存储路径 */
    @TableField(value = "portrait_url")
    private String portraitUrl;

    /** 创建日期 */
    @TableField(value = "create_date")
    private Date createDate;

    /** 创建者 */
    @TableField(value = "create_by")
    private String createBy;

    /** 修改日期 */
    @TableField(value = "update_date")
    private Date updateDate;

    /** 修改者 */
    @TableField(value = "update_by")
    private String updateBy;

    /**  */
    @TableField(value = "del_flag")
    private Integer delFlag;

    /** 可验船型 */
    @TableField(value = "ship_type")
    private String shipType;

    /** 平均分 */
    @TableField(value = "past_evaluation")
    private Double pastEvaluation;

    /** 能够船检的类型 */
    @TableField(value = "survey_type")
    private String surveyType;

    /** 判断是否有登轮证0表示有，1表示没有 */
    @TableField(value = "is_board_card")
    private String isBoardCard;


    @TableField(exist = false)
    private List<Port> portList;

    @TableField(exist = false)
    private List<SurveyorExperience> experienceList;




    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getNationality() {
        return this.nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public Date getSurveyTimeStart() {
        return this.surveyTimeStart;
    }

    public void setSurveyTimeStart(Date surveyTimeStart) {
        this.surveyTimeStart = surveyTimeStart;
    }

    public Date getSurveyTimeEnd() {
        return this.surveyTimeEnd;
    }

    public void setSurveyTimeEnd(Date surveyTimeEnd) {
        this.surveyTimeEnd = surveyTimeEnd;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return this.tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getShipType() {
        return shipType;
    }

    public void setShipType(String shipType) {
        this.shipType = shipType;
    }

    public String getSurveyPort() {
        return this.surveyPort;
    }

    public void setSurveyPort(String surveyPort) {
        this.surveyPort = surveyPort;
    }

    public String getSurveyorProfile() {
        return this.surveyorProfile;
    }

    public void setSurveyorProfile(String surveyorProfile) {
        this.surveyorProfile = surveyorProfile;
    }

    public Integer getCompanyId() {
        return this.companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public String getPortraitUrl() {
        return this.portraitUrl;
    }

    public void setPortraitUrl(String portraitUrl) {
        this.portraitUrl = portraitUrl;
    }

    public List<Port> getPortList() {
        return portList;
    }

    public void setPortList(List<Port> portList) {
        this.portList = portList;
    }

    public List<SurveyorExperience> getExperienceList() {
        return experienceList;
    }

    public void setExperienceList(List<SurveyorExperience> experienceList) {
        this.experienceList = experienceList;
    }

    public Date getCreateDate() {
        return this.createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getCreateBy() {
        return this.createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public Date getUpdateDate() {
        return this.updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getUpdateBy() {
        return this.updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public Integer getDelFlag() {
        return this.delFlag;
    }

    public void setDelFlag(Integer delFlag) {
        this.delFlag = delFlag;
    }

    public void setCreateInfo(String userName) {
        this.createDate = new Date();
        this.createBy = userName;
        this.updateDate = new Date();
        this.updateBy = userName;
        this.delFlag = Const.DEL_FLAG_NORMAL;
    }

    public void setUpdateInfo(String userName) {
        this.updateDate = new Date();
        this.updateBy = userName;
    }

    public Double getPastEvaluation() {
        return pastEvaluation;
    }

    public void setPastEvaluation(Double pastEvaluation) {
        this.pastEvaluation = pastEvaluation;
    }

    public String getSurveyType() {
        return surveyType;
    }

    public void setSurveyType(String surveyType) {
        this.surveyType = surveyType;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getCensusRegister() {
        return censusRegister;
    }

    public void setCensusRegister(String censusRegister) {
        this.censusRegister = censusRegister;
    }

    public String getBirthTime() {
        return birthTime;
    }

    public void setBirthTime(String birthTime) {
        this.birthTime = birthTime;
    }

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public String getGraduateSchool() {
        return graduateSchool;
    }

    public void setGraduateSchool(String graduateSchool) {
        this.graduateSchool = graduateSchool;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getProfessional() {
        return professional;
    }

    public void setProfessional(String professional) {
        this.professional = professional;
    }

    public String getPermanentResidence() {
        return permanentResidence;
    }

    public void setPermanentResidence(String permanentResidence) {
        this.permanentResidence = permanentResidence;
    }

    public String getWork() {
        return work;
    }

    public void setWork(String work) {
        this.work = work;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getForeignLanguages() {
        return foreignLanguages;
    }

    public void setForeignLanguages(String foreignLanguages) {
        this.foreignLanguages = foreignLanguages;
    }

    public String getForeignLanguageLevel() {
        return foreignLanguageLevel;
    }

    public void setForeignLanguageLevel(String foreignLanguageLevel) {
        this.foreignLanguageLevel = foreignLanguageLevel;
    }

    public String getRelatedWorkExperience() {
        return relatedWorkExperience;
    }

    public void setRelatedWorkExperience(String relatedWorkExperience) {
        this.relatedWorkExperience = relatedWorkExperience;
    }

    public String getComputerPower() {
        return computerPower;
    }

    public void setComputerPower(String computerPower) {
        this.computerPower = computerPower;
    }

    public String getCertificateEducation() {
        return certificateEducation;
    }

    public void setCertificateEducation(String certificateEducation) {
        this.certificateEducation = certificateEducation;
    }

    public String getShipInspectionExperience() {
        return shipInspectionExperience;
    }

    public String getIsBoardCard() {
        return isBoardCard;
    }

    public void setIsBoardCard(String isBoardCard) {
        this.isBoardCard = isBoardCard;
    }

    public void setShipInspectionExperience(String shipInspectionExperience) {
        this.shipInspectionExperience = shipInspectionExperience;
    }
}
