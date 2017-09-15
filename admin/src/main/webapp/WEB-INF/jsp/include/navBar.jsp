<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!@ page contentType="text/html;charset=UTF-8" language="java" >
<!@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" >
<ul class="nav navbar-nav">
    <li>
        <a href="/">
            Home
        </a>
    </li>
    <!--<li>-->
    <!--<a href="javascript:void(0)">-->
    <!--Quotation-->
    <!--</a>-->
    <!--</li>-->
    <li>
        <a href="/public/ourReports">
            Our reports
        </a>
    </li>
    <li>
        <a href="/public/ourSurveyors">
            Our surveyors
        </a>
    </li>
    <li>
        <a href="/public/aboutUs">
            About us
        </a>
    </li>
    <li>
        <c:if test="${empty sessionScope.sessionUser}">
            <a href="/login_toLogin">
                Login
            </a>
        </c:if>
        <c:if test="${!empty sessionScope.sessionUser}">
            <a href="/onoffindex">
                <i class="fa fa-user"></i>&nbsp;&nbsp;${sessionScope.sessionUser.name}
            </a>
        </c:if>
    </li>
</ul>
<!-- Search Block -->
<!--<ul class="nav navbar-nav navbar-border-bottom navbar-right">-->
<!--<li class="no-border">-->
<!--<i class="search fa fa-search search-btn"></i>-->
<!--<div class="search-open">-->
<!--<div class="input-group animated fadeInDown">-->
<!--<input type="text" class="form-control" placeholder="Search">-->
<!--<span class="input-group-btn">-->
<!--<button class="btn-u" type="button">Go</button>-->
<!--</span>-->
<!--</div>-->
<!--</div>-->
<!--</li>-->
<!--</ul>-->
<!-- End Search Block -->