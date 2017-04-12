<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<go:navigater path="account"></go:navigater>

<div class="profile-content">
    <div class="row">
        <div class="col-md-12">
            <div class="portlet light bordered">
                <div class="portlet-title tabbable-line">
                    <div class="caption caption-md">
                        <i class="fa fa-user"></i>
                        <span class="caption-subject font-blue-madison bold uppercase"><fmt:message
                                key="account_management"></fmt:message></span>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="portlet box blue-dark">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-info"></i><fmt:message key="account_info"></fmt:message>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse"> </a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="modal-body" style="padding: 5px;">
                                <label style="margin-right: 2%"><fmt:message key="account_name"></fmt:message></label>
                                <c:if test="${!empty sessionScope.sessionUser.name}">
                                    <button class="btn blue-dark" style="margin-right: 2%"><fmt:message
                                            key="account_have_set"></fmt:message>
                                    </button>
                                </c:if>
                                <c:if test="${empty sessionScope.sessionUser.name}">
                                    <button class="btn default" style="margin-right: 2%"><fmt:message
                                            key="account_not_set"></fmt:message>
                                    </button>
                                </c:if>
                                <label class=""><fmt:message
                                        key="account_current_name"></fmt:message>:${sessionScope.sessionUser.name}</label>
                                <shiro:hasPermission name="account/editName">
                                    <button style="float:right" data-url="account/editName" data-model="dialog"
                                            class="btn green-haze"><fmt:message
                                            key="modify"></fmt:message>
                                    </button>
                                </shiro:hasPermission>
                            </div>
                            <hr style="border-top: 1px dotted lightgrey;margin-top: 5px;margin-bottom: 5px">
                            <div class="modal-body" style="padding: 5px;">
                                <label style="margin-right: 2%"><fmt:message key="account_tel"></fmt:message></label>
                                <c:if test="${!empty sessionScope.sessionUser.phone}">
                                    <button class="btn blue-dark" style="margin-right: 2%"><fmt:message
                                            key="account_have_set"></fmt:message>
                                    </button>
                                </c:if>
                                <c:if test="${empty sessionScope.sessionUser.phone}">
                                    <button class="btn default" style="margin-right: 2%"><fmt:message
                                            key="account_not_set"></fmt:message>
                                    </button>
                                </c:if>
                                <label class=""><fmt:message
                                        key="account_current_tel"></fmt:message>:${sessionScope.sessionUser.phone}</label>
                                <shiro:hasPermission name="account/editPhone">
                                    <button style="float:right" data-url="account/editPhone" data-model="dialog"
                                            class="btn green-haze"><fmt:message
                                            key="modify"></fmt:message>
                                    </button>
                                </shiro:hasPermission>
                            </div>
                            <hr style="border-top: 1px dotted lightgrey;margin-top: 5px;margin-bottom: 5px">
                            <div class="modal-body" style="padding: 5px;">
                                <label style="margin-right: 2%"><fmt:message key="account_email"></fmt:message></label>
                                <c:if test="${!empty sessionScope.sessionUser.email}">
                                    <button class="btn blue-dark" style="margin-right: 2%"><fmt:message
                                            key="account_have_set"></fmt:message>
                                    </button>
                                </c:if>
                                <c:if test="${empty sessionScope.sessionUser.email}">
                                    <button class="btn default" style="margin-right: 2%"><fmt:message
                                            key="account_not_set"></fmt:message>
                                    </button>
                                </c:if>
                                <label class=""><fmt:message
                                        key="account_binding_email"></fmt:message>:${sessionScope.sessionUser.email}</label>
                                <shiro:hasPermission name="account/editEmail">
                                    <button style="float:right" data-url="account/editEmail" data-model="dialog"
                                            class="btn green-haze"><fmt:message
                                            key="modify"></fmt:message>
                                    </button>
                                </shiro:hasPermission>
                            </div>
                        </div>
                    </div>

                    <div class="portlet box blue-dark">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-lock"></i><fmt:message key="account_modify_password"></fmt:message>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse"> </a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="modal-body" style="padding: 5px;">
                                <label style="margin-right: 2%"><fmt:message
                                        key="account_password"></fmt:message></label>
                                <c:if test="${!empty sessionScope.sessionUser.password}">
                                    <button class="btn blue-dark" style="margin-right: 2%"><fmt:message
                                            key="account_have_set"></fmt:message>
                                    </button>
                                </c:if>
                                <c:if test="${empty sessionScope.sessionUser.password}">
                                    <button class="btn default" style="margin-right: 2%"><fmt:message
                                            key="account_not_set"></fmt:message>
                                    </button>
                                </c:if>
                                <label class=""><fmt:message key="account_password_security"></fmt:message></label>
                                <shiro:hasPermission name="account/editPassword">
                                    <button style="float:right" data-url="account/editPassword" data-model="dialog"
                                            class="btn green-haze"><fmt:message
                                            key="modify"></fmt:message>
                                    </button>
                                </shiro:hasPermission>
                            </div>
                        </div>
                    </div>
                    <div class="portlet box blue-dark">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-cog"></i><fmt:message key="account_other"></fmt:message>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse"> </a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="modal-body" style="padding: 5px;">
                                <label style="margin-right: 2%"><fmt:message key="account_style"></fmt:message></label>
                                <c:if test="${!empty sessionScope.sessionUser.styleId}">
                                    <button class="btn blue-dark" style="margin-right: 2%"><fmt:message
                                            key="account_have_set"></fmt:message>
                                    </button>
                                </c:if>
                                <c:if test="${empty sessionScope.sessionUser.styleId}">
                                    <button class="btn default" style="margin-right: 2%"><fmt:message
                                            key="account_not_set"></fmt:message>
                                    </button>
                                </c:if>
                                <label class=""><fmt:message key="account_style_select"></fmt:message></label>
                                <shiro:hasPermission name="account/editStyle">
                                    <button style="float:right" data-url="account/editStyle" data-model="dialog"
                                            class="btn green-haze"><fmt:message
                                            key="modify"></fmt:message>
                                    </button>
                                </shiro:hasPermission>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>