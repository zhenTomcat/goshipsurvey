package com.ctoangels.goshipsurvey.common.util;

/**
 * Created by lenovo on 2017/3/29.
 */
//为了specItem用
public class ItemId {
    private String code;

    private Integer id;

    public ItemId() {
    }

    public ItemId(String code, Integer id) {
        this.code = code;
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
