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
    <title>Surveyors</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/icon/icon.ico">

    <!-- Web Fonts -->
    <!--<link rel='stylesheet' type='text/css'-->
    <!--href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600&subset=cyrillic,latin'>-->

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet"
          href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/css/style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet"
          href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/css/headers/header-default.css">
    <link rel="stylesheet" href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/css/footers/footer-v1.css">

    <link rel="stylesheet"
          href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/metronic/global/plugins/jquery-ui/jquery-ui.min.css">

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
        body, html, .wrapper {
            height: 100%;
        }

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

        .nav-header {
            height: 90px;
            background-color: #264071;
        }

        .navbar-nav {
            float: right;
        }

        ul.navbar-nav > li > a:hover,
        ul.navbar-nav > .active > a {
            color: #264071;
            background-color: white;
        }

        body {
            color: black
        }

        #map-area {
            width: 100%;
            height: 100%;
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

        #menuOne {
            position: absolute;
            width: 100%;
            height: calc(100% - 34px);
            background-color: #fff;
            border: 1px solid #ccc;
            font-size: 12px;
            overflow: hidden;
            line-height: 20px;
        }

        .left-part, .right-part {
            padding: 0;
            height: 100%;
        }

        .content-sm {
            padding-bottom: 0;
        }
    </style>
</head>

<body>

<div class="wrapper page-option-v1">
    <!--=== Header ===-->
    <div class="header">
        <div class="container" style="height: 70px;margin-bottom: 0;">
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

    <div class="nav-header">
        <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
            <div class="container">
                <jsp:include page="../include/navBar.jsp"/>
            </div>
        </div>
        <h1 style="margin-left: 10%;color:white">Our surveyors</h1>
    </div>

    <div class="container-fluid"
         style="height: calc(100% - 162px);padding-left: 0;padding-right:0;background-color: #264071;">
        <div class="left-part col-md-3">
            <div class="input-group">
                <input type="text" class="form-control" id="search-port-input" placeholder="Search port...">
                <span class="input-group-btn">
                    <button class="btn-u" id="search-port-btn" onclick="searchPort()" type="button"><i
                            class="fa fa-search"></i></button>
                </span>
            </div>

            <div id="menuOne">
                <ul style="height: 100%;padding:0;overflow:auto;overflow-x:hidden;margin-right: 0px"
                    id="outer-ul">
                </ul>
            </div>

            <!--<div class="footer-v1">-->
            <!--<div class="copyright">-->
            <!--<div class="container">-->
            <!--<div class="col-md-3 md-margin-bottom-40">-->
            <!--<div class="headline">-->
            <!--<h2>Quickly Links</h2></div>-->
            <!--<ul class="list-unstyled link-list">-->
            <!--<li>-->
            <!--<a href="http://a.goshipyard.com">goshipyard</a><i class="fa fa-angle-right"></i>-->
            <!--</li>-->
            <!--<li>-->
            <!--<a href="http://a.goshipyard.com:8899/admin">goshiprepair</a><i-->
            <!--class="fa fa-angle-right"></i></li>-->
            <!--</ul>-->
            <!--</div>-->
            <!--<div class="col-md-3 md-margin-bottom-40">-->
            <!--<div class="headline">-->
            <!--<h2>Quickly Links</h2></div>-->
            <!--<ul class="list-unstyled link-list">-->
            <!--<li>-->
            <!--<a href="/static/html/download_center.html">Download Center</a><i-->
            <!--class="fa fa-angle-right"></i></li>-->
            <!--<li>-->
            <!--<a href="/static/html/about_us.html">About Us</a><i class="fa fa-angle-right"></i>-->
            <!--</li>-->
            <!--</ul>-->
            <!--</div>-->
            <!--<div class="col-md-3 md-margin-bottom-40">-->
            <!--<div class="headline">-->
            <!--<h2>Login or Register</h2></div>-->
            <!--<ul class="list-unstyled">-->
            <!--<li style="float: left;margin-right: 10px;">-->
            <!--<a class="btn-u btn-lg" href="/login_toLogin">Login</a>-->
            <!--</li>-->
            <!--<li style="float: left;margin-right: 10px;">-->
            <!--<a class="btn-u btn-u-blue btn-lg" href="javascript:void(0)">Register</a>-->
            <!--</li>-->
            <!--</ul>-->
            <!--</div>-->
            <!--<div class="row">-->
            <!--<div class="col-md-12" style="text-align: center;">-->
            <!--<p>Email:-->
            <!--<a href="mailto:service@goshipyard.com" style="color:#3598DC;" class="">service@goshipgroup.com</a>-->
            <!--<p>-->
            <!--<p>Copyright &copy; 2016 - 2017 Goship Group.All Rights Reserved.</p>-->
            <!--</div>-->
            <!--</div>-->
            <!--</div>-->
            <!--</div>-->
            <!--&lt;!&ndash;/copyright&ndash;&gt;-->
            <!--</div>-->
        </div>

        <div class="right-part col-md-9">
            <div id="map-area">
            </div>
        </div>

        <div class="clearfix"></div>
    </div>

