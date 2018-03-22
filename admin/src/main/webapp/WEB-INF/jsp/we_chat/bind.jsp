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
<c:if test="${!empty errMsg}">
    <div class="page" id="err_page">
        <div class="weui-msg">
            <div class="weui-msg__icon-area"><i class="weui-icon-warn weui-icon_msg"></i></div>
            <div class="weui-msg__text-area">
                <h2 class="weui-msg__title">错误</h2>
                    <%--<p class="weui-msg__desc">内容详情，可根据实际需要安排，如果换行则不超过规定长度，居中展现<a href="javascript:void(0);">文字链接</a></p>--%>
            </div>
            <div class="weui-msg__opr-area">
                <p class="weui-btn-area">
                    <a href="javascript:WeixinJSBridge.call('closeWindow');" class="weui-btn weui-btn_primary">确定</a>
                </p>
            </div>
        </div>
    </div>
</c:if>
<c:if test="${empty errMsg}">
    <div class="page" id="success_page" style="display: none">
        <div class="weui-msg">
            <div class="weui-msg__icon-area"><i class="weui-icon-success weui-icon_msg"></i></div>
            <div class="weui-msg__text-area">
                <h2 class="weui-msg__title">绑定成功</h2>
                    <%--<p class="weui-msg__desc">内容详情，可根据实际需要安排，如果换行则不超过规定长度，居中展现<a href="javascript:void(0);">文字链接</a></p>--%>
            </div>
            <div class="weui-msg__opr-area">
                <p class="weui-btn-area">
                    <a onclick="closeWindow()" class="weui-btn weui-btn_primary">确定</a>
                </p>
            </div>
        </div>
    </div>
    <div class="page" id="err_page" style="display: none">
        <div class="weui-msg">
            <div class="weui-msg__icon-area"><i class="weui-icon-warn weui-icon_msg"></i></div>
            <div class="weui-msg__text-area">
                <h2 class="weui-msg__title" id="err_title"></h2>
                    <%--<p class="weui-msg__desc">内容详情，可根据实际需要安排，如果换行则不超过规定长度，居中展现<a href="javascript:void(0);">文字链接</a></p>--%>
            </div>
            <div class="weui-msg__opr-area">
                <p class="weui-btn-area">
                    <a onclick="closeWindow()" class="weui-btn weui-btn_primary">确定</a>
                </p>
            </div>
        </div>
    </div>
    <div class="page" id="bind_page">
        <form id="form">
            <div class="page__hd">
                <div class="page__title">验船师绑定</div>
            </div>
            <div class="page__bd">
                <div class="weui-cells__title" id="shipNameLabel">请输入邮箱</div>
                <div class="weui-cells weui-cells_after-title">
                    <div class="weui-cell weui-cell_input">
                        <div class="weui-cell__bd">
                            <input id="email" class="weui-input" type="text" required pattern="REG_EMAIL"
                                   placeholder="邮箱"/>
                        </div>
                    </div>
                </div>
                <div class="weui-cells__title" id="imoLabel">请输入手机号码</div>
                <div class="weui-cells weui-cells_after-title">
                    <div class="weui-cell weui-cell_input">
                        <div class="weui-cell__bd">
                            <input id="tel" class="weui-input" type="tel" required pattern="REG_MOBILE"
                                   placeholder="手机号码"/>
                        </div>
                    </div>
                </div>
                <div class="weui-btn-area">
                    <button class="weui-btn weui-btn_primary" id="submitForm" type="button" onclick="validateForm()">确定
                    </button>
                </div>
            </div>
        </form>
    </div>
</c:if>
</body>
</html>
<script src="${ctx}/static/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="${ctx}/static/js/we-ui/weui.min.js"></script>
<script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
<script>
    var email = $('#email');
    var tel = $('#tel');
    var bindPage = $('#bind_page')
    var successPage = $('#success_page');
    var errPage = $('#err_page');
    var errTitle = $('#err_title');

    var emailReg = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
    var telReg = /^1(3[0-9]|4[57]|5[0-35-9]|7[0135678]|8[0-9])\d{8}$/;

    function validateForm() {
        if (validateEmail() && validateTel()) {
            $.ajax({
                type: 'post',
                url: '/bindWeiXinPublic',
                data: {tel: tel.val(), email: email.val()},
                success: function (res) {
                    bindPage.hide();
                    if (!res.errMsg) {
                        successPage.show();
                    } else {
                        errTitle.text(res.errMsg);
                        errPage.show();
                    }
                }
            })
        }
    }

    function validateEmail() {
        var val = email.val();
        if (!val || !emailReg.test(val)) {
            email.addClass('weui-cell_warn');
            weui.topTips('请输入正确的邮箱');
            return false;
        }
        email.removeClass('weui-cell_warn');
        return true;
    }

    function validateTel() {
        var val = tel.val();
        if (!val || !telReg.test(val)) {
            tel.addClass('weui-cell_warn');
            weui.topTips('请输入正确的手机号码');
            return false;
        }
        tel.removeClass('weui-cell_warn');
        return true;
    }

    function closeWindow() {
        wx.closeWindow();
    }

</script>
