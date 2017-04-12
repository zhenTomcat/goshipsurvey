package com.ctoangels.goshipsurvey.common.modules.sys.entity;

import java.io.Serializable;
import java.util.List;
import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.ctoangels.goshipsurvey.common.util.Const;

/**
 * @author Sun.Han
 * @version 1.0
 * @FileName Role.java
 * @Description:
 * @Date 2015年4月29日
 */
@TableName("sys_role")
public class Role implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(value = "id", type = IdType.AUTO)
	private Integer id;

	/** 角色名称 */
	@TableField(value = "role_name")
	private String roleName;

	/** 可被删除 0=不行 1=可以 */
	private Integer removable;

	/** 可被分配 0=不行 1=可以 */
	private Integer allocatable;

	/** 描述 */
	private String description;

	/** 是否删除 1：没删除 -1：删除 */
	@TableField(value = "del_flag")
	private Integer delFlag = Const.DEL_FLAG_NORMAL;

	@TableField(exist = false)
	private Boolean checked;
	@TableField(exist = false)
    private List<Menu> menus;
	@TableField(exist = false)
    private List<Button> buttons;


	public Boolean getChecked() {
		return checked;
	}

	public void setChecked(Boolean checked) {
		this.checked = checked;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Integer getRemovable() {
		return this.removable;
	}

	public void setRemovable(Integer removable) {
		this.removable = removable;
	}

	public Integer getAllocatable() {
		return this.allocatable;
	}

	public void setAllocatable(Integer allocatable) {
		this.allocatable = allocatable;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getDelFlag() {
		return delFlag;
	}

	public void setDelFlag(Integer delFlag) {
		this.delFlag = delFlag;
	}

	public List<Menu> getMenus() {
        return menus;
    }

    public void setMenus(List<Menu> menus) {
        this.menus = menus;
    }

    public List<Button> getButtons() {
        return buttons;
    }

    public void setButtons(List<Button> buttons) {
        this.buttons = buttons;
    }

}