</div>
<!--/wrapper-->


<ul id="ul-tmp" style="display: none">
    <li class="tmp-li" style="list-style:none; margin:0; padding:0;">
        <ul class="infodetails" data-ship="" style="padding: 0"
            onmouseover="mouseOverItem(this)">
            <div class="row" style="padding-left:0px;margin-left: 0px;">
                <div class="col-lg-9 col-xs-9"
                     style="overflow:hidden;margin-top:10px;margin-left: 0px;padding-left: 0px">
                    <li style="display:inline-block; position:absolute; top:-10px; width:30px; margin-top:10px;background:url(http://shipinfo.oss-cn-shanghai.aliyuncs.com/system/dibiao1.png) no-repeat 10px 0 ">
                        <p style="color:#fff; text-align:center" class="index-p">{{$index+1}}</p>
                    </li>
                    <li style="display:inline-block; margin-left:26px;"><span
                            style="color: blue;" class="short-name-span">{{e.shortName}}</span></li>
                    <li style="display:block; margin-left:26px;white-space:nowrap;"
                        class="address-li">{{e.address}}
                    </li>
                </div>
                <div class="col-lg-3 col-xs-3" style="text-align:center;height:50px;display: table">
                    <a class="get-quotation-a" href="/" style="display: table-cell;vertical-align: middle">
                        <i class="fa fa-arrow-right" style="" title="Get Quotation"></i></a>
                </div>
            </div>
        </ul>
    </li>
</ul>

<!-- JS Global Compulsory -->
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/jquery/jquery.min.js "></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/metronic/global/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/jquery/jquery-migrate.min.js "></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/bootstrap/js/bootstrap.min.js "></script>
<!-- JS Implementing Plugins -->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/back-to-top.js "></script>-->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/smoothScroll.js "></script>-->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/jquery.parallax.js "></script>-->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/fancybox/source/jquery.fancybox.pack.js "></script>-->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js "></script>-->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js "></script>-->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js "></script>-->
<!-- JS Customization -->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/custom.js "></script>-->
<!-- JS Page Level -->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/app.js "></script>-->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/fancy-box.js "></script>-->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/owl-carousel.js "></script>-->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/revolution-slider.js "></script>-->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/style-switcher.js "></script>-->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/datatable.min.js "></script>-->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/datatables/datatables.min.js "></script>-->
<!--<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js"></script>-->

<!--百度地图-->
<script src="http://api.map.baidu.com/api?v=2.0&ak=sH45FS0Pd1v58SSDcltpILGWyLkSn959&language=en"></script>
<!--谷歌地图-->
<!--<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB8ppjcHpAcpYycEReDM73t8ayqXoRfwtE&language=en"></script>-->
<!--<script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>-->

<!--[if lt IE 9]>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/respond.js "></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/html5shiv.js "></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/placeholder-IE-fixes.js "></script>
<![endif]-->

