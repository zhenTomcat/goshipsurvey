<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="page-header navbar navbar-fixed-top">
    <div class="page-header-inner ">
        <div class="page-logo">
            <a href="index.html">
                <img src="static/img/banner_transparent.png" alt="logo" class="logo-default"/> </a>
        </div>
        <div class="hor-menu  hidden-sm hidden-xs">
            <ul class="nav navbar-nav">
                <c:forEach items="${menuList}" var="menu" varStatus="status">
                    <li class="classic-menu-dropdown">
                        <c:choose>
                            <c:when test="${(not empty menu.menuUrl)&&(menu.menuUrl!='#')}">
                                <a href="${menu.menuUrl}" active-li-href="${menu.menuUrl}" class="ajaxify nav-link" data-hover="megamenu-dropdown"
                                   data-close-others="true">
                                    <c:if test="${not empty menu.menuIcon }"><i class="${menu.menuIcon}"></i></c:if>
                                        ${menu.menuName}
                                </a>
                            </c:when>
                            <c:otherwise>
                                <a href="javascript:;" data-hover="megamenu-dropdown"
                                   data-close-others="true">
                                    <c:if test="${not empty menu.menuIcon }"><i class="${menu.menuIcon}"></i></c:if>
                                        ${menu.menuName}
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu pull-left">
                                    <c:forEach items="${menu.subMenu}" var="sub">
                                        <li>
                                            <a href="${sub.menuUrl}" class="ajaxify nav-link">
                                                <c:if test="${not empty sub.menuIcon }"><i
                                                        class="${sub.menuIcon}"></i></c:if>
                                                </i>${sub.menuName}</a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </c:otherwise>
                        </c:choose>
                    </li>
                </c:forEach>

            </ul>
        </div>
        <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse"
           data-target=".navbar-collapse">
            <span></span>
        </a>
        <div class="page-top">
            <div class="top-menu right-top-menu">
                <ul class="nav navbar-nav pull-right">
                    <li class="dropdown dropdown-user dropdown-dark">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
                            <span class="username username-hide-on-mobile"> ${user.name} <span
                                    class="badge badge-danger unreadCount"> 0 </span></span>
                            <img alt="" class="img-circle" src="assets/layouts/layout/img/avatar.png"/>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-default">
                            <li>
                                <a href="message" class="ajaxify" data-target='navTab'>
                                    <i class="fa fa-comment"></i>Message<span
                                        class="badge badge-danger unreadCount"> 0 </span> </a>
                            </li>
                            <%--<shiro:hasPermission name="surveyor/list">
                                <li>
                                    <a href="surveyor" class="ajaxify" data-target='navTab'>
                                        <i class="fa fa-users"></i>Surveyor management </a>
                                </li>
                            </shiro:hasPermission>--%>
                            <li>
                                <a href="user/companyEdit" class="ajaxify" data-target='navTab'>
                                    <i class="fa fa-user"></i>My profile </a>
                            </li>
                            <li>
                                <a href="javascript:;" data-url="user/editPwd" data-model='dialog'>
                                    <i class="fa fa-cog"></i>Change password </a>
                            </li>
                            <li>
                                <a href="logout">
                                    <i class="icon-key"></i> Exit </a>
                            </li>
                            <li>
                                <a href="onoffindex">
                                    <i class="fa fa-ship"></i> on-off link </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
