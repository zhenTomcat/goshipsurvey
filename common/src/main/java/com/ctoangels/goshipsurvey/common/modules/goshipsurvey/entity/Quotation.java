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
    private String shipType;

    /**
     * 船检类型
     */
    @TableField(value = "inspection_type")
    private String inspectionType;

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
    @TableField(value = "start_date")
    private Date startDate;

    /**
     * 检查终止日期
     */
    @TableField(value = "end_date")
    private Date endDate;

    /**
     * 当前油量
     */
    @TableField(value = "current_quantity")
    private String currentQuantity;

    /**
     * 油量相关照片
     */
    @TableField(value = "current_quantity_url")
    private String currentQuantityUrl;

    /**
     * 奖励方案
     */
    @TableField(value = "bonus_plan")
    private String bonusPlan;

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
    @TableField(value = "delivery_by")
    private String deliveryBy;

    /**  */
    @TableField(value = "accepted_by")
    private String acceptedBy;

    /**  */
    @TableField(value = "re_delivery_by")
    private String reDeliveryBy;

    /**  */
    @TableField(value = "re_accepted_by")
    private String reAcceptedBy;

    private String charter;

    private String owner;

    /**  */
    @TableField(value = "ship_particulars")
    private String shipParticulars;

    /**  */
    @TableField(value = "ship_particulars_url")
    private String shipParticularsUrl;

    /**  */
    @TableField(value = "blank_loi_url")
    private String blankLoiUrl;

    /**  */
    @TableField(value = "port_agency")
    private String portAgency;

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
    private QuotationApplication application;

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

    public String getShipType() {
        return shipType;
    }

    public void setShipType(String shipType) {
        this.shipType = shipType;
    }

    public String getInspectionType() {
        return inspectionType;
    }

    public void setInspectionType(String inspectionType) {
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

    public QuotationApplication getApplication() {
        return application;
    }

    public void setApplication(QuotationApplication application) {
        this.application = application;
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

    public String getDeliveryBy() {
        return deliveryBy;
    }

    public void setDeliveryBy(String deliveryBy) {
        this.deliveryBy = deliveryBy;
    }

    public String getAcceptedBy() {
        return acceptedBy;
    }

    public void setAcceptedBy(String acceptedBy) {
        this.acceptedBy = acceptedBy;
    }

    public String getReDeliveryBy() {
        return reDeliveryBy;
    }

    public void setReDeliveryBy(String reDeliveryBy) {
        this.reDeliveryBy = reDeliveryBy;
    }

    public String getReAcceptedBy() {
        return reAcceptedBy;
    }

    public void setReAcceptedBy(String reAcceptedBy) {
        this.reAcceptedBy = reAcceptedBy;
    }

    public String getCharter() {
        return charter;
    }

    public void setCharter(String charter) {
        this.charter = charter;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getShipParticulars() {
        return shipParticulars;
    }

    public void setShipParticulars(String shipParticulars) {
        this.shipParticulars = shipParticulars;
    }

    public String getShipParticularsUrl() {
        return shipParticularsUrl;
    }

    public void setShipParticularsUrl(String shipParticularsUrl) {
        this.shipParticularsUrl = shipParticularsUrl;
    }

    public String getBlankLoiUrl() {
        return blankLoiUrl;
    }

    public void setBlankLoiUrl(String blankLoiUrl) {
        this.blankLoiUrl = blankLoiUrl;
    }

    public String getPortAgency() {
        return portAgency;
    }

    public void setPortAgency(String portAgency) {
        this.portAgency = portAgency;
    }

    public String getCurrentQuantity() {
        return currentQuantity;
    }

    public void setCurrentQuantity(String currentQuantity) {
        this.currentQuantity = currentQuantity;
    }

    public String getCurrentQuantityUrl() {
        return currentQuantityUrl;
    }

    public void setCurrentQuantityUrl(String currentQuantityUrl) {
        this.currentQuantityUrl = currentQuantityUrl;
    }

    public String getBonusPlan() {
        return bonusPlan;
    }

    public void setBonusPlan(String bonusPlan) {
        this.bonusPlan = bonusPlan;
    }
}
