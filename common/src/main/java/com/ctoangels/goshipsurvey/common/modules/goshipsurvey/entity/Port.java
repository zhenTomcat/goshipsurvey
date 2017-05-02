package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity;

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
@TableName("t_port")
public class Port implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	@TableField(value = "country_code")
	private String countryCode;

	/**  */
	@TableField(value = "country_en")
	private String countryEn;

	/**  */
	@TableField(value = "country_cn")
	private String countryCn;

	/**  */
	@TableField(value = "port_code")
	private String portCode;

	/**  */
	@TableField(value = "port_en")
	private String portEn;

	/**  */
	@TableField(value = "port_cn")
	private String portCn;

	/**  */
	@TableField(value = "route_code")
	private String routeCode;

	/**  */
	@TableField(value = "route_en")
	private String routeEn;

	/**  */
	@TableField(value = "route_cn")
	private String routeCn;

	/**  */
	@TableField(value = "area_code")
	private String areaCode;

	/**  */
	@TableField(value = "area_en")
	private String areaEn;

	/**  */
	@TableField(value = "area_cn")
	private String areaCn;


	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCountryCode() {
		return this.countryCode;
	}

	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}

	public String getCountryEn() {
		return this.countryEn;
	}

	public void setCountryEn(String countryEn) {
		this.countryEn = countryEn;
	}

	public String getCountryCn() {
		return this.countryCn;
	}

	public void setCountryCn(String countryCn) {
		this.countryCn = countryCn;
	}

	public String getPortCode() {
		return this.portCode;
	}

	public void setPortCode(String portCode) {
		this.portCode = portCode;
	}

	public String getPortEn() {
		return this.portEn;
	}

	public void setPortEn(String portEn) {
		this.portEn = portEn;
	}

	public String getPortCn() {
		return this.portCn;
	}

	public void setPortCn(String portCn) {
		this.portCn = portCn;
	}

	public String getRouteCode() {
		return this.routeCode;
	}

	public void setRouteCode(String routeCode) {
		this.routeCode = routeCode;
	}

	public String getRouteEn() {
		return this.routeEn;
	}

	public void setRouteEn(String routeEn) {
		this.routeEn = routeEn;
	}

	public String getRouteCn() {
		return this.routeCn;
	}

	public void setRouteCn(String routeCn) {
		this.routeCn = routeCn;
	}

	public String getAreaCode() {
		return this.areaCode;
	}

	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}

	public String getAreaEn() {
		return this.areaEn;
	}

	public void setAreaEn(String areaEn) {
		this.areaEn = areaEn;
	}

	public String getAreaCn() {
		return this.areaCn;
	}

	public void setAreaCn(String areaCn) {
		this.areaCn = areaCn;
	}

}
