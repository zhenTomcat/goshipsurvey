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
@TableName("t_ship_detail")
public class ShipDetail implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	@TableField(value = "ship_name")
	private String shipName;

	/**  */
	private String imo;

	/**  */
	private String type;

	/**  */
	private String loa;

	/**  */
	private String beam;

	/**  */
	private String dwt;

	/**  */
	private String draft;

	/**  */
	private String gt;

	/**  */
	private String ldt;

	/**  */
	private String ss;

	/**  */
	private String bunkers;

	/**  */
	private String class;

	/**  */
	private String flag;

	/**  */
	@TableField(value = "build_year")
	private String buildYear;

	/**  */
	private String builder;

	/**  */
	@TableField(value = "ex_name")
	private String exName;

	/**  */
	@TableField(value = "inspection_date")
	private Date inspectionDate;

	/**  */
	private String location;

	/**  */
	@TableField(value = "ship_type")
	private String shipType;

	/**  */
	@TableField(value = "me_maker")
	private String meMaker;

	/**  */
	@TableField(value = "me_type")
	private String meType;

	/**  */
	@TableField(value = "me_mcr_kw")
	private String meMcrKw;

	/**  */
	@TableField(value = "me_mcr_rpm")
	private String meMcrRpm;

	/**  */
	@TableField(value = "me_running_hours")
	private String meRunningHours;

	/**  */
	@TableField(value = "me_critical_rpm")
	private String meCriticalRpm;

	/**  */
	@TableField(value = "me_others")
	private String meOthers;

	/**  */
	@TableField(value = "ap_maker")
	private String apMaker;

	/**  */
	@TableField(value = "ap_type")
	private String apType;

	/**  */
	@TableField(value = "ap_load")
	private String apLoad;

	/**  */
	@TableField(value = "ap_a1")
	private String apA1;

	/**  */
	@TableField(value = "ap_a2")
	private String apA2;

	/**  */
	@TableField(value = "ap_a3")
	private String apA3;

	/**  */
	@TableField(value = "ap_others")
	private String apOthers;

	/**  */
	@TableField(value = "b_maker")
	private String bMaker;

	/**  */
	@TableField(value = "b_type")
	private String bType;

	/**  */
	@TableField(value = "b_evaporation")
	private String bEvaporation;

	/**  */
	@TableField(value = "b_heating_area")
	private String bHeatingArea;

	/**  */
	@TableField(value = "b_others")
	private String bOthers;

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

	public String getImo() {
		return this.imo;
	}

	public void setImo(String imo) {
		this.imo = imo;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getLoa() {
		return this.loa;
	}

	public void setLoa(String loa) {
		this.loa = loa;
	}

	public String getBeam() {
		return this.beam;
	}

	public void setBeam(String beam) {
		this.beam = beam;
	}

	public String getDwt() {
		return this.dwt;
	}

	public void setDwt(String dwt) {
		this.dwt = dwt;
	}

	public String getDraft() {
		return this.draft;
	}

	public void setDraft(String draft) {
		this.draft = draft;
	}

	public String getGt() {
		return this.gt;
	}

	public void setGt(String gt) {
		this.gt = gt;
	}

	public String getLdt() {
		return this.ldt;
	}

	public void setLdt(String ldt) {
		this.ldt = ldt;
	}

	public String getSs() {
		return this.ss;
	}

	public void setSs(String ss) {
		this.ss = ss;
	}

	public String getBunkers() {
		return this.bunkers;
	}

	public void setBunkers(String bunkers) {
		this.bunkers = bunkers;
	}

	public String getClass() {
		return this.class;
	}

	public void setClass(String class) {
		this.class = class;
	}

	public String getFlag() {
		return this.flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getBuildYear() {
		return this.buildYear;
	}

	public void setBuildYear(String buildYear) {
		this.buildYear = buildYear;
	}

	public String getBuilder() {
		return this.builder;
	}

	public void setBuilder(String builder) {
		this.builder = builder;
	}

	public String getExName() {
		return this.exName;
	}

	public void setExName(String exName) {
		this.exName = exName;
	}

	public Date getInspectionDate() {
		return this.inspectionDate;
	}

	public void setInspectionDate(Date inspectionDate) {
		this.inspectionDate = inspectionDate;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getShipType() {
		return this.shipType;
	}

	public void setShipType(String shipType) {
		this.shipType = shipType;
	}

	public String getMeMaker() {
		return this.meMaker;
	}

	public void setMeMaker(String meMaker) {
		this.meMaker = meMaker;
	}

	public String getMeType() {
		return this.meType;
	}

	public void setMeType(String meType) {
		this.meType = meType;
	}

	public String getMeMcrKw() {
		return this.meMcrKw;
	}

	public void setMeMcrKw(String meMcrKw) {
		this.meMcrKw = meMcrKw;
	}

	public String getMeMcrRpm() {
		return this.meMcrRpm;
	}

	public void setMeMcrRpm(String meMcrRpm) {
		this.meMcrRpm = meMcrRpm;
	}

	public String getMeRunningHours() {
		return this.meRunningHours;
	}

	public void setMeRunningHours(String meRunningHours) {
		this.meRunningHours = meRunningHours;
	}

	public String getMeCriticalRpm() {
		return this.meCriticalRpm;
	}

	public void setMeCriticalRpm(String meCriticalRpm) {
		this.meCriticalRpm = meCriticalRpm;
	}

	public String getMeOthers() {
		return this.meOthers;
	}

	public void setMeOthers(String meOthers) {
		this.meOthers = meOthers;
	}

	public String getApMaker() {
		return this.apMaker;
	}

	public void setApMaker(String apMaker) {
		this.apMaker = apMaker;
	}

	public String getApType() {
		return this.apType;
	}

	public void setApType(String apType) {
		this.apType = apType;
	}

	public String getApLoad() {
		return this.apLoad;
	}

	public void setApLoad(String apLoad) {
		this.apLoad = apLoad;
	}

	public String getApA1() {
		return this.apA1;
	}

	public void setApA1(String apA1) {
		this.apA1 = apA1;
	}

	public String getApA2() {
		return this.apA2;
	}

	public void setApA2(String apA2) {
		this.apA2 = apA2;
	}

	public String getApA3() {
		return this.apA3;
	}

	public void setApA3(String apA3) {
		this.apA3 = apA3;
	}

	public String getApOthers() {
		return this.apOthers;
	}

	public void setApOthers(String apOthers) {
		this.apOthers = apOthers;
	}

	public String getBMaker() {
		return this.bMaker;
	}

	public void setBMaker(String bMaker) {
		this.bMaker = bMaker;
	}

	public String getBType() {
		return this.bType;
	}

	public void setBType(String bType) {
		this.bType = bType;
	}

	public String getBEvaporation() {
		return this.bEvaporation;
	}

	public void setBEvaporation(String bEvaporation) {
		this.bEvaporation = bEvaporation;
	}

	public String getBHeatingArea() {
		return this.bHeatingArea;
	}

	public void setBHeatingArea(String bHeatingArea) {
		this.bHeatingArea = bHeatingArea;
	}

	public String getBOthers() {
		return this.bOthers;
	}

	public void setBOthers(String bOthers) {
		this.bOthers = bOthers;
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

}
