package com.ctoangels.goshipsurvey.common.util;

import com.alibaba.fastjson.JSON;

import java.util.*;

/**
 * Created by sunhan on 26/11/2016.
 */
public class ResponseMessage {

    private static final long serialVersionUID = 8992436576262574064L;
    /**
     * 是否成功
     */
    private boolean success;

    /**
     * 反馈数据
     */
    private Object data;

    /**
     * 反馈信息
     */
    private String message;

    /**
     * 响应码
     */
    private int code;


    private transient boolean onlyData;

    private transient String callback;

    protected ResponseMessage(String message) {
        this.code = 500;
        this.message = message;
        this.success = false;
    }

    protected ResponseMessage(boolean success, Object data) {
        this.code = success ? 200 : 500;
        this.data = data;
        this.success = success;
    }

    protected ResponseMessage(boolean success, Object data, int code) {
        this(success, data);
        this.code = code;
    }


    protected Set<String> getStringListFormMap(Map<Class<?>, Set<String>> map, Class type) {
        Set<String> list = map.get(type);
        if (list == null) {
            list = new HashSet<>();
            map.put(type, list);
        }
        return list;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public Object getData() {
        return data;
    }

    public ResponseMessage setData(Object data) {
        this.data = data;
        return this;
    }

    @Override
    public String toString() {
        return JSON.toJSONStringWithDateFormat(this, "yyyy-MM-dd HH:mm:ss");
    }

    public int getCode() {
        return code;
    }

    public ResponseMessage setCode(int code) {
        this.code = code;
        return this;
    }

    public static ResponseMessage fromJson(String json) {
        return JSON.parseObject(json, ResponseMessage.class);
    }

    public ResponseMessage onlyData() {
        setOnlyData(true);
        return this;
    }

    public void setOnlyData(boolean onlyData) {
        this.onlyData = onlyData;
    }

    public boolean isOnlyData() {
        return onlyData;
    }

    public ResponseMessage callback(String callback) {
        this.callback = callback;
        return this;
    }

    public String getCallback() {
        return callback;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public static ResponseMessage ok() {
        return ok(null);
    }

    public static ResponseMessage ok(Object data) {
        return new ResponseMessage(true, data);
    }

    public static ResponseMessage created(Object data) {
        return new ResponseMessage(true, data, 201);
    }

    public static ResponseMessage error(String message) {
        return new ResponseMessage(message);
    }

    public static ResponseMessage error(String message, int code) {
        return new ResponseMessage(message).setCode(code);
    }

}
