<%@ page import="com.ctoangels.goshipsurvey.common.modules.sys.entity.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    User user = (User) session.getAttribute("sessionUser");
%>
<style>
    .mt-checkbox, .mt-radio {
        margin-right: 0;
        margin-bottom: 4px !important;
    }
</style>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="user" value="<%=user%>"/>
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PROFILE SIDEBAR -->
        <div class="profile-sidebar">
            <!-- PORTLET MAIN -->
            <div class="portlet light profile-sidebar-portlet ">
                <!-- SIDEBAR USERPIC -->
                <div class="profile-userpic">
                    <img onerror="nofind(2)" src="${sessionScope.sessionUser.headImgUrl}" id="head-img"
                         class="img-responsive" alt=""></div>
                <!-- END SIDEBAR USERPIC -->
                <!-- SIDEBAR USER TITLE -->
                <div class="profile-usertitle">
                    <div class="profile-usertitle-name">
                        <button type="button" id="change-head-img-btn">Change image</button>
                    </div>
                </div>
                <!-- END SIDEBAR USER TITLE -->
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
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#tab_1_1" data-toggle="tab">Personal Info</a>
                                </li>
                                <li>
                                    <a href="#tab_1_3" data-toggle="tab">Change Password</a>
                                </li>
                                <li>
                                    <a href="#tab_1_4" data-toggle="tab">Privacy Settings</a>
                                </li>
                            </ul>
                        </div>
                        <div class="portlet-body">
                            <div class="tab-content">
                                <!-- PERSONAL INFO TAB -->
                                <div class="tab-pane active" id="tab_1_1">
                                    <form id="userInfoForm" action="surveyor/account/edit" method="post">
                                        <input name="id" value="${user.id}" type="hidden">
                                        <div class="form-group col-md-6">
                                            <label class="control-label">Company name</label>
                                            <input type="text" class="form-control" name="name" value="${user.name}"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-label">Phone</label>
                                            <input type="text" class="form-control" name="phone" value="${user.phone}"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-label">Email</label>
                                            <input type="text" class="form-control" name="email" value="${user.email}"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-label">Country</label>
                                            <input type="text" class="form-control" value="${user.country}"
                                                   name="country"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-label">Address</label>
                                            <input type="text" class="form-control" name="address"
                                                   value="${user.address}"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-labe">Inspection date(LMT)</label>
                                            <div class="input-group input-large date-picker input-daterange">
                                                <input type="text" class="form-control required" name="startDate"
                                                       value=" <fmt:formatDate value="${user.startDate}" pattern="yyyy-MM-dd"></fmt:formatDate>  ">
                                                <span class="input-group-addon"> to </span>
                                                <input type="text" class="form-control required" name="endDate"
                                                       value=" <fmt:formatDate value="${user.endDate}" pattern="yyyy-MM-dd"></fmt:formatDate>  ">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label>Ship type</label>
                                            <div class="mt-checkbox-inline">
                                                <c:forEach items="${shipType}" var="type">
                                                    <label class="mt-checkbox col-sm-3">

                                                        <input type="checkbox" value="${type.value}" name="shipType"
                                                        <c:forEach items="${userShipTypes}" var="userType">
                                                               <c:if test="${userType==type.value}">checked</c:if>
                                                        </c:forEach>
                                                        >
                                                            ${type.des}
                                                        <span></span>
                                                    </label>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label class="control-label">Description</label>
                                            <textarea class="form-control" rows="5"
                                                      name="description">${user.description}</textarea>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label class="control-label">Achievements</label>
                                            <textarea class="form-control" rows="5"
                                                      name="achievement">${user.achievement}</textarea>
                                        </div>
                                        <div class="margiv-top-10 col-md-12">
                                            <button type="button" onclick="userInfoCheck(this)" class="btn green"> Save
                                                Changes
                                            </button>
                                        </div>
                                    </form>
                                </div>
                                <!-- END PERSONAL INFO TAB -->
                                <!-- CHANGE PASSWORD TAB -->
                                <div class="tab-pane" id="tab_1_3">
                                    <form action="#">
                                        <div class="form-group">
                                            <label class="control-label">Current Password</label>
                                            <input type="password" class="form-control"/></div>
                                        <div class="form-group">
                                            <label class="control-label">New Password</label>
                                            <input type="password" class="form-control"/></div>
                                        <div class="form-group">
                                            <label class="control-label">Re-type New Password</label>
                                            <input type="password" class="form-control"/></div>
                                        <div class="margin-top-10">
                                            <a href="javascript:;" class="btn green"> Change Password </a>
                                            <a href="javascript:;" class="btn default"> Cancel </a>
                                        </div>
                                    </form>
                                </div>
                                <!-- END CHANGE PASSWORD TAB -->
                                <!-- PRIVACY SETTINGS TAB -->
                                <div class="tab-pane" id="tab_1_4">
                                    <form action="#">
                                        <table class="table table-light table-hover">
                                            <tr>
                                                <td> Anim pariatur cliche reprehenderit, enim eiusmod high life
                                                    accusamus..
                                                </td>
                                                <td>
                                                    <div class="mt-radio-inline">
                                                        <label class="mt-radio">
                                                            <input type="radio" name="optionsRadios1" value="option1"/>
                                                            Yes
                                                            <span></span>
                                                        </label>
                                                        <label class="mt-radio">
                                                            <input type="radio" name="optionsRadios1" value="option2"
                                                                   checked/> No
                                                            <span></span>
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td> Enim eiusmod high life accusamus terry richardson ad squid wolf
                                                    moon
                                                </td>
                                                <td>
                                                    <div class="mt-radio-inline">
                                                        <label class="mt-radio">
                                                            <input type="radio" name="optionsRadios11" value="option1"/>
                                                            Yes
                                                            <span></span>
                                                        </label>
                                                        <label class="mt-radio">
                                                            <input type="radio" name="optionsRadios11" value="option2"
                                                                   checked/> No
                                                            <span></span>
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td> Enim eiusmod high life accusamus terry richardson ad squid wolf
                                                    moon
                                                </td>
                                                <td>
                                                    <div class="mt-radio-inline">
                                                        <label class="mt-radio">
                                                            <input type="radio" name="optionsRadios21" value="option1"/>
                                                            Yes
                                                            <span></span>
                                                        </label>
                                                        <label class="mt-radio">
                                                            <input type="radio" name="optionsRadios21" value="option2"
                                                                   checked/> No
                                                            <span></span>
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td> Enim eiusmod high life accusamus terry richardson ad squid wolf
                                                    moon
                                                </td>
                                                <td>
                                                    <div class="mt-radio-inline">
                                                        <label class="mt-radio">
                                                            <input type="radio" name="optionsRadios31" value="option1"/>
                                                            Yes
                                                            <span></span>
                                                        </label>
                                                        <label class="mt-radio">
                                                            <input type="radio" name="optionsRadios31" value="option2"
                                                                   checked/> No
                                                            <span></span>
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        <!--end profile-settings-->
                                        <div class="margin-top-10">
                                            <a href="javascript:;" class="btn red"> Save Changes </a>
                                            <a href="javascript:;" class="btn default"> Cancel </a>
                                        </div>
                                    </form>
                                </div>
                                <!-- END PRIVACY SETTINGS TAB -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END PROFILE CONTENT -->
    </div>
