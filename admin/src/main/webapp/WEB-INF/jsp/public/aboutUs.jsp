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
<!DOCTYPE html>
<!--[if IE 8]>
<html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
    <title>About us</title>

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
            background-color: #f3f2f1;
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

        .header .logo {
            height: auto;
        }

        .header .logo img {
            margin: 0;
        }

        ul.nav li a {
            color: white;
            text-decoration: underline;
        }

        .navbar-nav {
            margin-top: -60px;
            float: right;
            color: white;
        }

        ul.navbar-nav > li > a:hover,
        ul.navbar-nav > .active > a {
            color: #264071;
            background-color: white;
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
        <div class="container" style="margin-bottom: 0;">
            <!-- Logo -->
            <a class="logo" href="/">
                <img src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/icon/banner.png" style="height: 70px;"
                     alt="Logo">
            </a>
            <!-- End Logo -->

            <h1 style="color:#0004fd;margin:0;font-size:60px;line-height: 1;">GOSHIPSURVEY</h1>

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

    <!--=== Service Block ===-->
    <!--=== Service Block ===-->
    <div class="container-fluid content-sm box-shadow" style="background-color: #264071;">
        <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
            <div class="container">
                <jsp:include page="../include/navBar.jsp"/>
            </div>
        </div>

        <h1 style="margin-left: 10%;margin-top: -30px;color: white;">About us</h1>


        <div class="container box-shadow">
            <div class="blog ">
                <p style="font-size: 20px;text-align: justify;">Nowadays, the well established website platforms, such
                    as
                    Amazon and Alibaba, are capable of bringing products from almost every corner of the world to your
                    doorstep. As a consequence redefining and reshaping our lifestyle. The shipping industry, with its
                    long
                    history of particular processes and practices, has generally remained immune to the trend towards
                    online
                    transactions. Nevertheless, we firmly believe that such a step would be beneficial for all of us and
                    in
                    fact the journey towards modernisation is already on its way. Embracing this, the aim of GOSHIP
                    GROUP is
                    to provide a platform that is able to furnish each interested party with a full range of ship survey
                    &
                    ship repair & ship supply resources and services in a more transparent and efficient manner. </p>

                <p style="font-size: 20px;text-align: justify;">GOSHIP GROUP was founded back in Jan 2016 and is now
                    operating two websites dedicated for ship repair and ship survey services, which is supported by the
                    extensive network of experienced and qualified maritime professionals, including ship inspectors and
                    surveyors across the globe to accommodate our fast expanding client base. While we are in the
                    progress
                    of setting up service hub located in most of the key shipping ports, our established network is
                    continuously monitored by our technical staff in accordance with standards and our own high quality
                    and
                    performance metrics to ensure the service rendered lives up to the expectation our our clients.
                    Since
                    her establishment, GOSHIP GROUP already provided survey services for lots of major Chinese shipping
                    companies, such as FOSCO, Sinotrans and other major Opertators or Charterers in China and Singapore
                    area. </p>

                <p style="font-size: 20px;text-align: justify;">GOSHIP GROUP is experienced with wide range types of
                    ships,
                    which includes dry bulk carriers, MPP, PCTC, container vessels, reefer vessels, product tankers,
                    chemical tankers, LPG, LNG and offshore vessels. </p>

                <p style="font-size: 20px;text-align: justify;">As of now, GOSHIP GROUP consists of an extensive range
                    of
                    experts from other parts of the industry that includes ship repair yards, ship management, ship
                    supervision, shipbroker, agency, financial leasing, insurance and maritime law. With so much of
                    experience available, the clients of GOSHIP GROUP can be confident of receiving the complete package
                    service, which can be provided to them 24/7. GOSHIP GROUP sincerely invite you to join this
                    pioneering
                    move into a new and more '21st century' industry. </p>
            </div>
        </div>
        <!--/container-->
    </div>
    <!--=== End Service Block ===-->

    <!--=== Footer Version 1 ===-->
    <jsp:include page="../include/footer.jsp"/>
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

</body>

</html>