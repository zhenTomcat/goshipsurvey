package com.ctoangels.goshipsurvey.common.modules.sys.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.ctoangels.goshipsurvey.common.util.Const;

/**
 *
 *
 *
 */
@TableName("sys_user")
public class User implements Serializable {

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**  */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 姓名
     */
    private String name;

    /**
     * 登录名
     */
    @TableField(value = "login_name")
    private String loginName;

    /**
     * 密码
     */
    private String password;

    /**  */
    private Integer type;

    /**  */
    @TableField(value = "style_id")
    private Integer styleId;

    /**
     * 部门Id
     */
    @TableField(value = "office_id")
    private String officeId;

    /**  */
    @TableField(value = "company_id")
    private Integer companyId;

    /**
     * IP
     */
    private String ip;

    /**
     * 邮箱
     */
    private String email;

    /**  */
    private String phone;

    private String country;

    /**
     * 地址
     */
    private String address;

    /**
     * 身份证
     */
    private String identification;

    /**
     * 头像图片地址
     */
    @TableField(value = "head_img_url")
    private String headImgUrl;

    /**
     * 上次登录时间
     */
    @TableField(value = "last_login")
    private Date lastLogin;

    /**  */
    private String description;

    /**  */
    private String achievement;

    /**
     * 可验船型
     */
    @TableField(value = "ship_type")
    private String shipType;

    /**  */
    @TableField(value = "start_date")
    private Date startDate;

    /**  */
    @TableField(value = "end_date")
    private Date endDate;

    /**
     * 评分
     */
    private Double point;

    /**  */
    @TableField(value = "email_status")
    private Integer emailStatus;

    /**  */
    @TableField(value = "email_code")
    private String emailCode;

    /**  */
    @TableField(value = "email_time")
    private Date emailTime;

    /**
     * 创建时间
     */
    @TableField(value = "create_date")
    private Date createDate;

    /**
     * 创建者
     */
    @TableField(value = "create_by")
    private String createBy;

    /**
     * 更新时间
     */
    @TableField(value = "update_date")
    private Date updateDate;

    /**
     * 更新者
     */
    @TableField(value = "update_by")
    private String updateBy;

    /**
     * 状态
     */
    @TableField(value = "del_flag")
    private Integer delFlag;

    /**
     * 同一公司下多个微信公众号之间,union_id 唯一,open_id不唯一
     */
    @TableField(value = "union_id")
    private String unionId;

    /**
     * 同一公司下多个微信公众号之间,union_id 唯一,open_id不唯一
     */
    @TableField(value = "open_id")
    private String openId;

    @TableField(exist = false)
    private List<Role> roles;

    @TableField(exist = false)
    private String roleIds;


    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLoginName() {
        return this.loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getType() {
        return this.type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getStyleId() {
        return this.styleId;
    }

    public void setStyleId(Integer styleId) {
        this.styleId = styleId;
    }

    public String getOfficeId() {
        return this.officeId;
    }

    public void setOfficeId(String officeId) {
        this.officeId = officeId;
    }

    public Integer getCompanyId() {
        return this.companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public String getIp() {
        return this.ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIdentification() {
        return this.identification;
    }

    public void setIdentification(String identification) {
        this.identification = identification;
    }

    public String getHeadImgUrl() {
        return this.headImgUrl;
    }

    public void setHeadImgUrl(String headImgUrl) {
        this.headImgUrl = headImgUrl;
    }

    public Date getLastLogin() {
        return this.lastLogin;
    }

    public void setLastLogin(Date lastLogin) {
        this.lastLogin = lastLogin;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAchievement() {
        return this.achievement;
    }

    public void setAchievement(String achievement) {
        this.achievement = achievement;
    }

    public String getShipType() {
        return this.shipType;
    }

    public void setShipType(String shipType) {
        this.shipType = shipType;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Double getPoint() {
        return this.point;
    }

    public void setPoint(Double point) {
        this.point = point;
    }

    public Integer getEmailStatus() {
        return this.emailStatus;
    }

    public void setEmailStatus(Integer emailStatus) {
        this.emailStatus = emailStatus;
    }

    public String getEmailCode() {
        return this.emailCode;
    }

    public void setEmailCode(String emailCode) {
        this.emailCode = emailCode;
    }

    public Date getEmailTime() {
        return this.emailTime;
    }

    public void setEmailTime(Date emailTime) {
        this.emailTime = emailTime;
    }

    public Date getCreateDate() {
        return this.createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public Date getUpdateDate() {
        return this.updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }


    public Integer getDelFlag() {
        return this.delFlag;
    }

    public void setDelFlag(Integer delFlag) {
        this.delFlag = delFlag;
    }

    public String getUnionId() {
        return unionId;
    }

    public void setUnionId(String unionId) {
        this.unionId = unionId;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    public String getRoleIds() {
        return roleIds;
    }

    public void setRoleIds(String roleIds) {
        this.roleIds = roleIds;
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
