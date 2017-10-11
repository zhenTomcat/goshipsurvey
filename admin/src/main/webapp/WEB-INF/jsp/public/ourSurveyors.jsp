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

    </style>
</head>

<body>

<div class="wrapper page-option-v1">
    <!--=== Header ===-->
    <jsp:include page="../include/header.jsp"/>
    <!--=== End Header ===-->

    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Our Surveyors</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="/">Home</a></li>
                <li class="active"><a href="/public/ourSurveyors">Our Surveyors</a></li>
            </ul>
        </div>
    </div>
    <!--/breadcrumbs-->

    <div class="container-fluid"
         style="height: calc(100% - 154px);padding-left: 0;padding-right:0;background-color: #264071;">
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
                        <p style="color:#fff; text-align:center" class="index-p">&nbsp;</p>
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
<%--判断国家地区--%>
<script src="http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js"></script>

<!--[if lt IE 9]>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/respond.js "></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/html5shiv.js "></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/placeholder-IE-fixes.js "></script>
<![endif]-->

<script type="text/javascript">
    $(document).ready(function () {
        getPortList();
        init();
    })


    var allPortList = [];
    var showList = [];
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
    var loadShowList;
    var mouseOverItem;
    var searchPort;

    var infoWindow;

    function getPortList() {
        $.ajax({
            url: 'http://sjtu.goshipyard.com/port/list',
            type: "post",
            data: {
                sqlWhere: "surveyors_count >= '1' and longitude is not null and latitude is not null and del_flag = 0",
                start: 0,
                length: 3000
            },
            contentType: "application/x-www-form-urlencoded; charset=utf-8",
            async: false,
            success: function (result) {
                allPortList = result.data;
                console.log(result);
            },
        });
    }

    function init() {
        console.log(remote_ip_info.country);
        //加载谷歌地图js
        if (!remote_ip_info.country || remote_ip_info.country == "中国") {
            initBMap();
        } else {
            加载谷歌地图js
            getGMapJs();
            initGMap();
        }
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
                var port = allPortList[this.mIndex];
                var label = new BMap.Label(port.portEn + " (Surveyors Count:" + port.surveyorsCount + ")", {
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
            for (var i = 0; i < allPortList.length; i++) {
                if (allPortList[i].longitude == null || allPortList[i].latitude == null) {
                    continue;//如果经纬度没有，那么跳过本次循环
                }
                var point = new BMap.Point(allPortList[i].longitude, allPortList[i].latitude);
                mark[i] = new BMap.Marker(point);
                mark[i].mIndex = i;
                map.addOverlay(mark[i]);
            }
        }
        loadShowList = function (k) {
            if (k) {
                var html = '';
                for (var i = 0; i < allPortList.length; i++) {
                    var port = allPortList[i];
                    var name = (port.portEn + port.portCh).toLowerCase();
                    if (name.indexOf(k.toLowerCase()) >= 0) {
                        var tmp = $("#ul-tmp").clone();
                        tmp.find(".infodetails").attr("data-ship", i);
                        tmp.find(".short-name-span").text(port.portCh + " " + port.surveyorsCount);
                        tmp.find(".address-li").text(port.portEn + " " + port.surveyorsCount);
                        tmp.find("a").attr('href', '/?port=' + port.portEn);
                        html += tmp.html();
                    }
                }
                $("#outer-ul").html(html);
            } else {
                var html = '';
                for (var i = 0; i < allPortList.length; i++) {
                    var port = allPortList[i];
                    var tmp = $("#ul-tmp").clone();
                    tmp.find(".infodetails").attr("data-ship", i);
                    tmp.find(".short-name-span").text(port.portCh + " " + port.surveyorsCount);
                    tmp.find(".address-li").text(port.portEn + " " + port.surveyorsCount);
                    tmp.find("a").attr('href', '/?port=' + port.portEn);
                    html += tmp.html();
                }
                $("#outer-ul").html(html);
            }
        }
        mouseOverItem = function (obj) {
            var index = $(obj).attr("data-ship");
            var e = allPortList[index];
            var point = new BMap.Point(e.longitude, e.latitude);
            if (!map.getBounds().containsPoint(point) == true) {
                map.centerAndZoom(point, map.getZoom());
            }
            mark[index].V.click();
        }
        searchPort = function () {
            var k = $('#search-port-input').val();
            loadShowList(k);
        }
        initMap();
        loadMapDataList();
//        loadShowList();
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
        loadShowList = function (k) {
            if (k) {
                var html = '';
                for (var i = 0; i < allPortList.length; i++) {
                    var port = allPortList[i];
                    var name = (port.portEn + port.portCh).toLowerCase();
                    if (name.indexOf(k.toLowerCase()) >= 0) {
                        var tmp = $("#ul-tmp").clone();
                        tmp.find(".infodetails").attr("data-ship", i);
                        tmp.find(".short-name-span").text(port.portCh + " " + port.surveyorsCount);
                        tmp.find(".address-li").text(port.portEn + " " + port.surveyorsCount);
                        tmp.find("a").attr('href', '/?port=' + port.portEn);
                        html += tmp.html();
                    }
                }
                $("#outer-ul").html(html);
            } else {
                var html = '';
                for (var i = 0; i < allPortList.length; i++) {
                    var port = allPortList[i];
                    var tmp = $("#ul-tmp").clone();
                    tmp.find(".infodetails").attr("data-ship", i);
                    tmp.find(".short-name-span").text(port.portCh + " " + port.surveyorsCount);
                    tmp.find(".address-li").text(port.portEn + " " + port.surveyorsCount);
                    tmp.find("a").attr('href', '/?port=' + port.portEn);
                    html += tmp.html();
                }
                $("#outer-ul").html(html);
            }
        }
        loadMapDataList = function () {
            for (var i = 0; i < allPortList.length; i++) {
                var port = allPortList[i];
                if (port.longitude == null || port.latitude == null) {
                    continue;//如果经纬度没有，那么跳过本次循环
                }
                var marker = new google.maps.Marker({
                    position: {lat: port.latitude, lng: port.longitude},
                    mIndex: i,
                    map: map,
                    icon: 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/downloadCenter/mappoint.png'
                });
                marker.addListener('click', function () {
                    if (infoWindow != null) {
                        infoWindow.close();
                    }
                    infoWindow = new google.maps.InfoWindow({
                        content: allPortList[this.mIndex].portEn + ' > Surveyors Count:' + allPortList[this.mIndex].surveyorsCount
                    });
                    infoWindow.open(map, this);
                });
                mark[i] = marker;
            }
        }
        mouseOverItem = function (obj) {
            var index = $(obj).attr("data-ship");
            var e = allPortList[index];
            if (map.getBounds().contains(mark[index].getPosition())) {
                map.setCenter({lat: e.latitude, lng: e.longitude});
            }
            google.maps.event.trigger(mark[index], 'click');
        }
        searchPort = function () {
            var k = $('#search-port-input').val();
            loadShowList(k);
        }
        initMap();
//        loadShowList();
        loadMapDataList();
    }
    function getGMapJs() {
        $.ajax({
            url: 'https://maps.googleapis.com/maps/api/js?key=AIzaSyB8ppjcHpAcpYycEReDM73t8ayqXoRfwtE&language=en',
            dataType: "script",
            success: function () {
                initGMap();
            }
        });
    }


    $("#search-port-input").autocomplete({
        minChars: 0,
        autoFill: false,
        maxHeight: '100px',
        source: function (request, response) {
            var surveyorsCount = 0;
            response($.map(allPortList, function (item) {
                var name = (item.portEn + item.portCh).toLowerCase();
                //最多显示10个
                if (surveyorsCount >= 10) {
                    return;
                }
                if (name.indexOf(request.term.toLowerCase()) >= 0) {
                    surveyorsCount++;
                    return { //lable为下拉列表显示数据源。value为选中放入到文本框的值，这种方式可以自定义显示
                        label: item.portEn + " " + item.portCh,
                        value: item.portEn
                    }
                }
            }));
        },
        select: function (event, ui) {
            loadShowList(ui.item.value);
        }
    });
</script>
</body>
</html>