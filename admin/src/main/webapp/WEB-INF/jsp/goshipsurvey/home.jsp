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

        body {
            color: black
        }

        #l-map {
            width: 100%;
            height: 500px;
        }

        #r-result {
            width: 100%;
        }

        p {
            margin: 0 0 10px;
        }

        #tip input[type="button"] {
            background-color: #0D9BF2;
            height: 40%;
            text-align: center;
            line-height: 25px;
            font-family: "Tahoma";
            font-size: 12px;
            border-radius: 3px;
            outline: none;
            border: 0;
            cursor: pointer;
        }

        #tip input[type="text"] {
            height: 35px;
            border: 1px solid #ccc;
            padding-left: 5px;
            border-radius: 3px;
            outline: none;
            color: #333;

        }

        #place li {
            display: inline-block;
            list-style: none;
            margin: 0;
            padding: 0;
            margin-right: 10px;
        }

        #place li:hover {
            border-bottom: 1px solid #333;
        }

        #outer-ul li {
            padding-left: 10px;
        }

        #outer-ul li:hover {
            background-color: #0D9BF2;
        }

        #footer {
            background-color: #fff;
            border: 1px solid #ccc;
            margin-left: 20px;
            position: absolute;
            min-height: 65px;
            top: 330px;
            font-size: 12px;
            right: 10px;
            border-radius: 3px;
            overflow: hidden;
            line-height: 20px;
            height: 400px;
            width: 200px;
        }


    </style>
</head>

<body>

