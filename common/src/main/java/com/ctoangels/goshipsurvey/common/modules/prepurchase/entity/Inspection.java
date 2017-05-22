package com.ctoangels.goshipsurvey.common.modules.prepurchase.entity;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 *
 * 
 *
 */
@TableName("t_inspection")
public class Inspection implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	@TableField(value = "op_id")
	private Integer opId;

	/**  */
	@TableField(value = "surveyor_id")
	private Integer surveyorId;

	/** 询价信息id */
	@TableField(value = "quotation_id")
	private Integer quotationId;

	/**  */
	@TableField(value = "inspection_status")
	private Integer inspectionStatus;

	/**  */
	@TableField(value = "inspection_type")
	private String inspectionType;

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

	/**  */
	private String charter;

	/**  */
	private String owner;

	/**  */
	@TableField(value = "ship_particulars")
	private String shipParticulars;

	/**  */
	@TableField(value = "ship_particulars_url")
	private String shipParticularsUrl;

	/**  */
	@TableField(value = "port_agency")
	private String portAgency;

	/**  */
	@TableField(value = "blank_loi_url")
	private String blankLoiUrl;

	/**  */
	@TableField(value = "report_url")
	private String reportUrl;

	/**  */
	@TableField(value = "invoice_url")
	private String invoiceUrl;

	/**  */
	@TableField(value = "op_point")
	private Double opPoint;

	/**  */
	@TableField(value = "op_comment")
	private String opComment;

	/**  */
	@TableField(value = "surveyor_point")
	private Double surveyorPoint;

	/**  */
	@TableField(value = "surveyor_comment")
	private String surveyorComment;

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

	public Integer getSurveyorId() {
		return this.surveyorId;
	}

	public void setSurveyorId(Integer surveyorId) {
		this.surveyorId = surveyorId;
	}

	public Integer getQuotationId() {
		return this.quotationId;
	}

	public void setQuotationId(Integer quotationId) {
		this.quotationId = quotationId;
	}

	public Integer getInspectionStatus() {
		return this.inspectionStatus;
	}

	public void setInspectionStatus(Integer inspectionStatus) {
		this.inspectionStatus = inspectionStatus;
	}

	public String getInspectionType() {
		return this.inspectionType;
	}

	public void setInspectionType(String inspectionType) {
		this.inspectionType = inspectionType;
	}

	public String getDeliveryBy() {
		return this.deliveryBy;
	}

	public void setDeliveryBy(String deliveryBy) {
		this.deliveryBy = deliveryBy;
	}

	public String getAcceptedBy() {
		return this.acceptedBy;
	}

	public void setAcceptedBy(String acceptedBy) {
		this.acceptedBy = acceptedBy;
	}

	public String getReDeliveryBy() {
		return this.reDeliveryBy;
	}

	public void setReDeliveryBy(String reDeliveryBy) {
		this.reDeliveryBy = reDeliveryBy;
	}

	public String getReAcceptedBy() {
		return this.reAcceptedBy;
	}

	public void setReAcceptedBy(String reAcceptedBy) {
		this.reAcceptedBy = reAcceptedBy;
	}

	public String getCharter() {
		return this.charter;
	}

	public void setCharter(String charter) {
		this.charter = charter;
	}

	public String getOwner() {
		return this.owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getShipParticulars() {
		return this.shipParticulars;
	}

	public void setShipParticulars(String shipParticulars) {
		this.shipParticulars = shipParticulars;
	}

	public String getShipParticularsUrl() {
		return this.shipParticularsUrl;
	}

	public void setShipParticularsUrl(String shipParticularsUrl) {
		this.shipParticularsUrl = shipParticularsUrl;
	}

	public String getPortAgency() {
		return this.portAgency;
	}

	public void setPortAgency(String portAgency) {
		this.portAgency = portAgency;
	}

	public String getBlankLoiUrl() {
		return this.blankLoiUrl;
	}

	public void setBlankLoiUrl(String blankLoiUrl) {
		this.blankLoiUrl = blankLoiUrl;
	}

	public String getReportUrl() {
		return this.reportUrl;
	}

	public void setReportUrl(String reportUrl) {
		this.reportUrl = reportUrl;
	}

	public String getInvoiceUrl() {
		return this.invoiceUrl;
	}

	public void setInvoiceUrl(String invoiceUrl) {
		this.invoiceUrl = invoiceUrl;
	}

	public Double getOpPoint() {
		return this.opPoint;
	}

	public void setOpPoint(Double opPoint) {
		this.opPoint = opPoint;
	}

	public String getOpComment() {
		return this.opComment;
	}

	public void setOpComment(String opComment) {
		this.opComment = opComment;
	}

	public Double getSurveyorPoint() {
		return this.surveyorPoint;
	}

	public void setSurveyorPoint(Double surveyorPoint) {
		this.surveyorPoint = surveyorPoint;
	}

	public String getSurveyorComment() {
		return this.surveyorComment;
	}

	public void setSurveyorComment(String surveyorComment) {
		this.surveyorComment = surveyorComment;
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

}
