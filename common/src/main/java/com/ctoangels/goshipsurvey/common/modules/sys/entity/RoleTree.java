package com.ctoangels.goshipsurvey.common.modules.sys.entity;

public class RoleTree{
    private String id;
    private Integer pId;
    private String name;
    private String open;
    private String resFlag;
    private Boolean checked;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOpen() {
        return open;
    }

    public void setOpen(String open) {
        this.open = open;
    }

    public String getResFlag() {
        return resFlag;
    }

    public void setResFlag(String resFlag) {
        this.resFlag = resFlag;
    }

    public Boolean getChecked() {
        return checked;
    }

    public void setChecked(Boolean checked) {
        this.checked = checked;
    }
}