<div class="wrapper page-option-v1">
    <!--=== Header ===-->
    <div class="header">
        <div class="container">
            <!-- Logo -->
            <a class="logo" href="javascript:void(0)">
                <img src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/img/banner_transparent.png"
                     alt="Logo">
            </a>
            <!-- End Logo -->

            <!-- Topbar -->
            <div class="topbar" style="">
                <ul class="loginbar pull-right">
                    <c:if test="${not empty sessionScope.sessionUser}">
                        <li>
                            <a href="onoffindex">${sessionScope.sessionUser.name}</a>
                        </li>
                    </c:if>
                    <c:if test="${empty sessionScope.sessionUser}">
                        <li>
                            <a href="login_toLogin?pro=1">login</a>
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
    <div class="tp-banner-container" style="height:200px">
        <div class="tp-banner">
            <ul>
                <li class="revolution-mch-1" data-transition="fade" data-slotamount="5" data-masterspeed="1000"
                    data-title="Slide 1">
                    <img src="http://shipinfo.img-cn-shanghai.aliyuncs.com/unify/assets/img/sliders/ship1.jpg@x200-5rc"
                         alt="darkblurbg" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                    <div class="tp-caption re-title-v1 sft start" data-x="center" data-hoffset="0" data-y="70"
                         data-speed="1500" data-start="500" data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
                         data-endspeed="300" style="font-size: 50px">
                        On/off hire + &nbsp;&nbsp;&nbsp;condition inspection
                    </div>
                </li>
            </ul>
            <div class="tp-bannertimer tp-bottom"></div>
        </div>
    </div>

    <!--=== container ===-->
    <div class="container content" style="width: 100%;padding: 0">
        <div id="l-map">
        </div>
        <div id="menuOne">
            <%--<div class="form-group">--%>
            <%--<div class=" col-lg-12 col-sm-12 col-xs-12 pull-right" id="search_ship">--%>
            <%--<div id="tip">--%>
            <%--<div class="row">--%>
            <%--<div class="col-lg-12 col-xs-12">--%>
            <%--<ul id="place" style="text-align: center;">--%>
            <%--<li style="border-bottom:none;">--%>
            <%--<h4>Search:</h4>--%>
            <%--</li>--%>
            <%--<li ng-click="listRefresh(0)" style="font-family:Tahoma;"><b>All</b></li>--%>
            <%--<li ng-click="listRefresh(1)" style="font-family:Tahoma;"><b>Central China</b></li>--%>
            <%--<li ng-click="listRefresh(2)" style="font-family:Tahoma;"><b>South China</b></li>--%>
            <%--<li ng-click="listRefresh(3)" style="font-family:Tahoma;"><b>North China</b></li>--%>
            <%--</ul>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="row">--%>
            <%--<div class="col-lg-10 col-xs-10">--%>
            <%--<input type="text" ng-model="findShipName" id="inputEmail" class="form-control"--%>
            <%--placeholder="Enter a keyword to search:">--%>
            <%--</div>--%>
            <%--<div class="col-lg-2 col-xs-2" style="padding-left:0px;">--%>
            <%--<img style="width:40px; height:40px;" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/system/find_one.png"--%>
            <%--ng-click="listRefreshByName(findShipName)"/>--%>
            <%--<div id="result1" name="result1"></div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <div class="form-group" id="footer" style="margin-top:10px;">
                <div class="col-lg-12 col-xs-12" style="padding-left: 0px;padding-right: 0px">
                    <div id="wrapper">
                        <ul style="padding:0;height:400px;overflow:auto;overflow-x:hidden;margin-right: 0px"
                            id="outer-ul">
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <%--<div class="col-md-6">--%>
        <%--<div class="tab-v1">--%>
        <%--<h2>View available surveyors</h2>--%>
        <%--<ul class="nav nav-tabs">--%>
        <%--<li class="active">--%>
        <%--<a href="#all" data-toggle="tab">All</a>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="#central-china" data-toggle="tab">Central China</a>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="#south-china" data-toggle="tab">South China</a>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="#north-china" data-toggle="tab">North China</a>--%>
        <%--</li>--%>
        <%--</ul>--%>
        <%--<div class="tab-content">--%>
        <%--<div class="tab-pane fade in active" id="all">--%>
        <%--<table class="table table-striped table-bordered table-hover order-column" id="sample_1">--%>
        <%--<thead>--%>
        <%--<tr>--%>
        <%--<th> Username</th>--%>
        <%--<th> Email</th>--%>
        <%--<th> Status</th>--%>
        <%--</tr>--%>
        <%--</thead>--%>
        <%--<tbody>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> userwow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-success"> Approved </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> user1wow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-default"> Blocked </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--</tbody>--%>
        <%--</table>--%>
        <%--</div>--%>
        <%--<div class="tab-pane fade in" id="central-china">--%>
        <%--<table class="table table-striped table-bordered table-hover order-column" id="sample_2">--%>
        <%--<thead>--%>
        <%--<tr>--%>
        <%--<th> Username</th>--%>
        <%--<th> Email</th>--%>
        <%--<th> Status</th>--%>
        <%--</tr>--%>
        <%--</thead>--%>
        <%--<tbody>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> userwow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-success"> Approved </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> user1wow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-default"> Blocked </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--</tbody>--%>
        <%--</table>--%>

        <%--</div>--%>
        <%--<div class="tab-pane fade in" id="south-china">--%>
        <%--<table class="table table-striped table-bordered table-hover order-column" id="sample_3">--%>
        <%--<thead>--%>
        <%--<tr>--%>
        <%--<th> Username</th>--%>
        <%--<th> Email</th>--%>
        <%--<th> Status</th>--%>
        <%--</tr>--%>
        <%--</thead>--%>
        <%--<tbody>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> userwow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-success"> Approved </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> user1wow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-default"> Blocked </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--</tbody>--%>
        <%--</table>--%>

        <%--</div>--%>
        <%--<div class="tab-pane fade in" id="north-china">--%>
        <%--<table class="table table-striped table-bordered table-hover order-column" id="sample_4">--%>
        <%--<thead>--%>
        <%--<tr>--%>
        <%--<th> Username</th>--%>
        <%--<th> Email</th>--%>
        <%--<th> Status</th>--%>
        <%--</tr>--%>
        <%--</thead>--%>
        <%--<tbody>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> userwow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-success"> Approved </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> user1wow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-default"> Blocked </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--</tbody>--%>
        <%--</table>--%>

        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col-md-6">--%>
        <%--<div class="tab-v1">--%>
        <%--<h2>View available vessels</h2>--%>
        <%--<ul class="nav nav-tabs">--%>
        <%--<li class="active">--%>
        <%--<a href="#all2" data-toggle="tab">All</a>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="#central-china2" data-toggle="tab">Central China</a>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="#south-china2" data-toggle="tab">South China</a>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="#north-china2" data-toggle="tab">North China</a>--%>
        <%--</li>--%>
        <%--</ul>--%>
        <%--<div class="tab-content">--%>
        <%--<div class="tab-pane fade in active" id="all2">--%>
        <%--<table class="table table-striped table-bordered table-hover order-column" id="sample_5">--%>
        <%--<thead>--%>
        <%--<tr>--%>
        <%--<th> Username</th>--%>
        <%--<th> Email</th>--%>
        <%--<th> Status</th>--%>
        <%--</tr>--%>
        <%--</thead>--%>
        <%--<tbody>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> userwow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-success"> Approved </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> user1wow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-default"> Blocked </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--</tbody>--%>
        <%--</table>--%>
        <%--</div>--%>
        <%--<div class="tab-pane fade in" id="central-china2">--%>
        <%--<table class="table table-striped table-bordered table-hover order-column" id="sample_6">--%>
        <%--<thead>--%>
        <%--<tr>--%>
        <%--<th> Username</th>--%>
        <%--<th> Email</th>--%>
        <%--<th> Status</th>--%>
        <%--</tr>--%>
        <%--</thead>--%>
        <%--<tbody>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> userwow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-success"> Approved </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> user1wow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-default"> Blocked </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--</tbody>--%>
        <%--</table>--%>

        <%--</div>--%>
        <%--<div class="tab-pane fade in" id="south-china2">--%>
        <%--<table class="table table-striped table-bordered table-hover order-column" id="sample_7">--%>
        <%--<thead>--%>
        <%--<tr>--%>
        <%--<th> Username</th>--%>
        <%--<th> Email</th>--%>
        <%--<th> Status</th>--%>
        <%--</tr>--%>
        <%--</thead>--%>
        <%--<tbody>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> userwow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-success"> Approved </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> user1wow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-default"> Blocked </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--</tbody>--%>
        <%--</table>--%>

        <%--</div>--%>
        <%--<div class="tab-pane fade in" id="north-china2">--%>
        <%--<table class="table table-striped table-bordered table-hover order-column" id="sample_8">--%>
        <%--<thead>--%>
        <%--<tr>--%>
        <%--<th> Username</th>--%>
        <%--<th> Email</th>--%>
        <%--<th> Status</th>--%>
        <%--</tr>--%>
        <%--</thead>--%>
        <%--<tbody>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> userwow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@yahoo.com"> userwow@yahoo.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-success"> Approved </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr class="odd gradeX">--%>
        <%--<td> user1wow</td>--%>
        <%--<td>--%>
        <%--<a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="label label-sm label-default"> Blocked </span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--</tbody>--%>
        <%--</table>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>

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


