<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="global" value="https://windyeel.oss-cn-shanghai.aliyuncs.com/global"/>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title><fmt:message key="sys.site.title"/></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <base href="<%=basePath%>">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <link href="${global}/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="${global}/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
    <link href="${global}/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${global}/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
    <link href="${global}/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css"/>
    <link href="${global}/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${global}/css/components.min.css" rel="stylesheet" id="style_components" type="text/css"/>
    <link href="${global}/css/plugins.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/login.min.css" rel="stylesheet" type="text/css"/>

    <!-- Bootstrap 3.3.4 -->
    <script src="${global}/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/js/jquery.cookie.js"></script>
    <script src="${ctx}/static/js/jquery.tips.js"></script>
    <link rel="shortcut icon" href="${ctx}/favicon.ico"/>
<body class=" login">
<div class="logo">
    <a href="index.html"></a>
</div>
<div class="content">
    <form role="form" action="" name="loginForm"
          id="loginForm">
        <p id="activate-info"><fmt:message key="waiting"/></p>
        <div id="time-div"><span id="time">5</span><span><fmt:message key="activate_time"/></span></div>
    </form>
</div>
<!-- END LOGIN -->
<!-- BEGIN COPYRIGHT -->
<div class="copyright"><fmt:message key="login_since_year"/> &copy; <a href="https://www.goshipsurvey.com/"><fmt:message
        key="sys.site.title"/></a> <fmt:message key="login_copyrights_reserved"/></div>

<script src="${global}/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${global}/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
</body>
<script type="text/javascript">

    $(document).ready(function () {
        $.ajax({
            type: "POST",
            url: 'register/activateConfirm',
            data: {
                email: "${param.email}",
                validateCode: "${param.validateCode}"
            },
            dataType: 'json',
            cache: false,
            success: function (data) {
                console.log(data);
                if (data.errInfo == "activate success") {
                    $('#time-div').css("display", "block");
                    $('#activate-info').html("<fmt:message key="activate_success"/>");
                    setInterval(function () {
                        changeTime("login_toLogin")
                    }, 1000);
                } else {
                    $('#time-div').css("display", "block");
                    $('#activate-info').html("<fmt:message key="activate_faliure"/>");
                    setInterval(function () {
                        changeTime("register")
                    }, 1000);
                }
            }
        });

        // init background slide images
        $.backstretch([
                    "${ctx}/assets/layouts/layout/img/bg/1.jpg",
                    "${ctx}/assets/layouts/layout/img/bg/2.jpg",
                    "${ctx}/assets/layouts/layout/img/bg/3.jpg",
                    "${ctx}/assets/layouts/layout/img/bg/4.jpg",
                    "${ctx}/assets/layouts/layout/img/bg/5.jpg",
                    "${ctx}/assets/layouts/layout/img/bg/6.jpg"
                ], {
                    fade: 1000,
                    duration: 8000
                }
        );

        function changeTime(url) {
            var time;
            time = $("#time").text();
            time = parseInt(time);
            time--;
            if (time <= 0) {
                window.location.href = url;
            } else {
                $("#time").text(time);
            }
        }


    });

</script>
<script>
    //TOCMAT重启之后 点击左侧列表跳转登录首页
    if (window != top) {
        top.location.href = location.href;
    }
</script>
</html>