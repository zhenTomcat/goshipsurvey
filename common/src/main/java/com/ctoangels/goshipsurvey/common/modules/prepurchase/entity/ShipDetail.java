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
    private String ggt;

    /**  */
    private String ldt;

    /**  */
    private String ss;

    /**  */
    private String bunkers;

    /**  */
    @TableField(value = "ship_class")
    private String shipClass;

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
	@TableField(value = "call_sign")
	private String callSign;


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
    @TableField(value = "bo_maker")
    private String boMaker;

    /**  */
    @TableField(value = "bo_type")
    private String boType;

    /**  */
    @TableField(value = "bo_evaporation")
    private String boEvaporation;

    /**  */
    @TableField(value = "bo_heating_area")
    private String boHeatingArea;

    /**  */
    @TableField(value = "bo_others")
    private String boOthers;

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

    private Integer wog;

    /*船的图片*/
    @TableField(value = "ship_img")
    private String shipImg;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getShipName() {
        return shipName;
    }

    public void setShipName(String shipName) {
        this.shipName = shipName;
    }

    public String getImo() {
        return imo;
    }

    public void setImo(String imo) {
        this.imo = imo;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLoa() {
        return loa;
    }

    public void setLoa(String loa) {
        this.loa = loa;
    }

    public String getBeam() {
        return beam;
    }

    public void setBeam(String beam) {
        this.beam = beam;
    }

    public String getDwt() {
        return dwt;
    }

    public void setDwt(String dwt) {
        this.dwt = dwt;
    }

    public String getDraft() {
        return draft;
    }

    public void setDraft(String draft) {
        this.draft = draft;
    }

    public String getGgt() {
        return ggt;
    }

    public void setGgt(String ggt) {
        this.ggt = ggt;
    }

    public String getLdt() {
        return ldt;
    }

    public void setLdt(String ldt) {
        this.ldt = ldt;
    }

    public String getSs() {
        return ss;
    }

    public void setSs(String ss) {
        this.ss = ss;
    }

    public String getBunkers() {
        return bunkers;
    }

    public void setBunkers(String bunkers) {
        this.bunkers = bunkers;
    }

    public String getShipClass() {
        return shipClass;
    }

    public void setShipClass(String shipClass) {
        this.shipClass = shipClass;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public String getBuildYear() {
        return buildYear;
    }

    public void setBuildYear(String buildYear) {
        this.buildYear = buildYear;
    }

    public String getBuilder() {
        return builder;
    }

    public void setBuilder(String builder) {
        this.builder = builder;
    }

    public String getExName() {
        return exName;
    }

    public void setExName(String exName) {
        this.exName = exName;
    }

    public Date getInspectionDate() {
        return inspectionDate;
    }

    public void setInspectionDate(Date inspectionDate) {
        this.inspectionDate = inspectionDate;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getShipType() {
        return shipType;
    }

    public void setShipType(String shipType) {
        this.shipType = shipType;
    }

    public String getMeMaker() {
        return meMaker;
    }

    public void setMeMaker(String meMaker) {
        this.meMaker = meMaker;
    }

    public String getMeType() {
        return meType;
    }

    public void setMeType(String meType) {
        this.meType = meType;
    }

    public String getMeMcrKw() {
        return meMcrKw;
    }

    public void setMeMcrKw(String meMcrKw) {
        this.meMcrKw = meMcrKw;
    }

    public String getMeMcrRpm() {
        return meMcrRpm;
    }

    public void setMeMcrRpm(String meMcrRpm) {
        this.meMcrRpm = meMcrRpm;
    }

    public String getMeRunningHours() {
        return meRunningHours;
    }

    public void setMeRunningHours(String meRunningHours) {
        this.meRunningHours = meRunningHours;
    }

    public String getCallSign() {
        return callSign;
    }

    public void setCallSign(String callSign) {
        this.callSign = callSign;
    }

    public String getMeCriticalRpm() {
        return meCriticalRpm;
    }

    public void setMeCriticalRpm(String meCriticalRpm) {
        this.meCriticalRpm = meCriticalRpm;
    }

    public String getMeOthers() {
        return meOthers;
    }

    public void setMeOthers(String meOthers) {
        this.meOthers = meOthers;
    }

    public String getApMaker() {
        return apMaker;
    }

    public void setApMaker(String apMaker) {
        this.apMaker = apMaker;
    }

    public String getApType() {
        return apType;
    }

    public void setApType(String apType) {
        this.apType = apType;
    }

    public String getApLoad() {
        return apLoad;
    }

    public void setApLoad(String apLoad) {
        this.apLoad = apLoad;
    }

    public String getApA1() {
        return apA1;
    }

    public void setApA1(String apA1) {
        this.apA1 = apA1;
    }

    public String getApA2() {
        return apA2;
    }

    public void setApA2(String apA2) {
        this.apA2 = apA2;
    }

    public String getApA3() {
        return apA3;
    }

    public void setApA3(String apA3) {
        this.apA3 = apA3;
    }

    public String getApOthers() {
        return apOthers;
    }

    public void setApOthers(String apOthers) {
        this.apOthers = apOthers;
    }

    public String getBoMaker() {
        return boMaker;
    }

    public void setBoMaker(String boMaker) {
        this.boMaker = boMaker;
    }

    public String getBoType() {
        return boType;
    }

    public void setBoType(String boType) {
        this.boType = boType;
    }

    public String getBoEvaporation() {
        return boEvaporation;
    }

    public void setBoEvaporation(String boEvaporation) {
        this.boEvaporation = boEvaporation;
    }

    public String getBoHeatingArea() {
        return boHeatingArea;
    }

    public void setBoHeatingArea(String boHeatingArea) {
        this.boHeatingArea = boHeatingArea;
    }

    public String getBoOthers() {
        return boOthers;
    }

    public void setBoOthers(String boOthers) {
        this.boOthers = boOthers;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public Integer getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(Integer delFlag) {
        this.delFlag = delFlag;
    }

    public Integer getWog() {
        return wog;
    }

    public void setWog(Integer wog) {
        this.wog = wog;
    }

    public String getShipImg() {
        return shipImg;
    }

    public void setShipImg(String shipImg) {
        this.shipImg = shipImg;
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