<ul id="ul-tmp" style="display: none">
    <li style="list-style:none; margin:0; padding:0;" ng-repeat="e in shipList">
        <ul class="infodetails" ng-click="clickMapItem(e)" data-ship="" style="padding: 0"
            onmousemove="mouseOverItem(this)">
            <div class="row" style="padding-left:0px;margin-left: 0px;">
                <div class="col-lg-9 col-xs-9"
                     style="overflow:hidden;margin-top:10px;margin-left: 0px;padding-left: 0px">
                    <li style="display:inline-block; position:absolute; top:-10px; width:30px; margin-top:10px;background:url(http://shipinfo.oss-cn-shanghai.aliyuncs.com/system/dibiao1.png) no-repeat;background-position: 10px 0 ">
                        <p style="color:#fff; text-align:center" class="index-p">{{$index+1}}</p>
                    </li>
                    <li style="display:inline-block; margin-left:26px;"><span
                            ng-click="clickMapItem(e)" ng-mousemove="mouseOverItem(e)"
                            style="color: blue;" class="short-name-span">{{e.shortName}}</span></li>
                    <li style="display:block; margin-left:26px;white-space:nowrap;"
                        ng-click="clickMapItem(e)" ng-mousemove="mouseOverItem(e)" class="address-li">{{e.address}}
                    </li>
                </div>
                <%--<div class="col-lg-3 col-xs-3" style="text-align:center" style="height:100%;">--%>
                <%--<img ng-click="clickMapItem(e)" ng-mousemove="mouseOverItem(e)" src='img/88.jpg' style=" height:50px; width:50px; text-align:center; margin-top:10px;"/>--%>
                <%--</div>--%>
            </div>
        </ul>
    </li>
