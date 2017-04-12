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
    .col-sm-6 {
        width: 60%;
    }

    .col-sm-2 {
        width: 39%;
    }

    .col-md-4 {
        width: 70%;
    }

    .red {
        color: red;
    }

</style>
<go:navigater path="shipyard"></go:navigater>
<form action="privateShipyard/edit" id="form_sample_1" class="form-horizontal" method="post">
    <c:if test="${!empty privateShipyard}">
        <input id="edit" name="edit" type="hidden" value="yes">
        <input id="id" name="id" type="hidden" value="${privateShipyard.id}"/>
        <input id="companyId" name="companyId" type="hidden" value="${privateShipyard.companyId}"/>
        <input id="shipyardId" name="shipyardId" type="hidden" value="${privateShipyard.shipyardId}"/>
        <input id="createDate" name="createDate" type="hidden" value="<fmt:formatDate value='${privateShipyard.createDate}'
                        pattern="yyyy-MM-dd"/>"/>
        <input id="createBy" name="createBy" type="hidden" value="${privateShipyard.createBy}"/>
        <input id="delFlag" name="delFlag" type="hidden" value="${privateShipyard.delFlag}"/>
    </c:if>
    <div class="form-body">
        <div class="col-sm-6">
            <div class="form-group">
                <label class="control-label col-md-3">船厂名称
                    <span class="red"> * </span>
                </label>
                <div class="col-md-4">
                    <input id="name" type="text" name="name" data-required="1" class="form-control"
                           value="${privateShipyard.name}"/></div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-3">集团公司
                    <span class="red">  </span>
                </label>
                <div class="col-md-4">
                    <input name="groupCompany" type="text" class="form-control"
                           value="${privateShipyard.groupCompany}"/></div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-3">国家
                    <span class="red">  </span>
                </label>
                <div class="col-md-4">
                    <input name="country" type="text" class="form-control" value="${privateShipyard.country}"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-3">城市
                    <span class="red">  </span>
                </label>
                <div class="col-md-4">
                    <input name="city" type="text" class="form-control" value="${privateShipyard.city}"/></div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-3">位置
                    <span class="red">  </span>
                </label>
                <div class="col-md-4">
                    <input name="location" type="text" class="form-control" value="${privateShipyard.location}"/></div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-3">联系电话
                    <span class="red">  </span>
                </label>
                <div class="col-md-4">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-phone"></i>
                        </span>
                        <input id="tel" name="tel" type="text" class="form-control" value="${privateShipyard.tel}"/>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-3">联系人
                    <span class="red">  </span>
                </label>
                <div class="col-md-4">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-user"></i>
                        </span>
                        <input id="contactName" name="contactName" type="text" class="form-control"
                               value="${privateShipyard.contactName}"/>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-3">邮箱
                    <span class="red">  </span>
                </label>
                <div class="col-md-4">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-envelope"></i>
                        </span>
                        <input id="email" type="text" class="form-control" name="email" placeholder="Email Address"
                               value="${privateShipyard.email}"/></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-2">
        <p>公司logo</p>
        <img id="logo-img"
             src="http://shipinfo.img-cn-shanghai.aliyuncs.com/${privateShipyard.logo}?x-oss-process=image/resize,m_fill,h_100,w_100"
             style="display: block;width: 50%;height: 50%"
             onerror="nofind(1)"/>
        <input type="hidden" id="logo" name="logo">
        <br>
        <button id="upload_logo" class="btn blue" type="button"><i class="fa fa-tv"></i> 本地上传</button>
    </div>
    <div class="form-actions">
        <div class="row">
            <div class="col-md-offset-3 col-md-9">
                <button type="button" class="btn green" onclick="severCheck()">提交</button>
                <a href="privateShipyard" type="button" class="btn btn-default" data-target="navTab">取消</a>
            </div>
        </div>
    </div>
</form>
<a id="privateShipyard" href="privateShipyard" class="btn btn-sm grey-mint" data-target="navTab" style="display: none"></a>'

<script>
    $('.date-picker').datepicker({autoclose: true, todayHighlight: true, format: 'yyyy-mm-dd'});

    initUploaders_logo("upload_logo", "shipinfo", "${staticPath}/", "logo-img", "logo");

    //服务器校验
    function severCheck() {
        if (check()) {
            $("#form_sample_1").ajaxSubmit({
                success: function (data) {
                    if (data.success) {
                        alert("success");
                        $("#privateShipyard").click();
                    } else {
                        alert("false");
                        alert(data.msg);
                    }
                },
                error: function () {
                    alert("error");
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
                msg: '船厂名称不能为空',
                bg: '#AE81FF',
                time: 3
            });
            $("#name").focus();
            return false;
        } else {
            $("#name").val(jQuery.trim($('#name').val()));
        }
        if ($("#tel").val() == "") {
            $("#tel").tips({
                side: 2,
                msg: '联系电话不能为空',
                bg: '#AE81FF',
                time: 3
            });
            $("#tel").focus();
            return false;
        } else {
            $("#tel").val(jQuery.trim($('#tel').val()));
        }
        if ($("#contactName").val() == "") {
            $("#contactName").tips({
                side: 2,
                msg: '联系人不能为空',
                bg: '#AE81FF',
                time: 3
            });
            $("#contactName").focus();
            return false;
        } else {
            $("#contactName").val(jQuery.trim($('#contactName').val()));
        }
        if ($("#email").val() == "") {
            $("#email").tips({
                side: 2,
                msg: 'contactName不能为空',
                bg: '#AE81FF',
                time: 3
            });
            $("#email").focus();
            return false;
        } else {
            $("#email").val(jQuery.trim($('#email').val()));
        }
        return true;
    }

    $(document).keyup(function (event) {
        if (event.keyCode == 13) {
            $("#to-recover").trigger("click");
        }
    });


</script>
