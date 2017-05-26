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
@TableName("t_purchase_quotation")
public class PurchaseQuotation implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	@TableField(value = "ship_id")
	private Integer shipId;

	/** 验船开始日期 */
	@TableField(value = "start_date")
	private Date startDate;

	/** 验船结束日期 */
	@TableField(value = "end_date")
	private Date endDate;

	/** 港口位置 */
	private String location;

	/** 证书详情 */
	@TableField(value = "agency_detail")
	private String agencyDetail;

	/** 证书存放的路径 */
	@TableField(value = "agency_url")
	private String agencyUrl;

	/** loi的路径 */
	@TableField(value = "loi_url")
	private String loiUrl;

	/** 是否默认系统自动选择serveyor */
	@TableField(value = "select_status")
	private String selectStatus;

	/**  */
	@TableField(value = "op_id")
	private Integer opId;

	/** 发布状态 */
	@TableField(value = "public_status")
	private String publicStatus;

	/** 创建日期 */
	@TableField(value = "create_date")
	private Date createDate;

	/** 创建者 */
	@TableField(value = "create_by")
	private String createBy;

	/** 修改时间 */
	@TableField(value = "update_date")
	private Date updateDate;

	/** 修改者 */
	@TableField(value = "update_by")
	private String updateBy;

	/**  */
	@TableField(value = "quotation_application_id")
	private Integer quotationApplicationId;

	/**  */
	@TableField(value = "total_price")
	private Double totalPrice;

	/**  */
	@TableField(value = "op_name")
	private String opName;

	/**  */
	@TableField(value = "surveyor_name")
	private String surveyorName;

	/**  */
	@TableField(value = "del_flag")
	private Integer delFlag;


	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getShipId() {
		return this.shipId;
	}

	public void setShipId(Integer shipId) {
		this.shipId = shipId;
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

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getAgencyDetail() {
		return this.agencyDetail;
	}

	public void setAgencyDetail(String agencyDetail) {
		this.agencyDetail = agencyDetail;
	}

	public String getAgencyUrl() {
		return this.agencyUrl;
	}

	public void setAgencyUrl(String agencyUrl) {
		this.agencyUrl = agencyUrl;
	}

	public String getLoiUrl() {
		return this.loiUrl;
	}

	public void setLoiUrl(String loiUrl) {
		this.loiUrl = loiUrl;
	}

	public String getSelectStatus() {
		return this.selectStatus;
	}

	public void setSelectStatus(String selectStatus) {
		this.selectStatus = selectStatus;
	}

	public Integer getOpId() {
		return this.opId;
	}

	public void setOpId(Integer opId) {
		this.opId = opId;
	}

	public String getPublicStatus() {
		return this.publicStatus;
	}

	public void setPublicStatus(String publicStatus) {
		this.publicStatus = publicStatus;
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

	public Integer getQuotationApplicationId() {
		return quotationApplicationId;
	}

	public void setQuotationApplicationId(Integer quotationApplicationId) {
		this.quotationApplicationId = quotationApplicationId;
	}

	public Double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}


	public String getOpName() {
		return opName;
	}

	public void setOpName(String opName) {
		this.opName = opName;
	}

	public String getSurveyorName() {
		return surveyorName;
	}

	public void setSurveyorName(String surveyorName) {
		this.surveyorName = surveyorName;
	}
}
