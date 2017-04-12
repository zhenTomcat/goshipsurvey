package com.ctoangels.goshipsurvey.common.modules.sys.entity;

import com.baomidou.mybatisplus.annotations.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * @author Sun.Han
 * @version 1.0
 * @FileName Button.java
 * @Description:
 * @Date 2015年4月29日
 */
@TableName("sys_button")
public class Button implements java.io.Serializable {

    @TableField(exist = false)
    private static final long serialVersionUID = 8552758267353482774L;

    @TableId(value = "id",type = IdType.AUTO)
    private Integer id;
    @TableField(value = "menu_id")
    private Integer menuId;
    @TableField(value = "button_name")
    private String buttonName;
    @TableField(value = "button_url")
    private String buttonUrl;

    @TableField(value = "del_flag")
    private Integer delFlag;

    @TableField(exist = false)
    private boolean hasButton = false;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    public String getButtonName() {
        return buttonName;
    }

    public void setButtonName(String buttonName) {
        this.buttonName = buttonName;
    }

    public String getButtonUrl() {
        return buttonUrl;
    }

    public void setButtonUrl(String buttonUrl) {
        this.buttonUrl = buttonUrl;
    }

    public boolean isHasButton() {
        return hasButton;
    }

    public void setHasButton(boolean hasButton) {
        this.hasButton = hasButton;
    }

    public Integer getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(Integer delFlag) {
        this.delFlag = delFlag;
    }
}