<script type="text/javascript">
    var portList = [
        //辽宁
        {
            "id": "1",
            "nameCN": "大连",
            "nameEN": "Dalian",
            "longitude": 121.6147530946,
            "latitude": 38.9136755548,
            "count": 5
        },
        {
            "id": "2",
            "nameCN": "锦州",
            "nameEN": "Jinzhou",
            "longitude": 121.1270487066,
            "latitude": 41.0951631965,
            "count": 4
        },
        {
            "id": "3",
            "nameCN": "营口",
            "nameEN": "Yingkou",
            "longitude": 122.2348765511,
            "latitude": 40.6668101769,
            "count": 5
        },
        {
            "id": "4",
            "nameCN": "葫芦岛",
            "nameEN": "Huludao",
            "longitude": 120.8369994711,
            "latitude": 40.7110088122,
            "count": 5
        },
        {
            "id": "5",
            "nameCN": "丹东",
            "nameEN": "Dandong",
            "longitude": 124.3560100561,
            "latitude": 39.9997957639,
            "count": 4
        },
        //河北
        {
            "id": "6",
            "nameCN": "秦皇岛",
            "nameEN": "Qinhuangdao",
            "longitude": 119.5996117326,
            "latitude": 39.9354257286,
            "count": 4
        },
        {
            "id": "7",
            "nameCN": "唐山",
            "nameEN": "Tangshan",
            "longitude": 118.1805948789,
            "latitude": 39.6304907838,
            "count": 5
        },
        {
            "id": "8",
            "nameCN": "黄骅",
            "nameEN": "Huanghua",
            "longitude": 117.9119374575,
            "latitude": 38.3136475821,
            "count": 5
        },
        //天津
        {
            "id": "9",
            "nameCN": "天津",
            "nameEN": "Tianjin",
            "longitude": 117.1993482089,
            "latitude": 39.0850853357,
            "count": 5
        },
        //山东
        {
            "id": "10",
            "nameCN": "青岛",
            "nameEN": "Qingdao",
            "longitude": 120.3829882148,
            "latitude": 36.0662229165,
            "count": 5
        },
        {
            "id": "11",
            "nameCN": "日照",
            "nameEN": "Rizhao",
            "longitude": 119.5273162564,
            "latitude": 35.4164002200,
            "count": 4
        },
        {
            "id": "12",
            "nameCN": "烟台",
            "nameEN": "Yantai",
            "longitude": 121.4480863676,
            "latitude": 37.4635564142,
            "count": 3
        },
        {
            "id": "13",
            "nameCN": "威海",
            "nameEN": "Weihai",
            "longitude": 122.1217163850,
            "latitude": 37.5134844782,
            "count": 3
        },
        {
            "id": "14",
            "nameCN": "东营",
            "nameEN": "Dongying",
            "longitude": 118.6746560557,
            "latitude": 37.4336512471,
            "count": 3
        },
        {
            "id": "15",
            "nameCN": "潍坊",
            "nameEN": "Weifang",
            "longitude": 119.1617715131,
            "latitude": 36.7068739340,
            "count": 3
        },
        {
            "id": "16",
            "nameCN": "滨州港",
            "nameEN": "Binzhougang",
            "longitude": 118.0563371305,
            "latitude": 38.1778544393,
            "count": 2
        },
        {
            "id": "17",
            "nameCN": "石岛港",
            "nameEN": "Shidaogang",
            "longitude": 122.4381685702,
            "latitude": 36.8827931488,
            "count": 2
        },
        {
            "id": "18",
            "nameCN": "岚山",
            "nameEN": "Lanshan",
            "longitude": 119.3744383696,
            "latitude": 35.1021117240,
            "count": 4
        },
        {
            "id": "19",
            "nameCN": "龙口",
            "nameEN": "Longkou",
            "longitude": 120.3073852878,
            "latitude": 37.6386223517,
            "count": 2
        },
        //江苏
        {
            "id": "20",
            "nameCN": "南京",
            "nameEN": "Nanjing",
            "longitude": 118.7964897811,
            "latitude": 32.0584065670,
            "count": 5
        },
        {
            "id": "21",
            "nameCN": "连云港",
            "nameEN": "Lianyungang",
            "longitude": 119.2229533071,
            "latitude": 34.5966979163,
            "count": 4
        },
        {
            "id": "22",
            "nameCN": "张家港",
            "nameEN": "Zhangjiagang",
            "longitude": 120.5305766319,
            "latitude": 31.8635841285,
            "count": 6
        },
        {
            "id": "23",
            "nameCN": "镇江",
            "nameEN": "Zhenjiang",
            "longitude": 119.4250014076,
            "latitude": 32.1896004196,
            "count": 4
        },
        {
            "id": "24",
            "nameCN": "南通",
            "nameEN": "Nantong",
            "longitude": 120.8936906126,
            "latitude": 31.9795927232,
            "count": 3
        },
        {
            "id": "25",
            "nameCN": "太仓",
            "nameEN": "Taicang",
            "longitude": 121.1297524839,
            "latitude": 31.4591190441,
            "count": 5
        },
        {
            "id": "26",
            "nameCN": "泰州",
            "nameEN": "Taizhou",
            "longitude": 119.9255247467,
            "latitude": 32.4554550346,
            "count": 4
        },
        {
            "id": "27",
            "nameCN": "扬州",
            "nameEN": "Yangzhou",
            "longitude": 119.4126849952,
            "latitude": 32.3935827511,
            "count": 4
        },
        {
            "id": "28",
            "nameCN": "靖江",
            "nameEN": "Jingjiang",
            "longitude": 120.2745297595,
            "latitude": 32.0149378291,
            "count": 4
        },
        //上海
        {
            "id": "29",
            "nameCN": "上海",
            "nameEN": "Shanghai",
            "longitude": 121.4737919321,
            "latitude": 31.2304324029,
            "count": 8
        },
        //浙江
        {
            "id": "30",
            "nameCN": "宁波",
            "nameEN": "Ningbo",
            "longitude": 121.5502681384,
            "latitude": 29.8738659036,
            "count": 9
        },
        {
            "id": "31",
            "nameCN": "舟山",
            "nameEN": "Zhoushan",
            "longitude": 122.2077802540,
            "latitude": 29.9853966468,
            "count": 7
        },
        //福建
        {
            "id": "32",
            "nameCN": "福州",
            "nameEN": "Fuzhou",
            "longitude": 119.2964466153,
            "latitude": 26.0741979397,
            "count": 7
        },
        {
            "id": "33",
            "nameCN": "秀屿",
            "nameEN": "Xiuyu",
            "longitude": 118.9886956872,
            "latitude": 25.2175161587,
            "count": 5
        },
        {
            "id": "34",
            "nameCN": "泉州",
            "nameEN": "Quanzhou",
            "longitude": 118.6758501577,
            "latitude": 24.8738849496,
            "count": 6
        },
        {
            "id": "35",
            "nameCN": "厦门",
            "nameEN": "Xiamen",
            "longitude": 118.0894773555,
            "latitude": 24.4795132358,
            "count": 5
        },
        //广东
        {
            "id": "36",
            "nameCN": "广州",
            "nameEN": "Guangzhou",
            "longitude": 113.2643446427,
            "latitude": 23.1290765766,
            "count": 6
        },
        {
            "id": "37",
            "nameCN": "深圳",
            "nameEN": "Shenzhen",
            "longitude": 114.0595699327,
            "latitude": 22.5428750360,
            "count": 5
        },
        {
            "id": "38",
            "nameCN": "阳江",
            "nameEN": "Yangjiang",
            "longitude": 111.9825380297,
            "latitude": 21.8582781587,
            "count": 5
        },
        {
            "id": "39",
            "nameCN": "湛江",
            "nameEN": "Zhanjiang",
            "longitude": 110.3589350579,
            "latitude": 21.2713406473,
            "count": 6
        },
        {
            "id": "40",
            "nameCN": "汕头",
            "nameEN": "Shantou",
            "longitude": 116.6821945025,
            "latitude": 23.3534997367,
            "count": 5
        },
        {
            "id": "41",
            "nameCN": "珠海",
            "nameEN": "Zhuhai",
            "longitude": 113.5766734018,
            "latitude": 22.2707304647,
            "count": 4
        },
        {
            "id": "42",
            "nameCN": "茂名",
            "nameEN": "Maoming",
            "longitude": 110.9252169956,
            "latitude": 21.6632912138,
            "count": 5
        },
        {
            "id": "43",
            "nameCN": "汕尾",
            "nameEN": "Shanwei",
            "longitude": 115.3751308046,
            "latitude": 22.7856616237,
            "count": 4
        },
        {
            "id": "44",
            "nameCN": "潮州",
            "nameEN": "Chaozhou",
            "longitude": 116.6229466330,
            "latitude": 23.6566981005,
            "count": 5
        },
        {
            "id": "45",
            "nameCN": "中山",
            "nameEN": "Zhongshan",
            "longitude": 113.3926044920,
            "latitude": 22.5159645983,
            "count": 4
        },
        //广西
        {
            "id": "46",
            "nameCN": "钦州",
            "nameEN": "Qinzhou",
            "longitude": 108.6542931594,
            "latitude": 21.9796963144,
            "count": 6
        },
        {
            "id": "47",
            "nameCN": "防城港",
            "nameEN": "Fangchenggang",
            "longitude": 108.3547130082,
            "latitude": 21.6871290829,
            "count": 6
        },
        {
            "id": "48",
            "nameCN": "北海",
            "nameEN": "Beihai",
            "longitude": 109.1200988288,
            "latitude": 21.4811464073,
            "count": 6
        },
        //海南
        {
            "id": "49",
            "nameCN": "洋浦",
            "nameEN": "Yangpu",
            "longitude": 109.1945253519,
            "latitude": 19.7333397640,
            "count": 4
        },
        {
            "id": "50",
            "nameCN": "八所",
            "nameEN": "Basuo",
            "longitude": 108.6448335857,
            "latitude": 19.0886996987,
            "count": 4
        },
        {
            "id": "51",
            "nameCN": "海口",
            "nameEN": "Haikou",
            "longitude": 110.1998910288,
            "latitude": 20.0442268036,
            "count": 4
        },
//香港
        {
            "id": "52",
            "nameCN": "香港",
            "nameEN": "Hong Kong",
            "longitude": 114.1604896100,
            "latitude": 22.2780757700,
            "count": 5
        },
        //台湾
        {
            "id": "53",
            "nameCN": "高雄",
            "nameEN": "Gaoxiong",
            "longitude": 120.3068390000,
            "latitude": 22.6305760000,
            "count": 3
        },
        {
            "id": "54",
            "nameCN": "台中",
            "nameEN": "Taizhong",
            "longitude": 120.6729823424,
            "latitude": 24.1529178654,
            "count": 3
        },
        {
            "id": "55",
            "nameCN": "基隆",
            "nameEN": "Jilong",
            "longitude": 121.7415260000,
            "latitude": 25.1221050000,
            "count": 3
        },
        //国际
        {
            "id": "56",
            "nameCN": "新加坡",
            "nameEN": "Singapore",
            "longitude": 103.8588142345,
            "latitude": 1.3576571234,
            "count": 5
        },
        {
            "id": "57",
            "nameCN": "日本",
            "nameEN": "Japan",
            "longitude": 139.7227598765,
            "latitude": 35.7063987654,
            "count": 8
        },
        {
            "id": "58",
            "nameCN": "韩国",
            "nameEN": "Korea",
            "longitude": 127.0558304567,
            "latitude": 47.5765909876,
            "count": 5
        },
        {
            "id": "59",
            "nameCN": "中东",
            "nameEN": "Middle East",
            "longitude": 50.5493371234,
            "latitude": 26.1239031234,
            "count": 5
        },
        {
            "id": "60",
            "nameCN": "南亚",
            "nameEN": "South Asia",
            "longitude": 66.8934091234,
            "latitude": 24.9167901234,
            "count": 6
        },
        {
            "id": "61",
            "nameCN": "南美洲",
            "nameEN": "South America",
            "longitude": -58.283011,
            "latitude": -12.758826,
            "count": 3
        },
        {
            "id": "62",
            "nameCN": "北美洲",
            "nameEN": "North America",
            "longitude": -103.908307,
            "latitude": 42.647385,
            "count": 3
        },
        {
            "id": "63",
            "nameCN": "欧洲",
            "nameEN": "Europe",
            "longitude": 19.112233,
            "latitude": 50.556677,
            "count": 15
        },
        {
            "id": "64",
            "nameCN": "非洲",
            "nameEN": "Africa",
            "longitude": 22.22,
            "latitude": 5.887766,
            "count": 1
        },
    ];
    var map;
    var mark = [];
    var point = {};
    var label = {};
    var marker = {};
    var marked;
    var markdong = {};
    var markjing = {};

    var initMap;
    var loadMapDataList;
    var loadShipList;
    var mouseOverItem;
    var searchPort;

    var infoWindow;

    getIP();
    //获取ip
    function getIP() {
        $.ajax({
            url: 'http://pv.sohu.com/cityjson?ie=utf-8',
            dataType: "script",
            success: function () {
                var ipAddr = returnCitySN.cip;
                judgeArea(ipAddr);
            },
            error: function () {
                initBMap();
            }
        });
    }
    //判断区域
    function judgeArea(ipAddr) {
        $.ajax({
            url: 'http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js&ip=' + ipAddr,
            dataType: "script",
            success: function () {
                var country = remote_ip_info.country;
                if (country == "中国") {
                    initBMap();
                    console.log("国内");
                } else {
                    getGMapJs();
                    console.log("国外");
                }
            },
            error: function () {
                initBMap();
            }
        });
    }
    //加载谷歌地图js
    function getGMapJs() {
        $.ajax({
            url: 'https://maps.googleapis.com/maps/api/js?key=AIzaSyB8ppjcHpAcpYycEReDM73t8ayqXoRfwtE&language=en',
            dataType: "script",
            success: function () {
                initGMap();
            }
        });
    }

    //初始化百度地图
    function initBMap() {
        initMap = function () {
            map = new BMap.Map("map-area");
            map.centerAndZoom(new BMap.Point(116.4035, 39.915), 3);
            map.enableScrollWheelZoom(true); //开启鼠标滚轮缩放
            var navigationControl = new BMap.NavigationControl();//创建平移缩放控件
            map.addControl(navigationControl);
            var scaleControl = new BMap.ScaleControl();//这里创建比例尺控件
            map.addControl(scaleControl);
            var overviewMapControl = new BMap.OverviewMapControl();//创建缩略图控件，注意这个控件默认是在地图右下角，并且是缩着的
            map.addControl(overviewMapControl);
            var mapTypeControl = new BMap.MapTypeControl({mapTypes: [BMAP_NORMAL_MAP, BMAP_HYBRID_MAP]});//创建地图类型控件
            map.addControl(mapTypeControl);
            BMap.Marker.prototype.addEventListener("click", function () {
                if (marked) {
                    marked.setAnimation(null);
                }
                marked = this;
                this.setAnimation(BMAP_ANIMATION_BOUNCE);
                $('.BMapLabel').remove();
                var port = portList[this.mIndex];
                var label = new BMap.Label(port.nameEN + " (Surveyors count:" + port.count + ")", {
                    offset: new BMap.Size(15, -35)
                });
                label.setStyle({
                    maxWidth: "none",
                    color: "red",
                    fontSize: "20px",
                    backgroundColor: "white",
                    fontFamily: "宋体",
                    borderRadius: "3px",
                    borderColor: "grey"
                });
                this.setLabel(label);
            });
        }
        loadMapDataList = function () {
            for (var i = 0; i < portList.length; i++) {
                if (portList[i].longitude == null || portList[i].latitude == null) {
                    continue;//如果经纬度没有，那么跳过本次循环
                }
                var point = new BMap.Point(portList[i].longitude, portList[i].latitude);
                mark[portList[i].id] = new BMap.Marker(point);
                mark[portList[i].id].mIndex = i;
                map.addOverlay(mark[portList[i].id]);
            }
        }
        loadShipList = function (k) {
            if (k) {
                var html = '';
                for (var i = 0; i < portList.length; i++) {
                    var port = portList[i];
                    var name = (port.nameEN + port.nameCN).toLowerCase();
                    if (name.indexOf(k.toLowerCase()) >= 0) {
                        var tmp = $("#ul-tmp").clone();
                        tmp.find(".infodetails").attr("data-ship", port.id);
                        tmp.find(".index-p").text(i + 1);
                        tmp.find(".short-name-span").text(port.nameCN + " " + port.count);
                        tmp.find(".address-li").text(port.nameEN + " " + port.count);
                        tmp.find("a").attr('href', '/?port=' + port.nameEN);
                        html += tmp.html();
                    }
                }
                $("#outer-ul").html(html);
            } else {
                var html = '';
                for (var i = 0; i < portList.length; i++) {
                    var port = portList[i];
                    var tmp = $("#ul-tmp").clone();
                    tmp.find(".infodetails").attr("data-ship", port.id);
                    tmp.find(".index-p").text(i + 1);
                    tmp.find(".short-name-span").text(port.nameCN + " " + port.count);
                    tmp.find(".address-li").text(port.nameEN + " " + port.count);
                    tmp.find("a").attr('href', '/?port=' + port.nameEN);
                    html += tmp.html();
                }
                $("#outer-ul").html(html);
            }
        }
        mouseOverItem = function (obj) {
            var index = $(obj).attr("data-ship");
            var e = portList[index];
            var point = new BMap.Point(e.longitude, e.latitude);
            if (!map.getBounds().containsPoint(point) == true) {
                map.centerAndZoom(point, map.getZoom());
            }
            mark[index].V.click();
        }
        searchPort = function () {
            var k = $('#search-port-input').val();
            loadShipList(k);
        }
        initMap();
        loadMapDataList();
        loadShipList();
    }
    //初始化谷歌地图
    function initGMap() {
        initMap = function () {
            var center = {lat: 25.363, lng: 131.044};
            map = new google.maps.Map(document.getElementById('map-area'), {
                zoom: 2,
                center: center,
                zoomControl: true,
                mapTypeControl: true,
                scaleControl: true,
                streetViewControl: true,
                rotateControl: true,
                fullscreenControl: true
            });
        }
        loadShipList = function (k) {
            if (k) {
                var html = '';a
                for (var i = 0; i < portList.length; i++) {
                    var port = portList[i];
                    var name = (port.nameEN + port.nameCN).toLowerCase();
                    if (name.indexOf(k.toLowerCase()) >= 0) {
                        var tmp = $("#ul-tmp").clone();
                        tmp.find(".infodetails").attr("data-ship", port.id);
                        tmp.find(".index-p").text(i + 1);
                        tmp.find(".short-name-span").text(port.nameCN + " " + port.count);
                        tmp.find(".address-li").text(port.nameEN + " " + port.count);
                        tmp.find("a").attr('href', '/?port=' + port.nameEN);
                        html += tmp.html();
                    }
                }
                $("#outer-ul").html(html);
            } else {
                var html = '';
                for (var i = 0; i < portList.length; i++) {
                    var port = portList[i];
                    var tmp = $("#ul-tmp").clone();
                    tmp.find(".infodetails").attr("data-ship", port.id);
                    tmp.find(".index-p").text(i + 1);
                    tmp.find(".short-name-span").text(port.nameCN + " " + port.count);
                    tmp.find(".address-li").text(port.nameEN + " " + port.count);
                    tmp.find("a").attr('href', '/?port=' + port.nameEN);
                    html += tmp.html();
                }
                $("#outer-ul").html(html);
            }
        }
        loadMapDataList = function () {
            for (var i = 0; i < portList.length; i++) {
                var port = portList[i];
                if (port.longitude == null || port.latitude == null) {
                    continue;//如果经纬度没有，那么跳过本次循环
                }
                var marker = new google.maps.Marker({
                    position: {lat: port.latitude, lng: port.longitude},
                    mIndex: port.id,
                    map: map,
                    icon: 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/downloadCenter/mappoint.png'
                });
                marker.addListener('click', function () {
                    if (infoWindow != null) {
                        infoWindow.close();
                    }
                    infoWindow = new google.maps.InfoWindow({
                        content: portList[this.mIndex - 1].nameEN + ' > count:' + portList[this.mIndex - 1].count
                    });
                    infoWindow.open(map, this);
                });
                mark[port.id] = marker;
            }
        }
        mouseOverItem = function (obj) {
            var index = $(obj).attr("data-ship");
            var e = portList[index];
            if (map.getBounds().contains(mark[index].getPosition())) {
                map.setCenter({lat: e.latitude, lng: e.longitude});
            }
            google.maps.event.trigger(mark[index], 'click');
        }
        searchPort = function () {
            var k = $('#search-port-input').val();
            loadShipList(k);
        }
        initMap();
        loadShipList();
        loadMapDataList();
    }


    $("#search-port-input").autocomplete({
        minChars: 0,
        autoFill: false,
        maxHeight: '100px',
        source: function (request, response) {
            var count = 0;
            response($.map(portList, function (item) {
                var name = (item.nameEN + item.nameCN).toLowerCase();
                //最多显示10个
                if (count >= 10) {
                    return;
                }
                if (name.indexOf(request.term.toLowerCase()) >= 0) {
                    count++;
                    return { //lable为下拉列表显示数据源。value为选中放入到文本框的值，这种方式可以自定义显示
                        label: item.nameEN + " " + item.nameCN,
                        value: item.nameEN
                    }
                }
            }));
        },
        select: function (event, ui) {
            loadShipList(ui.item.value);
        }
    });
</script>
</body>
</html>