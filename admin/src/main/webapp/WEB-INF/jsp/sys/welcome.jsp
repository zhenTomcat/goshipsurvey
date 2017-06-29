<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<!--[if IE 8]>
<html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
    <title>主页</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico.png">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css'
          href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600&subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet"
          href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/css/style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet"
          href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/css/headers/header-default.css">
    <link rel="stylesheet" href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/css/footers/footer-v1.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/animate.css">
    <link rel="stylesheet"
          href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet"
          href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/fancybox/source/jquery.fancybox.css">
    <link rel="stylesheet"
          href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
    <link rel="stylesheet"
          href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/revolution-slider/rs-plugin/css/settings.css"
          type="text/css" media="screen">
    <!--[if lt IE 9]>
    <link rel="stylesheet"
          href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/revolution-slider/rs-plugin/css/settings-ie8.css"
          type="text/css" media="screen"><![endif]-->

    <!-- CSS Theme -->
    <link rel="stylesheet" href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/css/theme-colors/default.css"
          id="style_color">
    <link rel="stylesheet" href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/css/theme-skins/dark.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/css/custom.css">

    <style>
        .header {
            background: -webkit-linear-gradient(#006d9c, #005069);
            /* Safari 5.1 - 6.0 */
            background: -o-linear-gradient(#006d9c, #005069);
            /* Opera 11.1 - 12.0 */
            background: -moz-linear-gradient(#006d9c, #005069);
            /* Firefox 3.6 - 15 */
            background: linear-gradient(#006d9c, #005069);
            /* 标准的语法 */
            border-bottom: none;
        }

        .header .topbar ul.loginbar > li > a {
            color: #eee;
        }

        .header .topbar ul.loginbar > li > a:hover {
            color: black;
        }

        .header .navbar-nav > li > a {
            color: #eee;
        }

        .content-boxes-v6:hover i {
            background: #4B77BE;
        }

        .content-boxes-v6:hover i:after {
            border-color: #4B77BE;
        }

        .tag-box-v2 {
            border-left: solid 2px #3598DC;
        }

        .header .navbar-nav > li > a:hover,
        .header .navbar-nav > .active > a {
            bottom: -2px;
            position: relative;
            border-bottom: solid 0px;
        }

        .header .navbar-nav > li:hover > a {
            color: black;
        }

        .big-first-letter:first-letter {
            font-size: 50px;
        }

        .content-boxes-v6 i:after {
            border: 1px solid #3598DC;
        }

        .content-boxes-v6 i {
            background-color: #3598DC;
        }

        /*#service-choose{
            width: 100%;
            background-image: url(http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/img/sliders/ship2.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }*/
    </style>
</head>

<body>

<div class="wrapper page-option-v1">
    <!--=== Header ===-->
    <div class="header">
        <div class="container">
            <!-- Logo -->
            <a class="logo" href="index.html">
                <img src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/img/banner_transparent.png"
                     alt="Logo">
            </a>
            <!-- End Logo -->

            <!-- Topbar -->
            <div class="topbar" style="">
                <ul class="loginbar pull-right">
                    <c:if test="${not empty sessionScope.sessionUser}">
                        <li>
                            <a href="prepurchaseindex" id="userName">${sessionScope.sessionUser.name}</a>
                        </li>
                    </c:if>
                    <c:if test="${empty sessionScope.sessionUser}">
                        <li>
                            <a href="login_toLogin">login</a>
                        </li>
                        <li class="topbar-devider"></li>
                        <li>
                            <a href="javascript:void(0);">register</a>
                        </li>
                    </c:if>
                </ul>
            </div>
            <!-- End Topbar -->

            <h1 style="color:white;margin:35px 0;font-size:60px">GOSHIPSURVEY</h1>


            <!-- Toggle get grouped for better mobile display -->
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target=".navbar-responsive-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="fa fa-bars"></span>
            </button>
            <!-- End Toggle -->


        </div>
        <!--/end container-->
    </div>
    <!--=== End Header ===-->

    <!--=== Slider ===-->
    <div class="tp-banner-container" style="height:400px">
        <div class="tp-banner">
            <ul>
                <li class="revolution-mch-1" data-transition="fade" data-slotamount="5" data-masterspeed="1000"
                    data-title="Slide 1">
                    <img src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/img/sliders/ship1.jpg"
                         alt="darkblurbg" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                    <div class="tp-caption re-title-v1 sft start"
                         data-x="center"
                         data-hoffset="0"
                         data-y="100"
                         data-speed="1500"
                         data-start="500"
                         data-easing="Back.easeInOut"
                         data-endeasing="Power1.easeIn"
                         data-endspeed="300">
                        Ship inspections
                    </div>
                </li>
            </ul>
            <div class="tp-bannertimer tp-bottom"></div>
        </div>
    </div>
    <!--=== End Slider ===-->
    <!--=== Service Block ===-->
    <div class="container content-sm box-shadow" id="service-choose">
        <div class="row ">
            <a href="onoff" id="onoff-entrance">
                <div class="col-md-6 content-boxes-v6 md-margin-bottom-50">
                    <i class="rounded-x fa fa-cog"></i>
                    <h1 class="title-v3-md text-uppercase margin-bottom-10">On/Off hire inspection</h1>
                </div>
            </a>
            <a href="prepurchase" id="prepurchase-entrance">
                <div class="col-md-6 content-boxes-v6 md-margin-bottom-50">
                    <i class="rounded-x fa fa-cogs"></i>
                    <h2 class="title-v3-md text-uppercase margin-bottom-10">Pre-purchase inspection</h2>
                </div>
            </a>
        </div>
        <!--/row-->
    </div>
    <!--/container-->
    <!--=== End Service Block ===-->

    <!--=== Footer Version 1 ===-->
    <div class="footer-v1">
        <div class="copyright">
            <div class="container">
                <div class="col-md-3 md-margin-bottom-40">
                    <div class="headline"><h2>Quickly Links</h2></div>
                    <ul class="list-unstyled link-list">
                        <li><a href="http://a.goshipyard.com">goshipyard</a><i class="fa fa-angle-right"></i></li>
                        <li><a href="http://a.goshipyard.com:8899/admin">goshiprepair</a><i
                                class="fa fa-angle-right"></i></li>
                    </ul>
                </div>
                <div class="row">
                    <div class="col-md-12" style="text-align: center;">
                        <p>Aoyang TC Email:
                            <a href="mailto:service@goshipyard.com" style="color:#3598DC;" class="">service@goshipyard.com</a>
                        <p>
                        <p>Copyright &copy; 1998 - 2017 goshipyard.All Rights Reserved.</p>
                    </div>
                </div>
            </div>
        </div>
        <!--/copyright-->
    </div>
    <!--=== End Footer Version 1 ===-->
</div>
<!--/wrapper-->

<!-- JS Global Compulsory -->
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/back-to-top.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/smoothScroll.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/jquery.parallax.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/app.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/fancy-box.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/owl-carousel.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/revolution-slider.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/style-switcher.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        App.init();
        App.initParallaxBg();
        FancyBox.initFancybox();
        OwlCarousel.initOwlCarousel();
        RevolutionSlider.initRSfullWidth();
    });
</script>
<!--[if lt IE 9]>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/respond.js"></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/html5shiv.js"></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->
<script>
    $(document).ready(function () {
        if ($("#userName").length > 0) {
            $("#onoff-entrance").attr("href", "onoffindex");
            $("#prepurchase-entrance").attr("href", "prepurchaseindex");
        }
    })
</script>
</body>

</html>