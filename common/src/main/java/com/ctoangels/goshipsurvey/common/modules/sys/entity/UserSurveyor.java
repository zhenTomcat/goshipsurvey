package com.ctoangels.goshipsurvey.common.modules.sys.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 *
 * 
 *
 */
@TableName("sys_user_surveyor")
public class UserSurveyor implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/** 公众号openId */
	@TableField(value = "gzh_open_id")
	private String gzhOpenId;

	/** 小程序openId */
	@TableField(value = "xcx_open_id")
	private String xcxOpenId;

	/** 主体id */
	@TableField(value = "union_id")
	private String unionId;

	/**  */
	@TableField(value = "user_id")
	private Integer userId;

	/**  */
	@TableField(value = "surveyor_id")
	private Integer surveyorId;


	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getXcxOpenId() {
		return this.xcxOpenId;
	}

	public void setXcxOpenId(String xcxOpenId) {
		this.xcxOpenId = xcxOpenId;
	}

	public String getUnionId() {
		return this.unionId;
	}

	public void setUnionId(String unionId) {
		this.unionId = unionId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getGzhOpenId() {
		return gzhOpenId;
	}

	public void setGzhOpenId(String gzhOpenId) {
		this.gzhOpenId = gzhOpenId;
	}

	public Integer getSurveyorId() {
		return surveyorId;
	}

	public void setSurveyorId(Integer surveyorId) {
		this.surveyorId = surveyorId;
	}
}
