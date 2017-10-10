<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!@ page contentType="text/html;charset=UTF-8" language="java" >
<!@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" >
<style>
    .header{
        background-color: #f3f2f1;
    }
    /*.header .topbar ul.loginbar > li > a {*/
    /*color: #eee;*/
    /*}*/

    /*.header .topbar ul.loginbar > li > a:hover {*/
    /*color: black;*/
    /*}*/

    /*.header .navbar-nav > li > a {*/
    /*color: #eee;*/
    /*}*/

    /*.navbar-nav {*/
    /*margin-top: -60px;*/
    /*float: right;*/
    /*color: white;*/
    /*}*/

    /*ul.nav li a {*/
    /*color: white;*/
    /*text-decoration: underline;*/
    /*}*/

    /*ul.navbar-nav > li > a:hover,*/
    /*ul.navbar-nav > .active > a {*/
    /*color: #264071;*/
    /*background-color: white;*/
    /*}*/

    /*.big-first-letter:first-letter {*/
    /*font-size: 50px;*/
    /*}*/
</style>
<div class="header">
    <div class="container">
        <!-- Logo -->
        <a class="logo" href="/" style="font-size: 30px;color:#0804dc;text-decoration: none">
            <img src="http://shipinfo.img-cn-shanghai.aliyuncs.com/icon/banner.png@39h" alt="Logo">
            | GOSHIPSURVEY
        </a>
        <!-- End Logo -->
        <!-- Toggle get grouped for better mobile display -->
        <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target=".navbar-responsive-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="fa fa-bars"></span>
        </button>
        <!-- End Toggle -->
    </div><!--/end container-->
    <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
        <div class="container">
            <jsp:include page="../include/navBar.jsp"/>
        </div>
    </div>
</div>
