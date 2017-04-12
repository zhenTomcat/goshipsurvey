package com.ctoangels.goshipsurvey.common.modules.sys.entity;

import com.baomidou.mybatisplus.annotations.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.ctoangels.goshipsurvey.common.util.Const;

import java.io.Serializable;
import java.util.Date;
import java.util.List;


/**
 * @author Sun.Han
 * @version 1.0
 * @FileName User.java
 * @Description:
 * @Date 2015年4月30日
 */
@TableName("sys_user")
public class User implements Serializable {

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id; // 用户id
    @TableField(value = "login_name")
    private String loginName; // 用户名
    private String password; // 密码
    private String name; // 姓名
    @TableField(value = "last_login")
    private Date lastLogin; // 最后登录时间
    private String ip; // 用户登录ip地址
    private Integer delFlag; // 状态
    private String description; // 描述
    private String email; // 邮箱
    private String phone; // 电话号码
    private Integer score;//积分
    private String identification;//身份证
    private String prefer;//偏好
    private String address;//地址
    private String headImgUrl;//头像

    @TableField(value = "email_code")//邮箱激活码
    private String emailCode;
    @TableField(value = "email_status")//邮箱激活状态
    private Integer emailStatus = Const.EMAIL_ACTIVATE_STATUS_HAVE;
    @TableField(value = "email_time")//邮箱激活时间
    private Date emailTime;

    @TableField(value = "open_id")
    private String openId; // 微信openId
    @TableField(exist = false)
    private List<Role> roles;

    @TableField(exist = false)
    private String roleIds;

    @TableField(value = "style_id")
    private Integer styleId;

    @TableField(value = "company_id")
    private Integer companyId;


    public String getRoleIds() {
        return roleIds;
    }

    public void setRoleIds(String roleIds) {
        this.roleIds = roleIds;
    }

    public Integer getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(Integer delFlag) {
        this.delFlag = delFlag;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getLastLogin() {
        return lastLogin;
    }

    public void setLastLogin(Date lastLogin) {
        this.lastLogin = lastLogin;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getIdentification() {
        return identification;
    }

    public void setIdentification(String identification) {
        this.identification = identification;
    }

    public String getPrefer() {
        return prefer;
    }

    public void setPrefer(String prefer) {
        this.prefer = prefer;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getHeadImgUrl() {
        return headImgUrl;
    }

    public void setHeadImgUrl(String headImgUrl) {
        this.headImgUrl = headImgUrl;
    }

    public String getEmailCode() {
        return emailCode;
    }

    public void setEmailCode(String emailCode) {
        this.emailCode = emailCode;
    }

    public Date getEmailTime() {
        return emailTime;
    }

    public void setEmailTime(Date emailTime) {
        this.emailTime = emailTime;
    }

    public Integer getEmailStatus() {
        return emailStatus;
    }

    public void setEmailStatus(Integer emailStatus) {
        this.emailStatus = emailStatus;
    }

    public Integer getStyleId() {
        return styleId;
    }

    public void setStyleId(Integer styleId) {
        this.styleId = styleId;
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }
}
