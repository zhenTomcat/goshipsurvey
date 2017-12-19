<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String wsPath = request.getServerName() + ":" + request.getServerPort() + path + "/";
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
    <title>GOSHIPSURVEY</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="#1 selling multi-purpose bootstrap admin theme sold in themeforest marketplace packed with angularjs, material design, rtl support with over thausands of templates and ui elements and plugins to power any type of web applications including saas and admin dashboards. Preview page of Theme #4 for loading content via ajax"
          name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="${global}/css/components.min.css" rel="stylesheet" id="style_components" type="text/css"/>
    <link href="${global}/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="${global}/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="${global}/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${global}/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="${global}/plugins/bootstrap-dialog/bootstrap-dialog.min.css" rel="stylesheet"
          type="text/css"/>
    <%--<link href="${global}/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />--%>
    <link href="${global}/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="${global}/plugins/icheck/skins/flat/blue.css" rel="stylesheet" type="text/css">
    <link href="${global}/plugins/icheck/skins/minimal/blue.css" rel="stylesheet" type="text/css">
    <link href="${global}/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css">
    <link href="${global}/plugins/daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css">
    <link href="${global}/plugins/Editor-1.5.4/css/editor.dataTables.min.css" rel="stylesheet" type="text/css">
    <link href="${global}/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css">
    <link href="${global}/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${global}/plugins/bootstrap-summernote/summernote.css" rel="stylesheet" type="text/css"/>
    <link href="${global}/plugins/bootstrap-sweetalert/sweetalert.css" rel="stylesheet" type="text/css"/>
    <link href="${global}/plugins/ion.rangeslider/css/ion.rangeSlider.css" rel="stylesheet" type="text/css"/>
    <link href="${global}/plugins/ion.rangeslider/css/ion.rangeSlider.skinFlat2.css" rel="stylesheet" type="text/css"/>
    <link href="${global}/plugins/ladda/ladda-themeless.min.css" rel="stylesheet" type="text/css"/>
    <link href="${global}/plugins/jquery-notific8/jquery.notific8.min.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN THEME GLOBAL STYLES -->

    <link href="${global}/css/plugins.min.css" rel="stylesheet" type="text/css"/>
    <link href="${global}/css/components.min.css" rel="stylesheet" type="text/css"/>

    <!-- END THEME GLOBAL STYLES -->
    <!-- BEGIN THEME LAYOUT STYLES -->
    <link href="${ctx}/assets/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/assets/layouts/layout/css/themes/${style.des}.min.css" rel="stylesheet" type="text/css"
          id="style_color"/>

    <link href="${ctx}/assets/pages/css/profile.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/custom.css" rel="stylesheet" type="text/css"/>


    <!-- END THEME LAYOUT STYLES -->
    <link type="image/png" href="${ctx}/static/img/great_vision.png" rel="shortcut icon">
    <link rel="shortcut icon" href="${ctx}/favicon.ico"/>

    <%--handsontable的CSS--%>
    <link rel="stylesheet" media="screen" href="${ctx}/static/css/handsontable/handsontable.css">
    <link rel="stylesheet" rel="stylesheet" href="${ctx}/static/css/float.css">
    <style>
        @media screen and (min-width: 992px) {
            .page-sidebar {
                position: fixed;
            }
        }

        .sweet-alert {
            z-index: 120000;
        }
    </style>
</head>
<body onhashchange="hashChange()"
      class="page-header-fixed page-sidebar-closed-hide-logo page-content-white page-full-width">


<%--<jsp:include page="include/header.jsp"></jsp:include>--%>
<div class="clearfix"></div>
<div class="page-container">
    <jsp:include page="include/hor-menu.jsp"></jsp:include>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <div class="page-content">
            <div class="page-content-body" id="navTab">
            </div>
        </div>
    </div>
    <!-- END QUICK SIDEBAR -->
</div>
<div class="page-footer">
    <div class="page-footer-inner"> 2016 &copy;
        <a href="https://www.goshipsurvey.com" style="color:#337ab7"
           title="<fmt:message key="sys.site.title"/>" target="_blank"><fmt:message
                key="sys.site.title"/></a><fmt:message key="login_copyrights_reserved"/>
    </div>
    <div class="scroll-to-top">
        <i class="icon-arrow-up"></i>
    </div>
