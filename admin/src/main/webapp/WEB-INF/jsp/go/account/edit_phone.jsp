<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<form class="form-horizontal" action="account/editPhone" method="post"
      id="defForm" callfn="refreshTable">
    <div class="modal-header">
        <div class='bootstrap-dialog-header'>
            <div class='bootstrap-dialog-close-button'
                 style='display: block;'>
                <button class='close' data-dismiss='modal' aria-label='Close'>×</button>
            </div>
            <div class='bootstrap-dialog-title'><fmt:message key="account_modify_tel"></fmt:message> </div>
        </div>
    </div>
    <div class="modal-body">
        <div class="container-fluid">
            <div class="form-group">
                <label for="name" class="col-sm-3 control-label"><fmt:message key="account_new_tel"></fmt:message> </label>
                <div class="col-sm-7">
                    <input id="name" name="name" type="text" maxlength="32"
                           minlength="2" class="form-control required" placeholder="<fmt:message key="account_enter_new_tel"></fmt:message> ">
                </div>
            </div>
            <div class="form-group">
                <label for="code" class="col-sm-3 control-label"><fmt:message key="verify_code"></fmt:message> </label>
                <div class="col-sm-7">
                    <input class="form-control required" placeholder="<fmt:message key="login_verify_code"/>"
                           type="text"
                           id="code" name="code" style="width: 30%; float: left;margin-right: 2%">
                    <button class="btn blue-dark"> <fmt:message key="account_send_verification_code"></fmt:message>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal"><fmt:message key="cancel"></fmt:message> </button>
        <shiro:hasPermission name="account/editPhone">
            <button type="submit" class="btn btn-primary"><fmt:message key="save"></fmt:message> </button>
        </shiro:hasPermission>
    </div>
</form>
<script type="text/javascript">
    $('#defForm').validate({
        rules: {
            loginName: {
                required: true,
                remote: {
                    type: "post",
                    url: "account/editPhone",
                    dataType: "json",
                    dataFilter: function (data, type) {
                        if (data == 1) {
                            return false;
                        } else {
                            return true;
                        }
                    }
                }
            }
        },
    });


    $(document).ready(function () {
        changeCode();
        $("#codeImg").bind("click", changeCode);
    });

    $(document).keyup(function (event) {
        if (event.keyCode == 13) {
            $("#to-recover").trigger("click");
        }
    });

    function genTimestamp() {
        var time = new Date();
        return time.getTime();
    }

    function changeCode() {
        $("#codeImg").attr("src", "code?t=" + genTimestamp());
    }

    //客户端校验
    function check() {

        if ($("#loginName").val() == "") {

            $("#loginName").tips({
                side: 2,
                msg: '<fmt:message key="login_username_empty"/>',
                bg: '#AE81FF',
                time: 3
            });

            $("#loginName").focus();
            return false;
        } else {
            $("#loginName").val(jQuery.trim($('#loginName').val()));
        }

        if ($("#code").val() == "") {

            $("#code").tips({
                side: 1,
                msg: '<fmt:message key="login_verifycode_empty"/>',
                bg: '#AE81FF',
                time: 3
            });

            $("#code").focus();
            return false;
        }

        $("#loginbox").tips({
            side: 1,
            msg: '<fmt:message key="login_tuning"/>',
            bg: '#68B500',
            time: 10
        });

        return true;
    }


</script>