package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity;

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
@TableName("t_quotation")
public class Quotation implements Serializable {

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**  */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**  */
    @TableField(value = "op_id")
    private Integer opId;

    /**  */
    @TableField(value = "op_name")
    private String opName;

    /**  */
    @TableField(value = "ship_id")
    private Integer shipId;

    /**  */
    @TableField(value = "ship_name")
    private String shipName;

    /**  */
    private String imo;

    /**
     * 船类型
     */
    @TableField(value = "ship_type")
    private Integer shipType;

    /**
     * 船检类型
     */
    @TableField(value = "inspection_type")
    private Integer inspectionType;

    /**
     * 港口id
     */
    @TableField(value = "port_id")
    private Integer portId;

    /**
     * 港口名称
     */
    @TableField(value = "port_name")
    private String portName;

    /**
     * 检查起始日期
     */
    @TableField(value = "date_from")
    private Date dateFrom;

    /**
     * 检查终止日期
     */
    @TableField(value = "date_to")
    private Date dateTo;

    /**
     * 价格
     */
    @TableField(value = "total_price")
    private Double totalPrice;

    /**
     * 检查状态
     */
    @TableField(value = "quotation_status")
    private Integer quotationStatus;

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
    private Inspection inspection;

    @TableField(exist = false)
    private List<QuotationApplication> applicationList;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOpId() {
        return this.opId;
    }

    public void setOpId(Integer opId) {
        this.opId = opId;
    }

    public String getOpName() {
        return this.opName;
    }

    public void setOpName(String opName) {
        this.opName = opName;
    }

    public Integer getShipId() {
        return this.shipId;
    }

    public void setShipId(Integer shipId) {
        this.shipId = shipId;
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

    public Integer getShipType() {
        return this.shipType;
    }

    public void setShipType(Integer shipType) {
        this.shipType = shipType;
    }

    public Integer getInspectionType() {
        return this.inspectionType;
    }

    public void setInspectionType(Integer inspectionType) {
        this.inspectionType = inspectionType;
    }

    public Integer getPortId() {
        return this.portId;
    }

    public void setPortId(Integer portId) {
        this.portId = portId;
    }

    public String getPortName() {
        return this.portName;
    }

    public void setPortName(String portName) {
        this.portName = portName;
    }

    public Date getDateFrom() {
        return this.dateFrom;
    }

    public void setDateFrom(Date dateFrom) {
        this.dateFrom = dateFrom;
    }

    public Date getDateTo() {
        return this.dateTo;
    }

    public void setDateTo(Date dateTo) {
        this.dateTo = dateTo;
    }

    public Double getTotalPrice() {
        return this.totalPrice;
    }

    public void setTotalPrice(Double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Integer getQuotationStatus() {
        return quotationStatus;
    }

    public void setQuotationStatus(Integer quotationStatus) {
        this.quotationStatus = quotationStatus;
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

    public Inspection getInspection() {
        return inspection;
    }

    public void setInspection(Inspection inspection) {
        this.inspection = inspection;
    }

    public List<QuotationApplication> getApplicationList() {
        return applicationList;
    }

    public void setApplicationList(List<QuotationApplication> applicationList) {
        this.applicationList = applicationList;
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