</div>
<script src="${global}/plugins/respond.min.js"></script>
<script src="${global}/plugins/excanvas.min.js"></script>
<script src="${global}/plugins/ie8.fix.min.js"></script>
<![endif]-->
<!-- BEGIN CORE PLUGINS -->
<script src="${global}/plugins/jquery.min.js" type="text/javascript"></script>
<%--
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
--%>
<script src="${global}/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<%--<script src="${global}/plugins/js.cookie.min.js" type="text/javascript"></script>--%>
<script src="${global}/plugins/jquery.cookie.js"
        type="text/javascript"></script>
<script src="${global}/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${global}/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${global}/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script src="${global}/plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="${global}/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
<script src="${global}/plugins/icheck/icheck.min.js"></script>
<script src="${global}/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="${global}/plugins/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script src="${global}/plugins/daterangepicker/moment.min.js"></script>
<script src="${global}/plugins/daterangepicker/daterangepicker.js"></script>
<script src="${global}/plugins/Editor-1.5.4/js/dataTables.editor.min.js"></script>


<script src="${global}/plugins/bootstrap-dialog/bootstrap-dialog.min.js"></script>
<script src="${global}/plugins/bootstrap-confirmation/bootstrap-confirmation.min.js" type="text/javascript"></script>
<script src="${global}/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>

<script src="${global}/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="${global}/plugins/jquery-validation/js/additional-methods.min.js" type="text/javascript"></script>
<script src="${global}/plugins/bootstrap-wizard/jquery.bootstrap.wizard.min.js" type="text/javascript"></script>


<script src="${global}/plugins/plupload-2.1.2/js/moxie.min.js"></script>
<script src="${global}/plugins/plupload-2.1.2/js/plupload.dev.js"></script>

<script src="${global}/plugins/bootstrap-sweetalert/sweetalert.min.js"></script>

<script src="${global}/plugins/bootstrap-summernote/summernote.min.js" type="text/javascript"></script>

<script src="${global}/plugins/ion.rangeslider/js/ion.rangeSlider.min.js" type="text/javascript"></script>

<script src="${global}/plugins/ladda/spin.min.js" type="text/javascript"></script>
<script src="${global}/plugins/ladda/ladda.min.js" type="text/javascript"></script>
<script src="${global}/plugins/jquery-notific8/jquery.notific8.min.js" type="text/javascript"></script>


<!-- END CORE PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="${global}/scripts/app.min.js" type="text/javascript"></script>
<script src="${ctx}/assets/pages/scripts/form-wizard.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="${ctx}/assets/layouts/layout/scripts/layout.js" type="text/javascript"></script>
<script src="${ctx}/assets/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
<script src="${ctx}/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<script src="${ctx}/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>


<!-- END THEME LAYOUT SCRIPTS -->

<%-- 自定义js文件--%>
<script src="${ctx}/static/js/upload.js"></script>
<script src="${ctx}/static/js/jquery.form.min.js" type="text/javascript"></script>
<script src="${ctx}/static/js/jquery-gv-validate.js" type="text/javascript"></script>
<script src="${ctx}/static/js/admin.js" type="text/javascript"></script>
<script src="${ctx}/static/js/go.common.js"></script>
<script src="${ctx}/static/js/api.js"></script>
<script src="${ctx}/static/js/jquery.tips.js"></script>
<script src="https://gosspublic.alicdn.com/aliyun-oss-sdk-4.4.4.min.js"></script>

<%--handsontable的js--%>
<script src="${ctx}/static/js/handsontable/pikaday.js"></script>
<script src="${ctx}/static/js/handsontable/moment.js"></script>
<script src="${ctx}/static/js/handsontable/ZeroClipboard.js"></script>
<script src="${ctx}/static/js/handsontable/numbro.js"></script>
<script src="${ctx}/static/js/handsontable/languages.js"></script>
<script src="${ctx}/static/js/handsontable/handsontable.js"></script>


