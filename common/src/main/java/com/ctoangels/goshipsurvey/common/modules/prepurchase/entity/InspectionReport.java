package com.ctoangels.goshipsurvey.common.modules.prepurchase.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 *
 * 
 *
 */
@TableName("t_inspection_report")
public class InspectionReport implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	@TableField(value = "ship_id")
	private Integer shipId;

	/**  */
	@TableField(value = "condition_inspection_id")
	private Integer conditionInspectionId;


	/**  */
	@TableField(value = "inspection_reportcol")
	private String inspectionReportcol;

	@TableField(value = "submit_status1")
	private Integer submitStatus1;

	@TableField(value = "submit_status2")
	private Integer submitStatus2;

	@TableField(value = "submit_status3")
	private Integer submitStatus3;

	@TableField(value = "submit_status4")
	private Integer submitStatus4;

	@TableField(value = "submit_status5")
	private Integer submitStatus5;

	@TableField(value = "submit_status6")
	private Integer submitStatus6;

	@TableField(value = "submit_status7")
	private Integer submitStatus7;

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
	private String delFlag;

	@TableField(exist = false)
	private ShipDetail shipDetail;

	@TableField(exist = false)
	private List<Defect> defects;

	@TableField(exist = false)
	private List<Galleries> galleries;

	@TableField(exist = false)
	private ConditionInspection conditionInspection;

	@TableField(exist = false)
	private List<TechnicalAppendix> technicalAppendices;

	@TableField(exist = false)
	private List<Document> documents;

	@TableField(exist = false)
	private List<Grade> grades;


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

	public Integer getConditionInspectionId() {
		return this.conditionInspectionId;
	}

	public void setConditionInspectionId(Integer conditionInspectionId) {
		this.conditionInspectionId = conditionInspectionId;
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

	public String getDelFlag() {
		return this.delFlag;
	}

	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}

	public ShipDetail getShipDetail() {
		return shipDetail;
	}

	public void setShipDetail(ShipDetail shipDetail) {
		this.shipDetail = shipDetail;
	}

	public String getInspectionReportcol() {
		return inspectionReportcol;
	}

	public void setInspectionReportcol(String inspectionReportcol) {
		this.inspectionReportcol = inspectionReportcol;
	}


	public List<Defect> getDefects() {
		return defects;
	}

	public void setDefects(List<Defect> defects) {
		this.defects = defects;
	}

	public List<Galleries> getGalleries() {
		return galleries;
	}

	public void setGalleries(List<Galleries> galleries) {
		this.galleries = galleries;
	}

	public ConditionInspection getConditionInspection() {
		return conditionInspection;
	}

	public void setConditionInspection(ConditionInspection conditionInspection) {
		this.conditionInspection = conditionInspection;
	}

	public List<TechnicalAppendix> getTechnicalAppendices() {
		return technicalAppendices;
	}

	public void setTechnicalAppendices(List<TechnicalAppendix> technicalAppendices) {
		this.technicalAppendices = technicalAppendices;
	}

	public List<Document> getDocuments() {
		return documents;
	}

	public void setDocuments(List<Document> documents) {
		this.documents = documents;
	}

	public List<Grade> getGrades() {
		return grades;
	}

	public void setGrades(List<Grade> grades) {
		this.grades = grades;
	}

	public Integer getSubmitStatus1() {
		return submitStatus1;
	}

	public void setSubmitStatus1(Integer submitStatus1) {
		this.submitStatus1 = submitStatus1;
	}

	public Integer getSubmitStatus2() {
		return submitStatus2;
	}

	public void setSubmitStatus2(Integer submitStatus2) {
		this.submitStatus2 = submitStatus2;
	}

	public Integer getSubmitStatus3() {
		return submitStatus3;
	}

	public void setSubmitStatus3(Integer submitStatus3) {
		this.submitStatus3 = submitStatus3;
	}

	public Integer getSubmitStatus4() {
		return submitStatus4;
	}

	public void setSubmitStatus4(Integer submitStatus4) {
		this.submitStatus4 = submitStatus4;
	}

	public Integer getSubmitStatus5() {
		return submitStatus5;
	}

	public void setSubmitStatus5(Integer submitStatus5) {
		this.submitStatus5 = submitStatus5;
	}

	public Integer getSubmitStatus6() {
		return submitStatus6;
	}

	public void setSubmitStatus6(Integer submitStatus6) {
		this.submitStatus6 = submitStatus6;
	}

	public Integer getSubmitStatus7() {
		return submitStatus7;
	}

	public void setSubmitStatus7(Integer submitStatus7) {
		this.submitStatus7 = submitStatus7;
	}
}
