package com.ctoangels.goshipsurvey.common.modules.sys.entity;

import com.baomidou.mybatisplus.annotations.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.List;

/**
 * @author Sun.Han
 * @version 1.0
 * @FileName Menu.java
 * @Description:
 * @Date 2015年4月29日
 */

@TableName("sys_menu")
public class Menu implements Serializable {

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**  */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 菜单名称
     */
    @TableField(value = "menu_name")
    private String menuName;

    /**
     * 菜单URL
     */
    @TableField(value = "menu_url")
    private String menuUrl;

    /**
     * 父菜单ID
     */
    @TableField(value = "parent_id")
    private Integer parentId;

    /**
     * 菜单顺序
     */
    @TableField(value = "menu_order")
    private Integer menuOrder;

    /**
     * 菜单图标
     */
    @TableField(value = "menu_icon")
    private String menuIcon;

    /**
     * 菜单类型 资源类型：1-分类； 2-菜单
     */
    @TableField(value = "menu_type")
    private Integer menuType;

    /**  */
    private Integer removable;

    /**  */
    private String description;


    /**
     * 项目类型  1:量油 2:买卖船
     */
    @TableField(value = "pro_type")
    private Integer proType;

    /**  */
    @TableField(value = "del_flag")
    private Integer delFlag;

    @TableField(exist = false)
    private Menu parentMenu;
    @TableField(exist = false)
    private List<Menu> subMenu;
    @TableField(exist = false)
    private List<Button> buttons;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public String getMenuUrl() {
        return menuUrl;
    }

    public void setMenuUrl(String menuUrl) {
        this.menuUrl = menuUrl;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Integer getMenuOrder() {
        return menuOrder;
    }

    public void setMenuOrder(Integer menuOrder) {
        this.menuOrder = menuOrder;
    }

    public String getMenuIcon() {
        return menuIcon;
    }

    public void setMenuIcon(String menuIcon) {
        this.menuIcon = menuIcon;
    }

    public Integer getMenuType() {
        return menuType;
    }

    public void setMenuType(Integer menuType) {
        this.menuType = menuType;
    }

    public Menu getParentMenu() {
        return parentMenu;
    }

    public void setParentMenu(Menu parentMenu) {
        this.parentMenu = parentMenu;
    }

    public List<Menu> getSubMenu() {
        return subMenu;
    }

    public void setSubMenu(List<Menu> subMenu) {
        this.subMenu = subMenu;
    }

    public Integer getRemovable() {
        return removable;
    }

    public void setRemovable(Integer removable) {
        this.removable = removable;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getProType() {
        return proType;
    }

    public void setProType(Integer proType) {
        this.proType = proType;
    }

    public Integer getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(Integer delFlag) {
        this.delFlag = delFlag;
    }

    public List<Button> getButtons() {
        return buttons;
    }

    public void setButtons(List<Button> buttons) {
        this.buttons = buttons;
    }
}
