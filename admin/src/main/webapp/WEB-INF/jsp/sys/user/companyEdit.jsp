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
<div class="row">
    <div class="col-md-12">
        <div class="profile-sidebar">
            <div class="portlet light profile-sidebar-portlet ">
                <div class="profile-userpic">
                    <img onerror="nofind(2)" src="${company.headImgUrl}" id="head-img"
                         class="img-responsive" alt=""></div>
                <div class="profile-usertitle">
                    <div class="profile-usertitle-name">
                        <button type="button" id="change-head-img-btn">Change image</button>
                    </div>
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
                            <form id="userInfoForm" action="surveyor/account/edit" method="post">
                                <input name="id" value="${company.id}" type="hidden">
                                <div class="form-group col-md-6">
                                    <label class="control-label">Company name</label>
                                    <input type="text" class="form-control" name="name"
                                           value="${company.name}"/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">Phone</label>
                                    <input type="text" class="form-control" name="phone"
                                           value="${company.phone}"/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">Email</label>
                                    <input type="text" class="form-control" name="email"
                                           value="${company.email}"/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">Country</label>
                                    <input type="text" class="form-control" value="${company.country}"
                                           name="country"/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">Address</label>
                                    <input type="text" class="form-control" name="address"
                                           value="${company.address}"/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-labe">Inspection date(LMT)</label>
                                    <div class="input-group input-large date-picker input-daterange">
                                        <input type="text" class="form-control required" name="startDate"
                                               value=" <fmt:formatDate value="${company.startDate}" pattern="yyyy-MM-dd"></fmt:formatDate>  ">
                                        <span class="input-group-addon"> to </span>
                                        <input type="text" class="form-control required" name="endDate"
                                               value=" <fmt:formatDate value="${company.endDate}" pattern="yyyy-MM-dd"></fmt:formatDate>  ">
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
                                              name="description">${company.description}</textarea>
                                </div>
                                <div class="form-group col-md-12">
                                    <label class="control-label">Achievements</label>
                                    <textarea class="form-control" rows="5"
                                              name="achievement">${company.achievement}</textarea>
                                </div>
                                <div class="margiv-top-10 col-md-12">
                                    <button type="button" onclick="userInfoCheck(this)" class="btn green"> Save
                                        Changes
                                    </button>
                                </div>
                            </form>
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

