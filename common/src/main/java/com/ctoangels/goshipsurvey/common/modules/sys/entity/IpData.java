package com.ctoangels.goshipsurvey.common.modules.sys.entity;

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
@TableName("sys_ip_data")
public class IpData implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	private String country;

	/**  */
	private String area;


	/**  */
	private String region;


	/**  */
	private String city;


	/**  */
	private String county;


	/**  */
	private String isp;


	/**  */
	private String ip;

	/**  */
	private String uri;

	/**  */
	private String location;

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

	/**  */
	@TableField(value = "ip_record_id")
	private Integer ipRecordId;


	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getRegion() {
		return this.region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCounty() {
		return this.county;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public String getIsp() {
		return this.isp;
	}

	public void setIsp(String isp) {
		this.isp = isp;
	}

	public String getIp() {
		return this.ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getUri() {
		return this.uri;
	}

	public void setUri(String uri) {
		this.uri = uri;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
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

	public Integer getIpRecordId() {
		return this.ipRecordId;
	}

	public void setIpRecordId(Integer ipRecordId) {
		this.ipRecordId = ipRecordId;
	}

}
