package com.ctoangels.goshipsurvey.common.modules.prepurchase.entity;

import java.io.Serializable;
import java.util.Date;

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
@TableName("t_comment")
public class Comment implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	@TableField(value = "op_id")
	private Integer opId;

	/**  */
	@TableField(value = "op_grade")
	private Double opGrade;

	/**  */
	@TableField(value = "op_comment")
	private String opComment;

	/**  */
	@TableField(value = "surveyor_id")
	private Integer surveyorId;

	/**  */
	@TableField(value = "surveyor_grade")
	private Double surveyorGrade;

	/**  */
	@TableField(value = "surveyor_comment")
	private String surveyorComment;

	/**  */
	@TableField(value = "company_id")
	private Integer companyId;

	/** 系统类型(1:量油 2:买卖船) */
	@TableField(value = "pro_type")
	private Integer proType;

	/**  */
	@TableField(value = "inspection_id")
	private Integer inspectionId;

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

	public Double getOpGrade() {
		return this.opGrade;
	}

	public void setOpGrade(Double opGrade) {
		this.opGrade = opGrade;
	}

	public String getOpComment() {
		return this.opComment;
	}

	public void setOpComment(String opComment) {
		this.opComment = opComment;
	}

	public Integer getSurveyorId() {
		return this.surveyorId;
	}

	public void setSurveyorId(Integer surveyorId) {
		this.surveyorId = surveyorId;
	}

	public Double getSurveyorGrade() {
		return this.surveyorGrade;
	}

	public void setSurveyorGrade(Double surveyorGrade) {
		this.surveyorGrade = surveyorGrade;
	}

	public String getSurveyorComment() {
		return this.surveyorComment;
	}

	public void setSurveyorComment(String surveyorComment) {
		this.surveyorComment = surveyorComment;
	}

	public Integer getCompanyId() {
		return this.companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public Integer getProType() {
		return this.proType;
	}

	public void setProType(Integer proType) {
		this.proType = proType;
	}

	public Integer getInspectionId() {
		return this.inspectionId;
	}

	public void setInspectionId(Integer inspectionId) {
		this.inspectionId = inspectionId;
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