<input id="index-user-type" type="hidden" value="${sessionScope.sessionUser.type}">
</body>
<script>

    $(document).ready(function () {
        initPage();
        webSocketMessage();
    });

    function nofind(type) {
        var img = event.srcElement;
        if (type == '1') {
            img.src = "https://windyeel.oss-cn-shanghai.aliyuncs.com/global/img/default.png";
        } else if (type == '2') {
            img.src = "https://windyeel.oss-cn-shanghai.aliyuncs.com/global/img/default-man.jpg";
        } else if (type == '3') {
            img.src = "https://windyeel.oss-cn-shanghai.aliyuncs.com/global/img/default-site-index.png";
        } else if (type == '4') {
            img.src = "https://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipyard/zQnJWazGDX.jpg";
        }
    }

    function initPage() {
        var url;
        if (window.location.hash) {
            url = window.location.hash.substring(1);
            if ($("a[href='" + url + "']").length <= 0) {
                Layout.loadAjaxContent(url, $("a[href='" + url + "']"));
                return;
            }
        } else {
            var url1 = "prepurchase/op/record";
            var url2 = "prepurchase/surveyor/record";
            var a = $("a[href='" + url1 + "']");
            if (a.length > 0) {
                url = url1
            } else {
                url = url2;
            }
        }
        $("a[href='" + url + "']").click();

    }

    function hashChange() {
        initPage();
    }

    function webSocketMessage() {
        console.log("WebSocket:开始")
        var path = "<%=wsPath%>";
        var websocket;
        if ('WebSocket' in window) {
            websocket = new WebSocket("wss://" + path + "wsMy");
            console.log("WebSocket:开始1")
        } else if ('MozWebSocket' in window) {
            websocket = new MozWebSocket("wss://" + path + "wsMy");
            console.log("WebSocket:开始2")
        } else {
            websocket = new SockJS("https://" + path + "wsMy/sockjs");
            console.log("WebSocket:开始3")
        }
        websocket.onopen = function (event) {
            console.log("WebSocket:已连接");
        };
        websocket.onmessage = function (event) {
            var data = JSON.parse(event.data);
            var unreadCount = data.unreadCount;
            console.log("WebSocket:收到一条消息", data.unreadCount);
            if (unreadCount != 0) {
                $(".unreadCount").html(data.unreadCount);
                $(".unreadCount").css("display", "inline-block");

                var isLogin = $.cookie('isLogin');
                console.log(isLogin);
                if (isLogin == 1) {
                    console.log("aaa", isLogin);
                    unreadAlert("teal", '<a href="message" data-target="navTab" style="color:white">您有' + unreadCount + '未读消息</a>');
                    $.cookie('isLogin', 0);
                }
            } else {
                $(".unreadCount").css("display", "none");
            }
            $.cookie('isLogin', 0);
            if (data["alert"]) {
                swal({type: "info", title: data.messageContent});
            }


        };
        websocket.onerror = function (event) {
            console.log("WebSocket:发生错误 ");
            console.log(event);
        };
        websocket.onclose = function (event) {
            console.log("WebSocket:已关闭");
            console.log(event);
        }
    }

    function unreadAlert(theme, msg) {
        var settings = {
            theme: theme,
            sticky: false,
            horizontalEdge: "bottom",
            verticalEdge: "right"
        }
        if (!settings.sticky) {
            settings.life = 10000;
        }
        $.notific8('zindex', 11500);
        $.notific8(msg, settings);
    }
</script>
<script>
    $('body').delegate('.ajaxify', 'click', function (e) {
        e.preventDefault();
        var url = $(this).attr("href");
        Layout.loadAjaxContent(url, $(this));

        $(".classic-menu-dropdown .selected").remove();
        $(".classic-menu-dropdown.active").removeClass("active");
        var activeLiHref = $(this).attr('active-li-href');
        var activeLi = $('a[href="' + activeLiHref + '"]');
        if (activeLi.length > 0) {
            activeLi.parent().addClass("active");
            activeLi.html(activeLi.html() + selectedSpan);
        }
    })


    var selectedSpan = "<span class='selected'></span>";
    $(".dropdown-menu li > a").on("click", function () {
        var thisOne = $(this);
        var href = thisOne.attr("href");
        if (href != "javascript:;") {
            $(".classic-menu-dropdown .selected").remove();
            $(".classic-menu-dropdown.active").removeClass("active");
            var a = thisOne.parent().parent().siblings("a");
            a.parent().addClass("active");
            a.html(a.html() + selectedSpan);
        }
    })
    //    $(".classic-menu-dropdown > a").on("click", function () {
    //        var thisOne = $(this);
    //        var href = thisOne.attr("href");
    //        if (href != "javascript:;") {
    //            $(".classic-menu-dropdown .selected").remove();
    //            $(".classic-menu-dropdown.active").removeClass("active");
    //            thisOne.parent().addClass("active");
    //            thisOne.html(thisOne.html() + selectedSpan);
    //        }
    //    })

</script>
</html>