</ul>

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

//        initTable1();
    });
    //
    //    var initTable1 = function () {
    //        var table = $("table");
    //        table.dataTable({
    //            "language": {
    //                "aria": {
    //                    "sortAscending": ": activate to sort column ascending",
    //                    "sortDescending": ": activate to sort column descending"
    //                },
    //                "emptyTable": "No data available in table",
    //                "info": "Showing _START_ to _END_ of _TOTAL_ records",
    //                "infoEmpty": "No records found",
    //                "infoFiltered": "(filtered1 from _MAX_ total records)",
    //                "lengthMenu": "Show _MENU_",
    //                "search": "Search:",
    //                "zeroRecords": "No matching records found",
    //                "paginate": {
    //                    "previous": "Prev",
    //                    "next": "Next",
    //                    "last": "Last",
    //                    "first": "First"
    //                }
    //            },
    //            "bStateSave": true, // save datatable state(pagination, sort, etc) in cookie.
    //            "pagingType": "bootstrap_extended",
    //            "lengthMenu": [
    //                [5, 15, 20, -1],
    //                [5, 15, 20, "All"] // change per page values here
    //            ],
    //            // set the initial value
    //            "pageLength": 5,
    //            "columnDefs": [{ // set default column settings
    //                'orderable': true,
    //                'targets': [0]
    //            }, {
    //                "searchable": true,
    //                "targets": [0]
    //            }],
    //            "order": [
    //                [1, "asc"]
    //            ] // set first column as a default sort by asc
    //        });
    //    }

</script>
<!--[if lt IE 9]>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/respond.js "></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/html5shiv.js "></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/placeholder-IE-fixes.js "></script>
<![endif]-->


<script type="text/javascript"
        src="http://api.map.baidu.com/api?v=2.0&ak=sH45FS0Pd1v58SSDcltpILGWyLkSn959"></script>