</div>
<script>
    if (jQuery().datepicker) {
        $('.date-picker').datepicker({
            rtl: App.isRTL(),
            orientation: "left",
            autoclose: true,
            format: 'yyyy-mm-dd'
        });
        $('body').removeClass("modal-open"); // fix bug when inline picker is used in modal
    }


    function userInfoCheck(obj) {
        obj.disabled = true;
        if (checkUserInfo()) {
            $("#userInfoForm").ajaxSubmit({
                success: function (data) {
                    if (data.success) {
                        alert("oh success");
                    } else {
                        alert("sorry failure");
                    }
                },
                error: function () {
                    alert("sorry error");
                },
                complete: function () {
                    obj.disabled = false;
                }
            })
        } else {
            obj.disabled = false;
        }
    }

    function checkUserInfo() {
        var flag = true;
        var inputs = $("#userInfoForm input");
        inputs.each(function () {
            var input = $(this);
            var value = input.val();
            if (value == null || value.trim() == "") {
                input.tips({
                    side: 1,
                    msg: "Cannot be empty",
                    bg: '#FF5080',
                    time: 5,
                });
                flag = false;
                return flag;
            }
        })

        if (flag) {
            var textareas = $("#userInfoForm textarea");
            textareas.each(function () {
                var textarea = $(this);
                var value = textarea.val();
                if (value == null || value.trim() == "") {
                    textarea.tips({
                        side: 1,
                        msg: "Cannot be empty",
                        bg: '#FF5080',
                        time: 5,
                    });
                    flag = false;
                    return flag;
                }
            })
        }
        return flag;
    }

    initUploaders_head_img("change-head-img-btn", "shipinfo", "${staticPath}/");
</script>

