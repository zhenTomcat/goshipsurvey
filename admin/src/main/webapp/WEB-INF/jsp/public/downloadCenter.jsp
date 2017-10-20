<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:set var="global" value="https://shipinfo.oss-cn-shanghai.aliyuncs.com"/>
<!DOCTYPE html>
<!--[if IE 8]>
<html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
    <title>Download Center</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico.png">

    <!-- Web Fonts -->
    <%--<link rel='stylesheet' type='text/css'--%>
    <%--href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600&subset=cyrillic,latin'>--%>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet"
          href="${global}/unify/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${global}/unify/assets/css/style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet"
          href="${global}/unify/assets/css/headers/header-default.css">
    <link rel="stylesheet" href="${global}/unify/assets/css/footers/footer-v1.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="${global}/unify/assets/plugins/animate.css">
    <link rel="stylesheet"
          href="${global}/unify/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet"
          href="${global}/unify/assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${global}/unify/assets/plugins/fancybox/source/jquery.fancybox.css">
    <link rel="stylesheet"
          href="${global}/unify/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
    <link rel="stylesheet"
          href="${global}/unify/assets/plugins/revolution-slider/rs-plugin/css/settings.css"
          type="text/css" media="screen">
    <!--[if lt IE 9]>
    <link rel="stylesheet"
          href="${global}/unify/assets/plugins/revolution-slider/rs-plugin/css/settings-ie8.css"
          type="text/css" media="screen"><![endif]-->

    <!-- CSS Theme -->
    <link rel="stylesheet" href="${global}/unify/assets/css/theme-colors/default.css"
          id="style_color">
    <link rel="stylesheet" href="${global}/unify/assets/css/theme-skins/dark.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="${global}/unify/assets/css/custom.css">

    <style>
        .header, .breadcrumbs {
            background-color: #f3f2f1;
        }

        .download-file {
            margin-top: 20px;
        }

        #download-file-tmp {
            display: none;
        }
    </style>
</head>

<body>

<div class="wrapper page-option-v1">
    <!--=== Header ===-->
    <jsp:include page="../include/header.jsp"/>
    <!--=== End Header ===-->

    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Download Center</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="/">Home</a></li>
                <li class="active"><a href="/public/downloadCenter">Download Center</a></li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->

    <!--=== Service Block ===-->
    <div class="container-fluid content-sm box-shadow" style="background-color: #264071;">
        <div class="container box-shadow" style="min-height: 200px" id="download-file-group">
            <p style="padding:50px;font-size: 40px ">Wait...</p>
        </div>
        <!--/container-->
    </div>
    <!--=== End Service Block ===-->

    <!--=== Footer Version 1 ===-->
    <jsp:include page="../include/footer.jsp"/>
    <!--=== End Footer Version 1 ===-->
</div>
<!--/wrapper-->
<div class="col-sm-4 download-file" id="download-file-tmp">
    <h2 class="heading-sm">
        <i class="icon-custom icon-sm icon-bg-u fa fa-file"></i>
        <span style="color: #72c02c">N/A</span>
    </h2>
    <p><a target="_blank"
          href="javascript:void(0)">Download</a>
    </p>
</div>
<!-- JS Global Compulsory -->
<script type="text/javascript"
        src="${global}/unify/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
        src="${global}/unify/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript"
        src="${global}/unify/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript"
        src="${global}/unify/assets/plugins/back-to-top.js"></script>
<script type="text/javascript"
        src="${global}/unify/assets/plugins/smoothScroll.js"></script>
<script type="text/javascript"
        src="${global}/unify/assets/plugins/jquery.parallax.js"></script>
<script type="text/javascript"
        src="${global}/unify/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script type="text/javascript"
        src="${global}/unify/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
<script type="text/javascript"
        src="${global}/unify/assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript"
        src="${global}/unify/assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="${global}/unify/assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="${global}/unify/assets/js/app.js"></script>
<script type="text/javascript"
        src="${global}/unify/assets/js/plugins/fancy-box.js"></script>
<script type="text/javascript"
        src="${global}/unify/assets/js/plugins/owl-carousel.js"></script>
<script type="text/javascript"
        src="${global}/unify/assets/js/plugins/revolution-slider.js"></script>
<script type="text/javascript"
        src="${global}/unify/assets/js/plugins/style-switcher.js"></script>
<script type="text/javascript">
    //    jQuery(document).ready(function () {
    //        App.init();
    //        App.initParallaxBg();
    //        FancyBox.initFancybox();
    //        OwlCarousel.initOwlCarousel();
    //        RevolutionSlider.initRSfullWidth();
    //    });
    $(function () {
        initDownloadList();
    });


    function initDownloadList() {
        var downloadList = getDownloadList();
//        var downloadList = getTestList();
//        downloadList = [];
        var length = downloadList.length;
        var html = '';
        if (downloadList && length > 0) {

            var tmp = $('#download-file-tmp');
            for (var i = 0; i < length; i++) {
                var div = tmp.clone().removeAttr('id');
                var file = downloadList[i];
                div.find('span').text(file.fileName);
                div.find('a').attr('href', file.ossUrl);
                html += div.prop("outerHTML");
            }
            html += '<div class="clearfix"></div>';

        } else {
            html += ' <p style="padding:50px;font-size: 40px ">Nothing...</p>';
        }
        $('#download-file-group').html(html);
    }

    function getDownloadList() {
        var list = {};
        $.ajax({
            url: 'https://sjtu.goshipyard.com/file/downloadList',
            type: 'get',
            async: false,
            contentType: 'application/x-www-form-urlencoded; charset=utf-8',
            success: function (data) {
                list = data.list;
            },
        });
        return list;
    }

    function getTestList() {
        return [{fileName: 'i am a', ossUrl: 'i am url a'}, {fileName: 'i am b', ossUrl: 'i am url b'}];
    }
</script>
<!--[if lt IE 9]>
<script src="${global}/unify/assets/plugins/respond.js"></script>
<script src="${global}/unify/assets/plugins/html5shiv.js"></script>
<script src="${global}/unify/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>

</html>