<script type="text/javascript">
    var map = new BMap.Map("l-map");
    map.centerAndZoom("上海", 5);
    //    map.enableScrollWheelZoom(true); //开启鼠标滚轮缩放

    var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT});
    var top_left_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT});
    var cityList = [
        {"id": "1", "nameCN": "曹妃甸", "nameEN": "Caofeidian", "longitude": "118.466697", "latitude": "39.279259"},
        {"id": "2", "nameCN": "天津", "nameEN": "Tianjin", "longitude": "117.209764", "latitude": "39.093709"},
        {"id": "3", "nameCN": "黄骅", "nameEN": "Huanghua", "longitude": "117.33653", "latitude": "38.377504"},
        {"id": "4", "nameCN": "石岛", "nameEN": "Shidao", "longitude": "122.435272", "latitude": "36.895455"},
        {"id": "5", "nameCN": "威海", "nameEN": "Weihai", "longitude": "122.127197", "latitude": "37.516403"},
        {"id": "6", "nameCN": "烟台", "nameEN": "Yantai", "longitude": "121.454239", "latitude": "37.470045"},
        {"id": "7", "nameCN": "龙口", "nameEN": "Longkou", "longitude": "120.485142", "latitude": "37.652548"},
        {"id": "8", "nameCN": "青岛", "nameEN": "Qingdao", "longitude": "120.389622", "latitude": "36.072259"},
        {"id": "9", "nameCN": "董家口", "nameEN": "Dongjiakou", "longitude": "119.768237", "latitude": "35.594775"},
        {"id": "10", "nameCN": "日照", "nameEN": "Rizhao", "longitude": "119.32", "latitude": "35.23"},
        {"id": "11", "nameCN": "岚山", "nameEN": "Lanshan", "longitude": "119.3399560204", "latitude": "35.1192223215"},
        {"id": "12", "nameCN": "连云港", "nameEN": "Lianyungang", "longitude": "120.386839", "latitude": "36.097453"},
        {"id": "13", "nameCN": "靖江", "nameEN": "Jingjiang", "longitude": "120.17", "latitude": "32.02 "},
        {"id": "14", "nameCN": "江阴", "nameEN": "Jiangyin", "longitude": "120.17", "latitude": "31.54"},
        {"id": "15", "nameCN": "张家港", "nameEN": "Zhangjiagang", "longitude": "120.32", "latitude": "31.52 "}
    ];


    var mark = [];
    var point = {};
    var label = {};
    var marker = {};
    var markdong = {};
    var markjing = {};


    var loadMapDataList = function () {
        markjing = '';
        for (var i = 0; i < cityList.length; i++) {
            if (cityList[i].longitude == null || cityList[i].latitude == null) {
                continue;//如果经纬度没有，那么跳过本次循环
            }
            var point = new BMap.Point(cityList[i].longitude, cityList[i].latitude);
            mark[cityList[i].id] = new BMap.Marker(point);
            map.addOverlay(mark[cityList[i].id]);
        }
    };
    loadMapDataList();

    var loadShipList = function () {
        var html = '';
        for (var i = 0; i < cityList.length; i++) {
            var tmp = $("#ul-tmp").clone();
            tmp.find(".infodetails").attr("data-ship", i);
            tmp.find(".index-p").text(i + 1);
            tmp.find(".short-name-span").text(cityList[i].nameCN);
            tmp.find(".address-li").text(cityList[i].nameEN);
            html += tmp.html();
        }
        $("#outer-ul").html(html);
    }
    loadShipList();


    var selectship = function (index) {
        var temp = cityList[0];
        cityList[0] = cityList[index];
        cityList[index] = temp;
        //插入排序  从小到大
        for (var i = 2; i < cityList.length; i++) {
            var j = i - 1;
            var key = cityList[i];
            while (j > 0 && cityList[j].id > key.id) {
                cityList[j + 1] = cityList[j];
                j--;
            }
            cityList[j + 1] = key;
        }
    };

    function mouseOverItem(obj) {
        var index = $(obj).attr("data-ship");
        var e = cityList[index];
        map.removeOverlay(markdong);
        map.addOverlay(markjing);
        map.removeOverlay(mark[e.id]);
        var point = new BMap.Point(e.longitude, e.latitude);
        map.centerAndZoom(point, 6);
        var label = new BMap.Label(e.nameCN, {
            offset: new BMap.Size(10, -25)
        });
        label.setStyle({
            color: "black",
            fontSize: "12px",
            height: "0px",
            lineHeight: "0px",
            fontFamily: "宋体",
            borderRadius: "3px",
            borderColor: "white"
        });
        var marker = new BMap.Marker(point);
        map.addOverlay(marker);
        marker.setLabel(label);
        marker.setAnimation(BMAP_ANIMATION_BOUNCE);
        markdong = marker;
        markjing = mark[e.id];
    }

    map.addControl(top_left_control);
    map.addControl(top_left_navigation);


</script>

</body>

</html>