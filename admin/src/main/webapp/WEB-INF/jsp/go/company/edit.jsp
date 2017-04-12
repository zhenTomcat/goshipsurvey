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
    .red {
        color: red;
    }

    .col-sm-3.control-label {
        text-align: left;
    }
</style>
<go:navigater path="company"></go:navigater>
<form class="form-horizontal" action="company/edit" method="post"
      id="defForm" callfn="refreshTable">
    <c:if test="${!empty company}">
        <input id="edit" name="edit" type="hidden" value="yes">
        <input id="id" name="id" type="hidden" value="${company.id}"/>
        <input id="createDate" name="createDate" type="hidden" value="<fmt:formatDate value='${company.createDate}'
                        pattern="yyyy-MM-dd"/>"/>
        <input id="createBy" name="createBy" type="hidden" value="${company.createBy}"/>
        <input id="delFlag" name="delFlag" type="hidden" value="${company.delFlag}"/>
    </c:if>
    <div class="row">
        <div class="col-md-12">
            <div class="portlet light portlet-fit bordered">
                <div class="portlet-title tabbable-line">
                    <div id="bootstrap_alerts_demo"></div>
                    <div class="caption caption-md">
                        <i class="fa fa-info"></i>
                        <span class="caption-subject bold font-green uppercase"> <fmt:message
                                key="company_check_info"></fmt:message> </span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label"><i class="fa fa-building"></i>
                                <fmt:message key="company_name"></fmt:message></label>
                            <div class="col-sm-7">
                                <input id="name" name="name" type="text" maxlength="32" value="${company.name}"
                                       minlength="2" class="form-control required"
                                       placeholder="<fmt:message key="company_fill_in_name"></fmt:message>">
                            </div>
                            <label class="col-sm-3 control-label"><span class="red">* </span><fmt:message
                                    key="company_fill_in_name"></fmt:message></label>
                        </div>
                        <div class="form-group">
                            <label for="legalPerson" class="col-sm-2 control-label"><i class="fa fa-user"></i>
                                <fmt:message key="company_legal_person"></fmt:message></label>
                            <div class="col-sm-7">
                                <input id="legalPerson" name="legalPerson" type="text" maxlength="32"
                                       value="${company.legalPerson}"
                                       minlength="2" class="form-control required"
                                       placeholder="<fmt:message key="company_fill_in_legal"></fmt:message>">
                            </div>
                            <label class="col-sm-3 control-label"><fmt:message
                                    key="company_fill_in_legal"></fmt:message></label>
                        </div>
                        <div class="form-group">
                            <label for="tel" class="col-sm-2 control-label"><i class="fa fa-phone"></i>
                                <fmt:message key="company_tel"></fmt:message></label>
                            <div class="col-sm-7">
                                <input id="tel" name="tel" type="text" maxlength="32" value="${company.tel}"
                                       minlength="2" class="form-control required"
                                       placeholder="<fmt:message key="company_fill_in_tel"></fmt:message>">
                            </div>
                            <label class="col-sm-3 control-label"><fmt:message
                                    key="company_fill_in_tel"></fmt:message></label>
                        </div>
                        <div class="form-group">
                            <label for="fax" class="col-sm-2 control-label"><i class="fa fa-fax"></i>
                                <fmt:message key="company_fax"></fmt:message></label>
                            <div class="col-sm-7">
                                <input id="fax" name="fax" type="text" maxlength="32" value="${company.fax}"
                                       minlength="2" class="form-control required"
                                       placeholder="<fmt:message key="company_fill_in_fax"></fmt:message>">
                            </div>
                            <label class="col-sm-3 control-label"><fmt:message
                                    key="company_fill_in_fax"></fmt:message></label>
                        </div>
                        <div class="form-group">
                            <label for="website" class="col-sm-2 control-label"><i class="fa fa-internet-explorer"></i>
                                <fmt:message key="company_website"></fmt:message></label>
                            <div class="col-sm-7">
                                <input id="website" name="website" type="text" maxlength="32" value="${company.website}"
                                       minlength="2" class="form-control required"
                                       placeholder="<fmt:message key="company_fill_in_website"></fmt:message>">
                            </div>
                            <label class="col-sm-3 control-label"><fmt:message
                                    key="company_fill_in_website"></fmt:message></label>
                        </div>
                        <div class="form-group">
                            <label for="address" class="col-sm-2 control-label"><i class="fa fa-location-arrow"></i>
                                <fmt:message key="company_address"></fmt:message></label>
                            <div class="col-sm-7">
                                <input id="address" name="address" type="text" maxlength="32" value="${company.address}"
                                       minlength="2" class="form-control required"
                                       placeholder="<fmt:message key="company_fill_in_address"></fmt:message>">
                            </div>
                            <label class="col-sm-3 control-label"><fmt:message
                                    key="company_fill_in_address"></fmt:message></label>
                        </div>
                        <div class="form-group">
                            <label for="postalCode" class="col-sm-2 control-label"><i class="fa fa-envelope"></i>
                                <fmt:message key="company_postal_code"></fmt:message></label>
                            <div class="col-sm-7">
                                <input id="postalCode" name="postalCode" type="text" maxlength="32"
                                       value="${company.postalCode}"
                                       minlength="2" class="form-control required"
                                       placeholder="<fmt:message key="company_fill_in_postal_code"></fmt:message>">
                            </div>
                            <label class="col-sm-3 control-label"><fmt:message
                                    key="company_fill_in_postal_code"></fmt:message></label>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label"><i class="fa fa-envelope"></i>
                                <fmt:message key="company_email"></fmt:message></label>
                            <div class="col-sm-7">
                                <input id="email" name="email" type="text" maxlength="32"
                                       value="${company.email}"
                                       minlength="2" class="form-control required" placeholder="<fmt:message
                                    key="company_fill_in_email"></fmt:message>">
                            </div>
                            <label class="col-sm-3 control-label"><fmt:message
                                    key="company_fill_in_email"></fmt:message></label>
                        </div>
                        <div class="form-group">
                            <label for="contactName" class="col-sm-2 control-label"><i class="fa fa-user"></i>
                                <fmt:message key="company_contact_name"></fmt:message></label>
                            <div class="col-sm-7">
                                <input id="contactName" name="contactName" type="text" maxlength="32"
                                       value="${company.contactName}"
                                       minlength="2" class="form-control required"
                                       placeholder="<fmt:message key="company_fill_in_contact_name"></fmt:message>">
                            </div>
                            <label class="col-sm-3 control-label"><fmt:message
                                    key="company_fill_in_contact_name"></fmt:message></label>
                        </div>
                        <div class="form-group">
                            <label for="contactTel" class="col-sm-2 control-label"><i class="fa fa-weixin"></i>
                                <fmt:message key="company_contact_tel"></fmt:message></label>
                            <div class="col-sm-7">
                                <input id="contactTel" name="contactTel" type="text" maxlength="32"
                                       value="${company.contactTel}"
                                       minlength="2" class="form-control required"
                                       placeholder="<fmt:message key="company_fill_in_contact_phone"></fmt:message>">
                            </div>
                            <label class="col-sm-3 control-label"><fmt:message
                                    key="company_fill_in_contact_phone"></fmt:message></label>
                        </div>
                    </div>
                    <div class="col-md-4" style="border-left: 1px dotted lightgrey;">
                        <p><fmt:message key="company_logo"></fmt:message></p>
                        <img id="logo-img"
                             src="http://shipinfo.img-cn-shanghai.aliyuncs.com/${company.logo}?x-oss-process=image/resize,m_fill,h_100,w_100"
                             style="display: block;width: 50%;height: 50%"
                             onerror="nofind(1)"/>
                        <input type="hidden" id="logo" name="logo" value="${company.logo}">
                        <br>
                        <button id="upload_logo" class="btn blue" type="button"><i class="fa fa-tv"></i> <fmt:message
                                key="company_local_upload"></fmt:message></button>
                    </div>
                </div>
                <div class="modal-footer" style="text-align: center">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <shiro:hasPermission name="account/editName">
                        <button type="button" onclick="severCheck()" class="btn btn-primary">保存</button>
                    </shiro:hasPermission>
                </div>
            </div>
        </div>
    </div>
    </div>
