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
    <title>主页</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/icon/icon.ico">

    <!-- Web Fonts -->
    <%--<link rel='stylesheet' type='text/css'--%>
    <%--href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600&subset=cyrillic,latin'>--%>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet"
          href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/css/style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet"
          href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/css/headers/header-default.css">
    <link rel="stylesheet" href="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/css/footers/footer-v1.css">

    <!-- CSS Jquery UI -->
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

        .navbar-nav {
            margin-top: -60px;
            float: right;
            color: white;
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

        .help-block {
            margin-top: 0;
            margin-bottom: 0;
        }

        label.required::after {
            content: " *";
            color: red;
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
                <jsp:include page="../include/navBar.jsp"/>
                <div class="clearfix"></div>
            </div>
        </div>

        <h1 style="margin-left: 10%;margin-top: -30px;color: white;">Best Shipping Service Through Internet</h1>

        <div class="row">
            <form class="form-horizontal" id="quotation-form" method="post" action="emailQuotation/addEmailQuotation"
                  role="form">
                <h1 style="margin-bottom: 20px;font-size: 35px; text-align: center;">In
                    Need Of A
                    Survey?</h1>
                <div class="form-group">
                    <label class="control-label col-md-3 required" for="shipName" style="font-weight: 100;">Enter ship
                        name</label>
                    <div class="col-md-6">
                        <input class="form-control " name="shipName" id="shipName"/>
                    </div>
                    <span class="help-block"></span>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 required" for="imo" style="font-weight: 100;">Enter IMO
                        number</label>
                    <div class="col-md-6">
                        <input class="form-control" name="imo" id="imo"/>
                    </div>
                    <span class="help-block"></span>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 required" style="font-weight: 100;">Select
                        inspection type</label>
                    <div class="col-md-6">
                        <c:forEach items="${emailQuotationTypeDict}" var="dict">
                            <label class="checkbox-inline"><input type="checkbox" name="inspectionType"
                                                                  value="${dict.value}"/>${dict.des}</label>
                        </c:forEach>
                    </div>
                    <span class="help-block"></span>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 required" for="port" style="font-weight: 100;">Enter
                        port</label>
                    <div class="col-md-6">
                        <input class="form-control" name="port" id="port" value="${param.port}"/>
                    </div>
                    <span class="help-block"></span>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 required" style="font-weight: 100;">Select date range</label>
                    <div class="input-group input-large date-picker input-daterange col-md-6"
                         data-date-format="mm/dd/yyyy" style="padding: 0 15px;float: left;">
                        <input type="text" class="form-control" name="startDate" id="startDate" autocomplete="false">
                        <span class="input-group-addon"> to </span>
                        <input type="text" class="form-control" name="endDate" id="endDate" autocomplete="false">
                    </div>
                    <span class="help-block"></span>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 required" for="email" style="font-weight: 100;">Enter your
                        email</label>
                    <div class="col-md-6">
                        <input class="form-control" name="email" id="email"/>
                    </div>
                    <span class="help-block"></span>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 required" style="font-weight: 100;">Select your role</label>
                    <div class="col-md-6 ">
                        <label class="radio-inline">
                            <input type="radio" name="role" value="Charterers"> Charterers
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="role" value="Owners"> Owners
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="role" value="Buyers"> Buyers
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="role" value="Others" id="roleOther"> Others <input
                                onkeyup="changeRoleOther(this)"
                                placeholder=" Please specify" style="line-height: normal">
                        </label>
                    </div>
                    <span class="help-block"></span>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3" for="specialRequirement" style="font-weight: 100;">Special
                        Requirement&nbsp;(If any)</label>
                    <div class="col-md-6">
                        <textarea class="form-control" name="specialRequirement" id="specialRequirement"
                                  style="resize: vertical"></textarea>
                    </div>
                    <span class="help-block"></span>
                </div>
                <button class="btn" data-loading-text="Loading..." id="submitBtn"
                        style="background-color: #264071;color: white;display: block;margin: 0 auto;width: 150px;">GET
                    QUOTATION
                </button>
            </form>

        </div>
        <!--/row-->
    </div>
    <!--/container-->
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
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/metronic/global/plugins/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/jquery.validate.min.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
        src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/metronic/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/js/plugins/jquery.form.min.js"></script>
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
    if (jQuery().datepicker) {
        $('.date-picker').datepicker({
            startDate: new Date(),
            orientation: "left",
            autoclose: true,
            todayBtn: 'linked',
            format: 'yyyy-mm-dd',
        });
    }

    $('#quotation-form').validate({
        errorElement: 'span',
        //				onfocusout: function(element) {
        //					$(element).valid();
        //				},
        focusInvalid: true,
        rules: {
            shipName: {
                required: true,
            },
            imo: {
                required: true,
            },
            inspectionType: {
                required: true,
            },
            port: {
                required: true,
            },
            startDate: {
                required: true,
            },
            email: {
                required: true,
                email: true
            },
            role: {
                required: true
            }
        },
        messages: {
            shipName: {
                required: "Ship name is required",
            },
            imo: {
                required: "IMO number is required",
            },
            inspectionType: {
                required: "Inspection type is required",
            },
            port: {
                required: "Port is required",
            },
            startDate: {
                required: "Start date is required",
            },
            email: {
                required: "Email is required",
                email: "Incorrect email format",
            },
            role: {
                required: "Role is required",
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
            $("#submitBtn").button("loading");
            $(form).ajaxSubmit({
                success: function (data) {
                    if (data.success) {
                        window.location.href = "emailQuotation/detail";
                    } else {
                        console.log("failure");
                        $("#submitBtn").button("reset");
                    }
                },
                error: function (data) {
                    console.log("error");
                    $("#submitBtn").button("reset");
                }
            });
        }
    });

    $("#shipName,#imo").autocomplete({
        minChars: 0,
        width: 310,
        autoFill: false,
        source: function (request, response) {
            $.ajax({
                type: "post",
                url: "publicShip/searchListByColumn",
                dataType: "json",
                data: {
                    keyword: request.term,
                    columns: ["name", "imo"]
                },
                success: function (data) {
                    response($.map(data.list, function (item) {
                        return { //lable为下拉列表显示数据源。value为选中放入到文本框的值，这种方式可以自定义显示
                            label: item.name + " / " + item.imo + " / " + item.shipType,
                            imo: item.imo,
                            shipName: item.name,
                        }
                    }));
                }
            });
        },
        select: function (event, ui) {
            event.preventDefault();
            $("#shipName").val(ui.item.shipName);
            $("#imo").val(ui.item.imo);
        }
    });

    $("#port").autocomplete({
        minChars: 0,
        width: 310,
        autoFill: false,
        source: function (request, response) {
            $.ajax({
                type: "post",
                url: "port/searchList",
                dataType: "json",
                data: {
                    keyword: request.term
                },
                success: function (data) {
                    response($.map(data.list, function (item) {
                        return { //label为下拉列表显示数据源。value为选中放入到文本框的值，这种方式可以自定义显示
                            label: item.portEn + " / " + item.countryCode,
                        }
                    }));
                }
            });
        }
    });

    function changeRoleOther(obj) {
        $('#roleOther').val($(obj).val());
    }
</script>
<!--[if lt IE 9]>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/respond.js"></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/html5shiv.js"></script>
<script src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/unify/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>

</html>