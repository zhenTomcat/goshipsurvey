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
    <title>Quotation</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/icon/icon.ico">

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

        ul.nav li a {
            color: white;
            text-decoration: underline;
        }

        ul.navbar-nav > li > a:hover,
        ul.navbar-nav > .active > a {
            color: #264071;
            background-color: white;
        }

        .big-first-letter:first-letter {
            font-size: 50px;
        }

        #quotation-form {
            background-color: white;
            width: 80%;
            margin: 0 auto;
            padding: 15px 10px;
        }

        #quotation-form label {
            color: black;
        }

        .header .logo {
            height: auto;
        }

        .header .logo img {
            margin: 0;
        }
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
    <div class="container-fluid content-sm box-shadow" style="background-color: #264071;">
        <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
            <div class="container">
                <ul class="nav navbar-nav" style="margin-top: -60px;float: right;color: white;">
                    <li>
                        <a href="index.html">
                            Quotation
                        </a>
                    </li>
                    <li>
                        <a href="about_us.html">
                            Our reports
                        </a>
                    </li>
                    <li>
                        <a href="disclaimer.html">
                            Our surveyors
                        </a>
                    </li>
                    <li>
                        <a href="static/html/about_us.html">
                            About us
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <div style="width: 80%;margin: -30px auto 10px;padding: 0; color: white;">
            <h1 style="color: white;">Your quotation</h1>
            <h3 style="color: white;">We are calculating for you,and price whill be sent to your email.Please note and
                check your email.</h3>
        </div>

        <div class="row">
            <form class="form-horizontal" id="quotation-form" role="form" style="font-size: 30px;">
                <div class="form-group">
                    <label class="control-label col-md-5" style="font-weight: 100;">Ship's name:</label>
                    <label class="control-label col-md-7"
                           style="text-align: left;font-style: italic;">${quotation.shipName}</label>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-5" style="font-weight: 100;">IMO:</label>
                    <label class="control-label col-md-7"
                           style="text-align: left;font-style: italic;">${quotation.imo}</label>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-5" style="font-weight: 100;">Port:</label>
                    <label class="control-label col-md-7"
                           style="text-align: left;font-style: italic;">${quotation.port}</label>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-5" style="font-weight: 100;">Date:</label>
                    <label class="control-label col-md-7" style="text-align: left;font-style: italic;">
                        <fmt:formatDate value="${quotation.startDate}" pattern="yyyy-MM-dd"/> ~
                        <fmt:formatDate value="${quotation.endDate}" pattern="yyyy-MM-dd"/></label>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-5" style="font-weight: 100;">Inspection type:</label>
                    <label class="control-label col-md-7"
                           style="text-align: left;font-style: italic;">${quotation.inspectionType}</label>
                </div>
            </form>
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
                    <div class="headline">
                        <h2>Quickly Links</h2></div>
                    <ul class="list-unstyled link-list">
                        <li>
                            <a href="http://a.goshipyard.com">goshipyard</a><i class="fa fa-angle-right"></i></li>
                        <li>
                            <a href="http://a.goshipyard.com:8899/admin">goshiprepair</a><i
                                class="fa fa-angle-right"></i></li>
                    </ul>
                </div>
                <div class="col-md-3 md-margin-bottom-40">
                    <div class="headline">
                        <h2>Quickly Links</h2></div>
                    <ul class="list-unstyled link-list">
                        <li>
                            <a href="static/html/download_center.html">Download Center</a><i
                                class="fa fa-angle-right"></i></li>
                        <li>
                            <a href="static/html/about_us.html">About Us</a><i class="fa fa-angle-right"></i></li>
                    </ul>
                </div>
                <div class="col-md-3 md-margin-bottom-40">
                    <div class="headline">
                        <h2>Login or Register</h2></div>
                    <ul class="list-unstyled">
                        <li style="float: left;margin-right: 10px;">
                            <a class="btn-u btn-lg" href="static/html/download_center.html">Login</a>
                        </li>
                        <li style="float: left;margin-right: 10px;">
                            <a class="btn-u btn-u-blue btn-lg" href="static/html/download_center.html">Register</a>
                        </li>
                    </ul>
                </div>
                <div class="row">
                    <div class="col-md-12" style="text-align: center;">
                        <p>Aoyang TC Email:
                            <a href="mailto:service@goshipyard.com" style="color:#3598DC;" class="">service@goshipgroup.com</a>
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
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/jquery.validate.min.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!--<script type="text/javascript" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/back-to-top.js"></script>-->
<!--<script type="text/javascript" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/jquery.parallax.js"></script>
<script type="text/javascript" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
<script type="text/javascript" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/custom.js"></script>
<script type="text/javascript" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/app.js"></script>
<script type="text/javascript" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/fancy-box.js"></script>
<script type="text/javascript" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/owl-carousel.js"></script>
<script type="text/javascript" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/revolution-slider.js"></script>
<script type="text/javascript" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/style-switcher.js"></script>-->
<script type="text/javascript">
    $('#quotation-form').validate({
        errorElement: 'span',
        onfocusout: function (element) {
            $(element).valid();
        },
        focusInvalid: true,
        rules: {
            shipName: {
                required: true,
            },
            password: {
                required: true
            },
            address: {
                required: false,
                //minlength:8,
                postcodeVal: true
            }
        },
        messages: {
            shipName: {
                required: "Username is required.",
            },
        },

        highlight: function (element) {
            $(element).closest('.form-group').addClass('has-error');
        },

        success: function (label) {
            console.log(label);
            label.closest('.form-group').removeClass('has-error');
            //label.parents('.form-group').find('.help-block').html('<span style="color:green">ok</span>');
            label.parents('.form-group').find('.help-block').html('');
        },

        errorPlacement: function (error, element) {
            element.parents('.form-group').find('.help-block').html(error);
        },

        submitHandler: function (form) {
            $(form).ajaxSubmit();
        }
    });
</script>
<!--[if lt IE 9]>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/respond.js"></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/html5shiv.js"></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>

</html>