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

    /**
     * surveyor的id
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**  */
    @TableField(value = "first_name")
    private String firstName;

    /**  */
    @TableField(value = "last_name")
    private String lastName;

    /**  */
    private String nationality;

    /**
     * 能够开始验船的时间
     */
    @TableField(value = "survey_time_start")
    private Date surveyTimeStart;

    /**
     * 能够结束验船的日期
     */
    @TableField(value = "survey_time_end")
    private Date surveyTimeEnd;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 联系电话号码
     */
    private String tel;


    /**
     * 可验船型
     */
    @TableField(value = "ship_type")
    private String shipType;

    /**
     * 验船港口
     */
    @TableField(value = "survey_port")
    private String surveyPort;

    /**  */
    @TableField(value = "surveyor_profile")
    private String surveyorProfile;

    /**
     * 公司id
     */
    @TableField(value = "company_id")
    private Integer companyId;

    /**
     * 头像存储路径
     */
    @TableField(value = "portrait_url")
    private String portraitUrl;

    @TableField(exist = false)
    private List<Port> portList;

    @TableField(exist = false)
    private List<SurveyorExperience> experienceList;

    /**
     * 创建日期
     */
    @TableField(value = "create_date")
    private Date createDate;

    /**
     * 创建者
     */
    @TableField(value = "create_by")
    private String createBy;

    /**
     * 修改日期
     */
    @TableField(value = "update_date")
    private Date updateDate;

    /**
     * 修改者
     */
    @TableField(value = "update_by")
    private String updateBy;

    /**  */
    @TableField(value = "del_flag")
    private Integer delFlag;


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

}
