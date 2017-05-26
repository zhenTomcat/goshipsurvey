<%@ page import="com.ctoangels.goshipsurvey.common.modules.sys.entity.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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
<div class="row">
    <div class="col-md-12">
        <div class="profile-sidebar">
            <div class="portlet light profile-sidebar-portlet ">
                <div class="profile-userpic">
                    <img onerror="nofind(2)" src="${company.headImgUrl}" class="img-responsive" alt="">
                </div>
            </div>
        </div>
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
                                <div class="tab-pane active" id="tab_1_1">
                                    <form role="form" class="form-horizontal">
                                        <div class="form-body">
                                            <div class="form-group form-md-line-input ">
                                                <label class="col-md-2 control-label">Company name</label>
                                                <div class="col-md-10">
                                                    <div class="input-icon">
                                                        <input type="text" readonly class="form-control"
                                                               value="${company.name}">
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
                                                               value="${company.phone}">
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
                                                               value="${company.email}">
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
                                                               value="${company.country}">
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
                                                               value="${company.address}">
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
                                                               value="<fmt:formatDate value="${company.startDate}" pattern="yyyy-MM-dd"></fmt:formatDate> to <fmt:formatDate value="${company.endDate}" pattern="yyyy-MM-dd"></fmt:formatDate> ">
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
                                                <label class="col-md-2 control-label">Description</label>
                                                <div class="col-md-10">
                                                    <div class="input-icon">
                                                        <div class="form-control" readonly="">${company.description}
                                                        </div>
                                                        <i class="fa fa-info"></i>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group form-md-line-input ">
                                                <label class="col-md-2 control-label">Achievement</label>
                                                <div class="col-md-10">
                                                    <div class="input-icon">
                                                        <div class="form-control" readonly="">${company.achievement}
                                                        </div>
                                                        <i class="fa fa-info"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


