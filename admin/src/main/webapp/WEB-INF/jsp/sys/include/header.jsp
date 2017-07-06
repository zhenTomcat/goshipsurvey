<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<div class="page-header navbar navbar-fixed-top  ">
    <!-- BEGIN HEADER INNER -->
    <div class="page-header-inner ">
        <!-- BEGIN LOGO -->
        <div class="page-logo">
            <a href="">
                <img src="static/img/banner_transparent.png" alt="logo" class="logo-default"/>
            </a>
            <div class="menu-toggler sidebar-toggler">
                <span></span>
            </div>
        </div>
        <div class="page-top">
            <div class="top-menu right-top-menu">
                <ul class="nav navbar-nav pull-right">
                    <li class="dropdown dropdown-user dropdown-dark">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
                            <span class="username username-hide-on-mobile"> ${user.name}   <span
                                    class="badge badge-danger unreadCount"></span></span>
                            <img alt="" class="img-circle" src="assets/layouts/layout/img/avatar.png"/>

                        </a>
                        <ul class="dropdown-menu dropdown-menu-default">
                            <shiro:hasPermission name="message/list">
                                <li>
                                    <a href="message" class="ajaxify" data-target='navTab'>
                                        <i class="fa fa-comment"></i>Message <span
                                            class="badge badge-danger unreadCount"></span></a>
                                </li>
                            </shiro:hasPermission>
                            <shiro:hasPermission name="surveyor/list">
                                <li>
                                    <a href="surveyor" class="ajaxify" data-target='navTab'>
                                        <i class="fa fa-users"></i>Surveyor management </a>
                                </li>
                            </shiro:hasPermission>
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
                                <a href="prepurchaseindex">
                                    <i class="fa fa-ship"></i> pre-purchase link </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="clearfix"></div>
