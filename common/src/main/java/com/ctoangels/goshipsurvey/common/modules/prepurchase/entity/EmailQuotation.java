package com.ctoangels.goshipsurvey.common.modules.prepurchase.entity;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.ctoangels.goshipsurvey.common.modules.go.entity.PublicShip;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

/**
 *
 *
 *
 */
@TableName("t_email_quotation")
public class EmailQuotation implements Serializable {

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**  */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**  */
    @NotBlank
    @TableField(value = "ship_name")
    private String shipName;

    /**  */
    @NotBlank
    private String imo;

    /**  */
    @NotBlank
    @TableField(value = "inspection_type")
    private String inspectionType;

    private String delivery;

    /**  */
    @TableField(value = "delivery_other")
    private String deliveryOther;

    private String reDelivery;

    /**  */
    @TableField(value = "re_delivery_other")
    private String reDeliveryOther;

    /**  */
    @NotBlank
    private String port;

    /**  */
    @NotNull
    @TableField(value = "estimated_date")
    private Date estimatedDate;

    /**  */
    @TableField(value = "start_date")
    private Date startDate;

    /**  */
    @TableField(value = "end_date")
    private Date endDate;

    /**  */
    @NotBlank
    @Email
    private String email;

    @NotBlank
    private String role;

    @TableField(value = "role_other")
    private String roleOther;

    /**  */
    @TableField(value = "special_requirement")
    private String specialRequirement;

    /**  */
    @TableField(value = "create_date")
    private Date createDate;

    /**  */
    @TableField(value = "create_by")
    private String createBy;

    /**  */
    @TableField(value = "update_date")
    private Date updateDate;

    /**  */
    @TableField(value = "update_by")
    private String updateBy;

    /**  */
    @TableField(value = "del_flag")
    private Integer delFlag;

    @TableField(exist = false)
    private PublicShip publicShip;


    @TableField(exist = false)
    private String remoteIp;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getShipName() {
        return this.shipName;
    }

    public void setShipName(String shipName) {
        this.shipName = shipName;
    }

    public String getImo() {
        return this.imo;
    }

    public void setImo(String imo) {
        this.imo = imo;
    }

    public String getInspectionType() {
        return this.inspectionType;
    }

    public void setInspectionType(String inspectionType) {
        this.inspectionType = inspectionType;
    }

    public String getPort() {
        return this.port;
    }

    public void setPort(String port) {
        this.port = port;
    }

    public Date getStartDate() {
        return this.startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return this.endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getSpecialRequirement() {
        return specialRequirement;
    }

    public void setSpecialRequirement(String specialRequirement) {
        this.specialRequirement = specialRequirement;
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
        return updateDate;
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

    public PublicShip getPublicShip() {
        return publicShip;
    }

    public void setPublicShip(PublicShip publicShip) {
        this.publicShip = publicShip;
    }

    public String getRemoteIp() {
        return remoteIp;
    }

    public void setRemoteIp(String remoteIp) {
        this.remoteIp = remoteIp;
    }

    public String getDelivery() {
        return delivery;
    }

    public void setDelivery(String delivery) {
        this.delivery = delivery;
    }

    public String getDeliveryOther() {
        return deliveryOther;
    }

    public void setDeliveryOther(String deliveryOther) {
        this.deliveryOther = deliveryOther;
    }

    public String getReDelivery() {
        return reDelivery;
    }

    public void setReDelivery(String reDelivery) {
        this.reDelivery = reDelivery;
    }

    public String getReDeliveryOther() {
        return reDeliveryOther;
    }

    public void setReDeliveryOther(String reDeliveryOther) {
        this.reDeliveryOther = reDeliveryOther;
    }

    public Date getEstimatedDate() {
        return estimatedDate;
    }

    public void setEstimatedDate(Date estimatedDate) {
        this.estimatedDate = estimatedDate;
    }

    public String getRoleOther() {
        return roleOther;
    }

    public void setRoleOther(String roleOther) {
        this.roleOther = roleOther;
    }
}
