<%@ page import="com.ctoangels.goshipsurvey.common.modules.sys.entity.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
//    User user = (User) session.getAttribute("sessionUser");
%>
<style>
    .mt-checkbox, .mt-radio {
        margin-right: 0;
        margin-bottom: 4px !important;
    }

    .form-group.form-md-line-input .form-control[disabled], .form-group.form-md-line-input .form-control[readonly], fieldset[disabled] .form-group.form-md-line-input .form-control {
        cursor: auto;
    }

    textarea {
        resize: none;
        height: auto;
        overflow-y: auto;
    }

    textarea.form-control {

    }
</style>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="user" value="${user}"/>
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PROFILE SIDEBAR -->
        <div class="profile-sidebar">
            <!-- PORTLET MAIN -->
            <div class="portlet light profile-sidebar-portlet ">
                <!-- SIDEBAR USERPIC -->
                <div class="profile-userpic">
                    <img onerror="nofind(2)" src="${sessionScope.sessionUser.headImgUrl}" class="img-responsive" alt="">
                </div>
                <!-- END SIDEBAR USERPIC -->
                <!-- SIDEBAR MENU -->
                <div class="profile-usermenu">
                    <ul class="nav">
                        <li>
                            <a href="javascript:void(0);">
                                <i class="icon-home"></i> Overview </a>
                        </li>
                        <li class="active">
                            <a href="javascript:void(0);">
                                <i class="icon-settings"></i> Account Settings </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <i class="icon-info"></i> Help </a>
                        </li>
                    </ul>
                </div>
                <!-- END MENU -->
            </div>
            <!-- END PORTLET MAIN -->
            <!-- PORTLET MAIN -->
            <div class="portlet light ">
                <!-- STAT -->
                <div class="row list-separated profile-stat">
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        <div class="uppercase profile-stat-title"> 37</div>
                        <div class="uppercase profile-stat-text"> Projects</div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        <div class="uppercase profile-stat-title"> 51</div>
                        <div class="uppercase profile-stat-text"> Tasks</div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        <div class="uppercase profile-stat-title"> 61</div>
                        <div class="uppercase profile-stat-text"> Uploads</div>
                    </div>
                </div>
                <!-- END STAT -->
            </div>
            <!-- END PORTLET MAIN -->
        </div>
        <!-- END BEGIN PROFILE SIDEBAR -->
        <!-- BEGIN PROFILE CONTENT -->
        <div class="profile-content">
            <div class="row">
                <div class="col-md-12">
                    <div class="portlet light ">
                        <div class="portlet-title tabbable-line">
                            <div class="caption caption-md">
                                <i class="icon-globe theme-font hide"></i>
                                <span class="caption-subject font-blue-madison bold uppercase" style="font-size: 30px">Profile Account</span>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="tab-content">
                                <!-- PERSONAL INFO TAB -->
                                <div class="tab-pane active" id="tab_1_1">
                                    <form role="form" class="form-horizontal">
                                        <div class="form-body">
                                            <div class="form-group form-md-line-input ">
                                                <label class="col-md-2 control-label">Name</label>
                                                <div class="col-md-10">
                                                    <div class="input-icon">
                                                        <input type="text" readonly class="form-control"
                                                               value="${user.name}">
                                                        <div class="form-control-focus"></div>
                                                        <i class="fa fa-user"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group form-md-line-input ">
                                                <label class="col-md-2 control-label">Phone</label>
                                                <div class="col-md-10">
                                                    <div class="input-icon">
                                                        <input type="text" readonly class="form-control"
                                                               value="${user.phone}">
                                                        <div class="form-control-focus"></div>
                                                        <i class="fa fa-phone"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group form-md-line-input ">
                                                <label class="col-md-2 control-label">Email</label>
                                                <div class="col-md-10">
                                                    <div class="input-icon">
                                                        <input type="text" readonly class="form-control"
                                                               value="${user.email}">
                                                        <div class="form-control-focus"></div>
                                                        <i class="fa fa-bell-o"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group form-md-line-input ">
                                                <label class="col-md-2 control-label">Country</label>
                                                <div class="col-md-10">
                                                    <div class="input-icon">
                                                        <input type="text" readonly class="form-control"
                                                               value="${user.country}">
                                                        <div class="form-control-focus"></div>
                                                        <i class="fa fa-map"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group form-md-line-input ">
                                                <label class="col-md-2 control-label">Address</label>
                                                <div class="col-md-10">
                                                    <div class="input-icon">
                                                        <input type="text" readonly class="form-control"
                                                               value="${user.address}">
                                                        <div class="form-control-focus"></div>
                                                        <i class="fa fa-location-arrow"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group form-md-line-input ">
                                                <label class="col-md-2 control-label">Inspection date</label>
                                                <div class="col-md-10">
                                                    <div class="input-icon">
                                                        <input type="text" readonly class="form-control"
                                                               value="<fmt:formatDate value="${user.startDate}" pattern="yyyy-MM-dd"></fmt:formatDate> to <fmt:formatDate value="${user.endDate}" pattern="yyyy-MM-dd"></fmt:formatDate> ">
                                                        <div class="form-control-focus"></div>
                                                        <i class="fa fa-calendar-times-o"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group form-md-line-input ">
                                                <label class="col-md-2 control-label">Ship type</label>
                                                <div class="col-md-10">
                                                    <div class="input-icon">
                                                        <input type="text" readonly class="form-control"
                                                               value="${shipType}">
                                                        <div class="form-control-focus"></div>
                                                        <i class="fa fa-ship"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group form-md-line-input ">
                                                <label class="col-md-2 control-label">Work experience</label>
                                                <div class="col-md-10">
                                                    <div class="input-icon">
                                                        <div class="form-control" readonly="">${user.description}
                                                        </div>
                                                        <i class="fa fa-info"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <!-- END PERSONAL INFO TAB -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END PROFILE CONTENT -->
    </div>
</div>


