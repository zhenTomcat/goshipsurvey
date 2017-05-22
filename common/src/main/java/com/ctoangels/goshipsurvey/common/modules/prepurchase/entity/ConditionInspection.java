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
@TableName("t_condition_inspection")
public class ConditionInspection implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	private String hull;

	/**  */
	private String deck;

	/**  */
	@TableField(value = "deck_marchinery")
	private String deckMarchinery;

	/**  */
	@TableField(value = "ballast_tank")
	private String ballastTank;

	/**  */
	private String accommodation;

	/**  */
	@TableField(value = "navigation_bridge")
	private String navigationBridge;

	/**  */
	@TableField(value = "machinery_space")
	private String machinerySpace;

	/**  */
	@TableField(value = "life_saving")
	private String lifeSaving;

	/**  */
	private String galley;

	/**  */
	@TableField(value = "ballast_water")
	private String ballastWater;

	/**  */
	@TableField(value = "hatch_cover")
	private String hatchCover;

	/**  */
	@TableField(value = "cargo_hold")
	private String cargoHold;

	/**  */
	@TableField(value = "cargo_tank")
	private String cargoTank;

	/**  */
	@TableField(value = "cargo_control_room")
	private String cargoControlRoom;

	/**  */
	@TableField(value = "pump_room")
	private String pumpRoom;

	/**  */
	private String pipelines;

	/**  */
	@TableField(value = "inter_gas_system")
	private String interGasSystem;

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


	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getHull() {
		return this.hull;
	}

	public void setHull(String hull) {
		this.hull = hull;
	}

	public String getDeck() {
		return this.deck;
	}

	public void setDeck(String deck) {
		this.deck = deck;
	}

	public String getDeckMarchinery() {
		return this.deckMarchinery;
	}

	public void setDeckMarchinery(String deckMarchinery) {
		this.deckMarchinery = deckMarchinery;
	}

	public String getBallastTank() {
		return this.ballastTank;
	}

	public void setBallastTank(String ballastTank) {
		this.ballastTank = ballastTank;
	}

	public String getAccommodation() {
		return this.accommodation;
	}

	public void setAccommodation(String accommodation) {
		this.accommodation = accommodation;
	}

	public String getNavigationBridge() {
		return this.navigationBridge;
	}

	public void setNavigationBridge(String navigationBridge) {
		this.navigationBridge = navigationBridge;
	}

	public String getMachinerySpace() {
		return this.machinerySpace;
	}

	public void setMachinerySpace(String machinerySpace) {
		this.machinerySpace = machinerySpace;
	}

	public String getLifeSaving() {
		return this.lifeSaving;
	}

	public void setLifeSaving(String lifeSaving) {
		this.lifeSaving = lifeSaving;
	}

	public String getGalley() {
		return this.galley;
	}

	public void setGalley(String galley) {
		this.galley = galley;
	}

	public String getBallastWater() {
		return this.ballastWater;
	}

	public void setBallastWater(String ballastWater) {
		this.ballastWater = ballastWater;
	}

	public String getHatchCover() {
		return this.hatchCover;
	}

	public void setHatchCover(String hatchCover) {
		this.hatchCover = hatchCover;
	}

	public String getCargoHold() {
		return this.cargoHold;
	}

	public void setCargoHold(String cargoHold) {
		this.cargoHold = cargoHold;
	}

	public String getCargoTank() {
		return this.cargoTank;
	}

	public void setCargoTank(String cargoTank) {
		this.cargoTank = cargoTank;
	}

	public String getCargoControlRoom() {
		return this.cargoControlRoom;
	}

	public void setCargoControlRoom(String cargoControlRoom) {
		this.cargoControlRoom = cargoControlRoom;
	}

	public String getPumpRoom() {
		return this.pumpRoom;
	}

	public void setPumpRoom(String pumpRoom) {
		this.pumpRoom = pumpRoom;
	}

	public String getPipelines() {
		return this.pipelines;
	}

	public void setPipelines(String pipelines) {
		this.pipelines = pipelines;
	}

	public String getInterGasSystem() {
		return this.interGasSystem;
	}

	public void setInterGasSystem(String interGasSystem) {
		this.interGasSystem = interGasSystem;
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

}
