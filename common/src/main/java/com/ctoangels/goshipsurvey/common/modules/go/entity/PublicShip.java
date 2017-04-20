package com.ctoangels.goshipsurvey.common.modules.go.entity;

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
@TableName("t_public_ship")
public class PublicShip implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** id */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/** IMO 船号 */
	private String imo;

	/** Status 状态 */
	private String status;

	/** Name 船名 */
	private String name;

	/** BuildYear 建造时间 */
	private String buildyear;

	/** Builder 建造者 */
	private String builder;

	/** ShipType 船型 */
	private String model;

	/**  */
	private String ice;

	/**  */
	private String owned;

	/**  */
	private String bunkers;

	/** Bulker :Hatch Type, Gas:Tank No., Chemical:Total Cu.m, Tanker:Total Cu.m, Container:Gear,Multi-Purpose:De./Ho./Ha, Ro-Ro/PCC:Lane L/W/H */
	private String twopenult;

	/** Bulker:Grain/Bale, Gas:Pumps, Chemical:Tnk/Pmp/Sep, Tanker:Tnk/Pmp/Sep, Container:DWT/TEU,Multi-Purpose:Teu, Ro-Ro/PCC:Veh. */
	private String threepenult;

	/**  */
	private String tpc;

	/** 船舶呼号 */
	private String callsign;

	/** 马力 */
	private String hp;

	/** Bulker:Gear, Gas:Max P/Min T, Chemical:Max t/hr, Tanker:Max t/hr, Container:Thrust,Multi-Purpose:Gear, Ro-Ro/PCC:M.Ramp */
	private String fourpenult;

	/**  */
	private String nt;

	/** Bulker:Lakes Fitted, Gas:Cargo, Chemical:Coating, Tanker:Coating, Container:TEU */
	private String onelast;

	/** Bulker:Log Fitted, Gas:Ammonia, Chemical:IMO grade, Tanker:IMO grade, Container:Rfr Teu/Plugs */
	private String twolast;

	/** Bulker:Str.Ore, Gas:Gas Con, Chemical:Heating, Tanker:Heating, Container:Ho/De */
	private String threelast;

	/** Bulker:Str.Heavy, Gas:Liq.Con, Chemical:SBT, Tanker:SBT, Container:Tiers */
	private String fourlast;

	/** Bulker:Ho/Ha, Gas:Tank Type, Chemical:Hull Type, Tanker:Hull Type, Container:Ho/Ha, Multi-Purpose: */
	private String onepenult;

	/** 船长 */
	private String loa;

	/** 船宽 */
	private String beam;

	/** 总吨 */
	private String ggt;

	/** 载重吨 */
	private String dwt;

	/**  */
	private String flag;

	/** 船级社 */
	private String classs;

	/** 过去名称 */
	private String exname;

	/** M/E Maker/Type */
	private String engine;

	/** 特检时间 */
	@TableField(value = "next_ss")
	private String nextSs;

	/** 坞检时间 */
	@TableField(value = "next_dd")
	private String nextDd;

	/** 转速 */
	private String speed;

	/** 吃水 */
	private String draft;

	/**  */
	private String ldt;

	/** 主机：厂家 */
	private String mmaker;

	/** 主机：型号 */
	private String mmype;

	/** 主机：马力/转速 */
	private String mbr;

	/** 主机：缸径 */
	private String mcyl;

	/** 辅机：厂家 */
	private String amake;

	/** 辅机：型号 */
	private String atype;

	/** 辅机：数量 */
	private String aqty;

	/** 辅机：额定功率 */
	private String arated;

	/** 辅机：缸径 */
	private String acyl;

	/** 锅炉：型号 */
	private String ctype;

	/** 锅炉：数量 */
	private String cqty;

	/** Boiler AUX.boiler heating area(m2)锅炉：热交换面积 */
	private String baux;

	/** Boiler Large water tube boiler evaporation(ton/hour) */
	private String blarge;

	/** Boiler Gas boiler heating area(m2) */
	private String bgas;

	/** Boiler Exhaust boiler heating area(m2) */
	private String bexhaust;

	/** EM CY GEN Maker */
	private String emaker;

	/** EM CY GEN Type */
	private String etype;

	/** Windlass Anchor */
	private String wanchor;

	/** Windlass Capstan mooring(mm) */
	private String wcapstan;

	/** Tailshaft Dia.(mm) */
	private String tasishaft;

	/** Anchor(kg) */
	private String anchor;

	/** Anchor chain dia.(mm) */
	private String anchorchain;

	/** Air compressor low pressure cly.bore(mm) */
	private String air;

	/** Freon refrigetating compressor rated ourput(m3) */
	private String freon;

	/** Refrigetating system heat exchange area(m2) */
	private String refrige;

	/** Tubular  Heat Exhaust surface area(m2) */
	private String tubluar;

	/**  */
	private String propeller;

	/**  */
	private String filename;

	/**  */
	private Date inputdate;

	/**  */
	private String remark;

	/**  */
	@TableField(value = "type_id")
	private Integer typeId;

	/**  */
	private String category;


	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getImo() {
		return this.imo;
	}

	public void setImo(String imo) {
		this.imo = imo;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBuildyear() {
		return this.buildyear;
	}

	public void setBuildyear(String buildyear) {
		this.buildyear = buildyear;
	}

	public String getBuilder() {
		return this.builder;
	}

	public void setBuilder(String builder) {
		this.builder = builder;
	}

	public String getModel() {
		return this.model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getIce() {
		return this.ice;
	}

	public void setIce(String ice) {
		this.ice = ice;
	}

	public String getOwned() {
		return this.owned;
	}

	public void setOwned(String owned) {
		this.owned = owned;
	}

	public String getBunkers() {
		return this.bunkers;
	}

	public void setBunkers(String bunkers) {
		this.bunkers = bunkers;
	}

	public String getTwopenult() {
		return this.twopenult;
	}

	public void setTwopenult(String twopenult) {
		this.twopenult = twopenult;
	}

	public String getThreepenult() {
		return this.threepenult;
	}

	public void setThreepenult(String threepenult) {
		this.threepenult = threepenult;
	}

	public String getTpc() {
		return this.tpc;
	}

	public void setTpc(String tpc) {
		this.tpc = tpc;
	}

	public String getCallsign() {
		return this.callsign;
	}

	public void setCallsign(String callsign) {
		this.callsign = callsign;
	}

	public String getHp() {
		return this.hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getFourpenult() {
		return this.fourpenult;
	}

	public void setFourpenult(String fourpenult) {
		this.fourpenult = fourpenult;
	}

	public String getNt() {
		return this.nt;
	}

	public void setNt(String nt) {
		this.nt = nt;
	}

	public String getOnelast() {
		return this.onelast;
	}

	public void setOnelast(String onelast) {
		this.onelast = onelast;
	}

	public String getTwolast() {
		return this.twolast;
	}

	public void setTwolast(String twolast) {
		this.twolast = twolast;
	}

	public String getThreelast() {
		return this.threelast;
	}

	public void setThreelast(String threelast) {
		this.threelast = threelast;
	}

	public String getFourlast() {
		return this.fourlast;
	}

	public void setFourlast(String fourlast) {
		this.fourlast = fourlast;
	}

	public String getOnepenult() {
		return this.onepenult;
	}

	public void setOnepenult(String onepenult) {
		this.onepenult = onepenult;
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

	public String getGgt() {
		return this.ggt;
	}

	public void setGgt(String ggt) {
		this.ggt = ggt;
	}

	public String getDwt() {
		return this.dwt;
	}

	public void setDwt(String dwt) {
		this.dwt = dwt;
	}

	public String getFlag() {
		return this.flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getClasss() {
		return this.classs;
	}

	public void setClasss(String classs) {
		this.classs = classs;
	}

	public String getExname() {
		return this.exname;
	}

	public void setExname(String exname) {
		this.exname = exname;
	}

	public String getEngine() {
		return this.engine;
	}

	public void setEngine(String engine) {
		this.engine = engine;
	}

	public String getNextSs() {
		return this.nextSs;
	}

	public void setNextSs(String nextSs) {
		this.nextSs = nextSs;
	}

	public String getNextDd() {
		return this.nextDd;
	}

	public void setNextDd(String nextDd) {
		this.nextDd = nextDd;
	}

	public String getSpeed() {
		return this.speed;
	}

	public void setSpeed(String speed) {
		this.speed = speed;
	}

	public String getDraft() {
		return this.draft;
	}

	public void setDraft(String draft) {
		this.draft = draft;
	}

	public String getLdt() {
		return this.ldt;
	}

	public void setLdt(String ldt) {
		this.ldt = ldt;
	}

	public String getMmaker() {
		return this.mmaker;
	}

	public void setMmaker(String mmaker) {
		this.mmaker = mmaker;
	}

	public String getMmype() {
		return this.mmype;
	}

	public void setMmype(String mmype) {
		this.mmype = mmype;
	}

	public String getMbr() {
		return this.mbr;
	}

	public void setMbr(String mbr) {
		this.mbr = mbr;
	}

	public String getMcyl() {
		return this.mcyl;
	}

	public void setMcyl(String mcyl) {
		this.mcyl = mcyl;
	}

	public String getAmake() {
		return this.amake;
	}

	public void setAmake(String amake) {
		this.amake = amake;
	}

	public String getAtype() {
		return this.atype;
	}

	public void setAtype(String atype) {
		this.atype = atype;
	}

	public String getAqty() {
		return this.aqty;
	}

	public void setAqty(String aqty) {
		this.aqty = aqty;
	}

	public String getArated() {
		return this.arated;
	}

	public void setArated(String arated) {
		this.arated = arated;
	}

	public String getAcyl() {
		return this.acyl;
	}

	public void setAcyl(String acyl) {
		this.acyl = acyl;
	}

	public String getCtype() {
		return this.ctype;
	}

	public void setCtype(String ctype) {
		this.ctype = ctype;
	}

	public String getCqty() {
		return this.cqty;
	}

	public void setCqty(String cqty) {
		this.cqty = cqty;
	}

	public String getBaux() {
		return this.baux;
	}

	public void setBaux(String baux) {
		this.baux = baux;
	}

	public String getBlarge() {
		return this.blarge;
	}

	public void setBlarge(String blarge) {
		this.blarge = blarge;
	}

	public String getBgas() {
		return this.bgas;
	}

	public void setBgas(String bgas) {
		this.bgas = bgas;
	}

	public String getBexhaust() {
		return this.bexhaust;
	}

	public void setBexhaust(String bexhaust) {
		this.bexhaust = bexhaust;
	}

	public String getEmaker() {
		return this.emaker;
	}

	public void setEmaker(String emaker) {
		this.emaker = emaker;
	}

	public String getEtype() {
		return this.etype;
	}

	public void setEtype(String etype) {
		this.etype = etype;
	}

	public String getWanchor() {
		return this.wanchor;
	}

	public void setWanchor(String wanchor) {
		this.wanchor = wanchor;
	}

	public String getWcapstan() {
		return this.wcapstan;
	}

	public void setWcapstan(String wcapstan) {
		this.wcapstan = wcapstan;
	}

	public String getTasishaft() {
		return this.tasishaft;
	}

	public void setTasishaft(String tasishaft) {
		this.tasishaft = tasishaft;
	}

	public String getAnchor() {
		return this.anchor;
	}

	public void setAnchor(String anchor) {
		this.anchor = anchor;
	}

	public String getAnchorchain() {
		return this.anchorchain;
	}

	public void setAnchorchain(String anchorchain) {
		this.anchorchain = anchorchain;
	}

	public String getAir() {
		return this.air;
	}

	public void setAir(String air) {
		this.air = air;
	}

	public String getFreon() {
		return this.freon;
	}

	public void setFreon(String freon) {
		this.freon = freon;
	}

	public String getRefrige() {
		return this.refrige;
	}

	public void setRefrige(String refrige) {
		this.refrige = refrige;
	}

	public String getTubluar() {
		return this.tubluar;
	}

	public void setTubluar(String tubluar) {
		this.tubluar = tubluar;
	}

	public String getPropeller() {
		return this.propeller;
	}

	public void setPropeller(String propeller) {
		this.propeller = propeller;
	}

	public String getFilename() {
		return this.filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public Date getInputdate() {
		return this.inputdate;
	}

	public void setInputdate(Date inputdate) {
		this.inputdate = inputdate;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getTypeId() {
		return this.typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getCategory() {
		return this.category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

}