</form>
<script>
    $('.date-picker').datepicker({autoclose: true, todayHighlight: true, format: 'yyyy-mm-dd'});

    initUploaders_logo("upload_logo", "shipinfo", "${staticPath}/", "logo-img", "logo");

    //服务器校验
    function severCheck() {
        if (check()) {
            $("#defForm").ajaxSubmit({
                success: function (data) {
                    if (data.success) {
                        App.alert({
                            container: "#bootstrap_alerts_demo",
                            close: true,
                            icon: 'fa fa-check',
                            place: "append",
                            message: "success",
                            type: 'success',
                            reset: true,
                            focus: true,
                            closeInSeconds: 10,
                        })
                    } else {
                        App.alert({
                            container: "#bootstrap_alerts_demo",
                            close: true,
                            icon: 'fa fa-warning',
                            place: "append",
                            message: "failure",
                            type: 'danger',
                            reset: true,
                            focus: true,
                            closeInSeconds: 10,
                        })
                    }
                },
                error: function () {
                    App.alert({
                        container: "#bootstrap_alerts_demo",
                        close: true,
                        icon: 'fa fa-warning',
                        place: "append",
                        message: "error",
                        type: 'warning',
                        reset: true,
                        focus: true,
                        closeInSeconds: 10,
                    })
                    return;
                }
            });
        }
    }

    //客户端校验
    function check() {
        if ($("#name").val() == "") {
            $("#name").tips({
                side: 2,
                msg: '公司名称不能为空',
                bg: '#AE81FF',
                time: 3
            });
            $("#name").focus();
            return false;
        } else {
            $("#name").val(jQuery.trim($('#name').val()));
        }
        /*if ($("#tel").val() == "") {
         $("#tel").tips({
         side: 2,
         msg: '公司电话不能为空',
         bg: '#AE81FF',
         time: 3
         });
         $("#tel").focus();
         return false;
         } else {
         $("#tel").val(jQuery.trim($('#tel').val()));
         }
         if ($("#address").val() == "") {
         $("#address").tips({
         side: 2,
         msg: 'address不能为空',
         bg: '#AE81FF',
         time: 3
         });
         $("#address").focus();
         return false;
         } else {
         $("#address").val(jQuery.trim($('#address').val()));
         }
         if ($("#contactName").val() == "") {
         $("#contactName").tips({
         side: 2,
         msg: 'contactName不能为空',
         bg: '#AE81FF',
         time: 3
         });
         $("#contactName").focus();
         return false;
         } else {
         $("#contactName").val(jQuery.trim($('#contactName').val()));
         }
         if ($("#contactTel").val() == "") {
         $("#contactTel").tips({
         side: 2,
         msg: 'contactTel不能为空',
         bg: '#AE81FF',
         time: 3
         });
         $("#contactTel").focus();
         return false;
         } else {
         $("#contactTel").val(jQuery.trim($('#contactTel').val()));
         }*/
        return true;
    }

    $(document).keyup(function (event) {
        if (event.keyCode == 13) {
            $("#to-recover").trigger("click");
        }
    });


</script>
