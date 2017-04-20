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
    <title>on&off-hire</title>

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

    <link href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/datatables/datatables.min.css"
          rel="stylesheet" type="text/css"/>
    <link href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css"
          rel="stylesheet" type="text/css"/>
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

        .pagination-panel-input.form-control.input-sm.input-inline.input-mini {
            display: inline;
            width: auto;
        }
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
                            <a href="index">${sessionScope.sessionUser.name}</a>
                        </li>
                    </c:if>
                    <c:if test="${empty sessionScope.sessionUser}">
                        <li>
                            <a href="/login_toLogin">login</a>
                        </li>
                        <li class="topbar-devider"></li>
                        <li>
                            <a href="javascript:void(0);">register</a>
                        </li>
                    </c:if>
                </ul>
            </div>
            <!-- End Topbar -->

            <span style="color:white;margin:35px 0;font-size:60px">GOSHIPSURVEY</span>


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
    <div class="tp-banner-container" style="height:300px">
        <div class="tp-banner">
            <ul>
                <li class="revolution-mch-1" data-transition="fade" data-slotamount="5" data-masterspeed="1000"
                    data-title="Slide 1">
                    <img src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/img/sliders/ship1.jpg"
                         alt="darkblurbg" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                    <div class="tp-caption re-title-v1 sft start" data-x="center" data-hoffset="0" data-y="70"
                         data-speed="1500" data-start="500" data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
                         data-endspeed="300">
                        On/off hire + <br><br>
                        &nbsp;&nbsp;&nbsp;condition inspection
                    </div>
                </li>
            </ul>
            <div class="tp-bannertimer tp-bottom"></div>
        </div>
    </div>

    <!--=== container ===-->
    <div class="container content">
        <div class="col-md-6">
            <div class="tab-v1">
                <h2>View available surveyors</h2>
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#all" data-toggle="tab">All</a>
                    </li>
                    <li>
                        <a href="#central-china" data-toggle="tab">Central China</a>
                    </li>
                    <li>
                        <a href="#south-china" data-toggle="tab">South China</a>
                    </li>
                    <li>
                        <a href="#north-china" data-toggle="tab">North China</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade in active" id="all">
                        <table class="table table-striped table-bordered table-hover order-column" id="sample_1">
                            <thead>
                            <tr>
                                <th> Username</th>
                                <th> Email</th>
                                <th> Status</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> user1wow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> restest</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> foopl</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> weep</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> coop</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> pppol</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane fade in" id="central-china">
                        <table class="table table-striped table-bordered table-hover order-column" id="sample_2">
                            <thead>
                            <tr>
                                <th> Username</th>
                                <th> Email</th>
                                <th> Status</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> user1wow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> restest</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> foopl</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> weep</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> coop</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> pppol</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                    <div class="tab-pane fade in" id="south-china">
                        <table class="table table-striped table-bordered table-hover order-column" id="sample_3">
                            <thead>
                            <tr>
                                <th> Username</th>
                                <th> Email</th>
                                <th> Status</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> user1wow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> restest</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> foopl</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> weep</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> coop</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> pppol</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                    <div class="tab-pane fade in" id="north-china">
                        <table class="table table-striped table-bordered table-hover order-column" id="sample_4">
                            <thead>
                            <tr>
                                <th> Username</th>
                                <th> Email</th>
                                <th> Status</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> user1wow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> restest</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> foopl</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> weep</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> coop</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> pppol</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="tab-v1">
                <h2>View available vessels</h2>
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#all2" data-toggle="tab">All</a>
                    </li>
                    <li>
                        <a href="#central-china2" data-toggle="tab">Central China</a>
                    </li>
                    <li>
                        <a href="#south-china2" data-toggle="tab">South China</a>
                    </li>
                    <li>
                        <a href="#north-china2" data-toggle="tab">North China</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade in active" id="all2">
                        <table class="table table-striped table-bordered table-hover order-column" id="sample_5">
                            <thead>
                            <tr>
                                <th> Username</th>
                                <th> Email</th>
                                <th> Status</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> user1wow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> restest</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> foopl</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> weep</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> coop</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> pppol</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane fade in" id="central-china2">
                        <table class="table table-striped table-bordered table-hover order-column" id="sample_6">
                            <thead>
                            <tr>
                                <th> Username</th>
                                <th> Email</th>
                                <th> Status</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> user1wow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> restest</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> foopl</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> weep</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> coop</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> pppol</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                    <div class="tab-pane fade in" id="south-china2">
                        <table class="table table-striped table-bordered table-hover order-column" id="sample_7">
                            <thead>
                            <tr>
                                <th> Username</th>
                                <th> Email</th>
                                <th> Status</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> user1wow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> restest</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> foopl</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> weep</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> coop</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> pppol</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                    <div class="tab-pane fade in" id="north-china2">
                        <table class="table table-striped table-bordered table-hover order-column" id="sample_8">
                            <thead>
                            <tr>
                                <th> Username</th>
                                <th> Email</th>
                                <th> Status</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> user1wow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> restest</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> foopl</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> weep</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> coop</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> pppol</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> userwow</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-default"> Blocked </span>
                                </td>
                            </tr>
                            <tr class="odd gradeX">
                                <td> test</td>
                                <td>
                                    <a href="mailto:userwow@gmail.com"> test@gmail.com </a>
                                </td>
                                <td>
                                    <span class="label label-sm label-success"> Approved </span>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>

    </div>
    <!--===end container ===-->

    <!--=== Footer Version 1 ===-->
    <div class="footer-v1 ">
        <div class="copyright ">
            <div class="container ">
                <div class="col-md-3 md-margin-bottom-40 ">
                    <div class="headline ">
                        <h2>Quickly Links</h2></div>
                    <ul class="list-unstyled link-list ">
                        <li>
                            <a href="http://a.goshipyard.com ">goshipyard</a><i class="fa fa-angle-right "></i></li>
                        <li>
                            <a href="http://a.goshipyard.com:8899/admin ">goshiprepair</a><i
                                class="fa fa-angle-right "></i></li>
                    </ul>
                </div>
                <div class="row ">
                    <div class="col-md-12 " style="text-align: center; ">
                        <p>Aoyang TC Email:
                            <a href="mailto:service@goshipyard.com " style="color:#3598DC; " class=" ">service@goshipyard.com</a>
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
<script type="text/javascript "
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/jquery/jquery.min.js "></script>
<script type="text/javascript "
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/jquery/jquery-migrate.min.js "></script>
<script type="text/javascript "
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/bootstrap/js/bootstrap.min.js "></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript "
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/back-to-top.js "></script>
<script type="text/javascript "
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/smoothScroll.js "></script>
<script type="text/javascript "
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/jquery.parallax.js "></script>
<script type="text/javascript "
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/fancybox/source/jquery.fancybox.pack.js "></script>
<script type="text/javascript "
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js "></script>
<script type="text/javascript "
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js "></script>
<script type="text/javascript "
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js "></script>
<!-- JS Customization -->
<script type="text/javascript " src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/custom.js "></script>
<!-- JS Page Level -->
<script type="text/javascript " src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/app.js "></script>
<script type="text/javascript "
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/fancy-box.js "></script>
<script type="text/javascript "
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/owl-carousel.js "></script>
<script type="text/javascript "
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/revolution-slider.js "></script>
<script type="text/javascript "
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/style-switcher.js "></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/datatable.min.js "
        type="text/javascript "></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/datatables/datatables.min.js "
        type="text/javascript "></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js "
        type="text/javascript "></script>

