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
@TableName("t_grade_model")
public class GradeModel implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	private String item;

	/**  */
	private Double weight;

	/**  */
	private Double grade;

	/**  */
	private String remark;

	/**  */
	@TableField(value = "site_photo")
	private String sitePhoto;

	/**  */
	@TableField(value = "parent_item")
	private String parentItem;

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

    private Integer rank;

	@TableField(exist = false)
	private List<GradeModel> gradeModels;

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getItem() {
		return this.item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public Double getWeight() {
		return this.weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public Double getGrade() {
		return this.grade;
	}

	public void setGrade(Double grade) {
		this.grade = grade;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getSitePhoto() {
		return this.sitePhoto;
	}

	public void setSitePhoto(String sitePhoto) {
		this.sitePhoto = sitePhoto;
	}

	public String getParentItem() {
		return parentItem;
	}

	public void setParentItem(String parentItem) {
		this.parentItem = parentItem;
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

	public List<GradeModel> getGradeModels() {
		return gradeModels;
	}

	public void setGradeModels(List<GradeModel> gradeModels) {
		this.gradeModels = gradeModels;
	}

    public Integer getRank() {
        return rank;
    }

    public void setRank(Integer rank) {
        this.rank = rank;
    }
}
