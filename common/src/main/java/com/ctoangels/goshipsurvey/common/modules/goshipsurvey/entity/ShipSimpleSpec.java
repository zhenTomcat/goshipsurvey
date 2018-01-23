package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity;

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
@TableName("s_ship_simple_spec")
public class ShipSimpleSpec implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	@TableField(value = "ship_name")
	private String shipName;

	/**  */
	@TableField(value = "ship_info_name")
	private String shipInfoName;


	/**  */
	@TableField(value = "ship_info_oss")
	private String shipInfoOss;

	/**  */
	@TableField(value = "ship_type")
	private String shipType;

	/**  */
	private String imo;

	/**  */
	@TableField(value = "inspect_type")
	private String inspectType;

	/**  */
	@TableField(value = "inspect_port")
	private String inspectPort;

	/**  */
	@TableField(value = "inspect_date")
	private Date inspectDate;

	/**  */
	@TableField(value = "inspect_report_name")
	private String inspectReportName;

	/**  */
	@TableField(value = "inspect_report_oss")
	private String inspectReportOss;

	/**  */
	@TableField(value = "site_picture_name")
	private String sitePictureName;

	/**  */
	@TableField(value = "site_picture_oss")
	private String sitePictureOss;

	/**  */
	@TableField(value = "surveyor_a_name")
	private String surveyorAName;

	/**  */
	@TableField(value = "surveyor_a_resume_name")
	private String surveyorAResumeName;

	/**  */
	@TableField(value = "surveyor_a_resume_oss")
	private String surveyorAResumeOss;

	/**  */
	@TableField(value = "surveyor_b_resume_name")
	private String surveyorBResumeName;

	/**  */
	@TableField(value = "surveyor_b_name")
	private String surveyorBName;

	/**  */
	@TableField(value = "surveyor_b_resume_oss")
	private String surveyorBResumeOss;

	/**  */
	@TableField(value = "create_by")
	private String createBy;

	/**  */
	@TableField(value = "create_date")
	private Date createDate;

	/**  */
	@TableField(value = "update_by")
	private String updateBy;

	/**  */
	@TableField(value = "update_date")
	private Date updateDate;

	/**  */
	@TableField(value = "del_flag")
	private Integer delFlag;


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

	public String getShipInfoOss() {
		return this.shipInfoOss;
	}

	public void setShipInfoOss(String shipInfoOss) {
		this.shipInfoOss = shipInfoOss;
	}

	public String getImo() {
		return this.imo;
	}

	public void setImo(String imo) {
		this.imo = imo;
	}

	public String getInspectType() {
		return this.inspectType;
	}

	public void setInspectType(String inspectType) {
		this.inspectType = inspectType;
	}

	public String getInspectPort() {
		return this.inspectPort;
	}

	public void setInspectPort(String inspectPort) {
		this.inspectPort = inspectPort;
	}

	public Date getInspectDate() {
		return this.inspectDate;
	}

	public void setInspectDate(Date inspectDate) {
		this.inspectDate = inspectDate;
	}

	public String getInspectReportOss() {
		return this.inspectReportOss;
	}

	public void setInspectReportOss(String inspectReportOss) {
		this.inspectReportOss = inspectReportOss;
	}

	public String getSitePictureOss() {
		return this.sitePictureOss;
	}

	public void setSitePictureOss(String sitePictureOss) {
		this.sitePictureOss = sitePictureOss;
	}

	public String getSurveyorAName() {
		return this.surveyorAName;
	}

	public void setSurveyorAName(String surveyorAName) {
		this.surveyorAName = surveyorAName;
	}


	public String getSurveyorBName() {
		return this.surveyorBName;
	}

	public void setSurveyorBName(String surveyorBName) {
		this.surveyorBName = surveyorBName;
	}


	public String getCreateBy() {
		return this.createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getUpdateBy() {
		return this.updateBy;
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

	public String getShipType() {
		return shipType;
	}

	public void setShipType(String shipType) {
		this.shipType = shipType;
	}

	public String getInspectReportName() {
		return inspectReportName;
	}

	public void setInspectReportName(String inspectReportName) {
		this.inspectReportName = inspectReportName;
	}

	public String getSitePictureName() {
		return sitePictureName;
	}

	public void setSitePictureName(String sitePictureName) {
		this.sitePictureName = sitePictureName;
	}

	public String getSurveyorAResumeName() {
		return surveyorAResumeName;
	}

	public void setSurveyorAResumeName(String surveyorAResumeName) {
		this.surveyorAResumeName = surveyorAResumeName;
	}

	public String getSurveyorBResumeName() {
		return surveyorBResumeName;
	}

	public void setSurveyorBResumeName(String surveyorBResumeName) {
		this.surveyorBResumeName = surveyorBResumeName;
	}

	public String getShipInfoName() {
		return shipInfoName;
	}

	public void setShipInfoName(String shipInfoName) {
		this.shipInfoName = shipInfoName;
	}

	public String getSurveyorAResumeOss() {
		return surveyorAResumeOss;
	}

	public void setSurveyorAResumeOss(String surveyorAResumeOss) {
		this.surveyorAResumeOss = surveyorAResumeOss;
	}

	public String getSurveyorBResumeOss() {
		return surveyorBResumeOss;
	}

	public void setSurveyorBResumeOss(String surveyorBResumeOss) {
		this.surveyorBResumeOss = surveyorBResumeOss;
	}
}
