<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <title>用户绑定</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>Title</title>
    <link href="${ctx}/static/css/we-ui/weui.min.css" rel="stylesheet" type="text/css"/>
    <style>
        html {
            background-color: #F8F8F8;
        }

        .page {
            background-color: #F8F8F8;
            font-size: 16px;
            font-family: -apple-system-font, Helvetica Neue, Helvetica, sans-serif;
        }

        .page__hd {
            padding: 40px;
        }

        .page__bd {
            padding-bottom: 40px;
        }

        .page__bd_spacing {
            padding-left: 15px;
            padding-right: 15px;
        }

        .page__ft {
            padding-bottom: 10px;
            text-align: center;
        }

        .page__title {
            text-align: left;
            font-size: 20px;
            font-weight: 400;
        }

        .page__desc {
            margin-top: 5px;
            color: #888888;
            text-align: left;
            font-size: 14px;
        }

        .weui-cells {
            margin-top: 0;
        }
    </style>
</head>
<body>
<div class="page">
    <div class="page__hd">
        <div class="page__title">验船师绑定</div>
    </div>
    <div class="page__bd">
        <div class="weui-cells__title" id="shipNameLabel">请输入邮箱</div>
        <div class="weui-cells weui-cells_after-title">
            <div class="weui-cell weui-cell_input">
                <div class="weui-cell__bd">
                    <input class="weui-input" placeholder="" value=""/>
                </div>
            </div>
        </div>
        <div class="weui-cells__title" id="imoLabel">请输入手机号码</div>
        <div class="weui-cells weui-cells_after-title">
            <div class="weui-cell weui-cell_input">
                <div class="weui-cell__bd">
                    <input class="weui-input" id="imo" placeholder="" value=""/>
                </div>
            </div>
        </div>
        <div class="weui-btn-area">
            <button class="weui-btn weui-btn_primary">确定
            </button>
        </div>
    </div>
</div>
</body>
</html>
