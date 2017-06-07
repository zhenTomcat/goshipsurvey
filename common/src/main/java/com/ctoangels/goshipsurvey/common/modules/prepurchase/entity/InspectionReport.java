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
}
