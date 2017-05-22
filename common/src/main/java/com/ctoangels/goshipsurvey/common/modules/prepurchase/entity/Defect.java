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
@TableName("t_defect")
public class Defect implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 缺陷id */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/** 检查报告的id */
	@TableField(value = "inspection_report_id")
	private Integer inspectionReportId;

	/** 描述 */
	private String description;

	/** 预计价格 */
	@TableField(value = "estimat_cost")
	private String estimatCost;

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


	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getInspectionReportId() {
		return this.inspectionReportId;
	}

	public void setInspectionReportId(Integer inspectionReportId) {
		this.inspectionReportId = inspectionReportId;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getEstimatCost() {
		return this.estimatCost;
	}

	public void setEstimatCost(String estimatCost) {
		this.estimatCost = estimatCost;
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

}