<script type="text/javascript ">
    jQuery(document).ready(function () {
        App.init();
        App.initParallaxBg();
        FancyBox.initFancybox();
        OwlCarousel.initOwlCarousel();
        RevolutionSlider.initRSfullWidth();

        initTable1();
    });

    var initTable1 = function () {
        var table = $("table");
        table.dataTable({
            "language": {
                "aria": {
                    "sortAscending": ": activate to sort column ascending",
                    "sortDescending": ": activate to sort column descending"
                },
                "emptyTable": "No data available in table",
                "info": "Showing _START_ to _END_ of _TOTAL_ records",
                "infoEmpty": "No records found",
                "infoFiltered": "(filtered1 from _MAX_ total records)",
                "lengthMenu": "Show _MENU_",
                "search": "Search:",
                "zeroRecords": "No matching records found",
                "paginate": {
                    "previous": "Prev",
                    "next": "Next",
                    "last": "Last",
                    "first": "First"
                }
            },
            "bStateSave": true, // save datatable state(pagination, sort, etc) in cookie.
            "pagingType": "bootstrap_extended",
            "lengthMenu": [
                [5, 15, 20, -1],
                [5, 15, 20, "All"] // change per page values here
            ],
            // set the initial value
            "pageLength": 5,
            "columnDefs": [{ // set default column settings
                'orderable': true,
                'targets': [0]
            }, {
                "searchable": true,
                "targets": [0]
            }],
            "order": [
                [1, "asc"]
            ] // set first column as a default sort by asc
        });
    }

</script>
<!--[if lt IE 9]>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/respond.js "></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/html5shiv.js "></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/placeholder-IE-fixes.js "></script>
<![endif]-->

</body>

</html>