<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    p {
        margin: 0 0;
    }
</style>
<form class="form-horizontal" action="account/editEmail" method="post"
      id="defForm">
    <div class="modal-header">
        <div class='bootstrap-dialog-header'>
            <div class='bootstrap-dialog-close-button'
                 style='display: block;'>
                <button class='close' data-dismiss='modal' aria-label='Close'>×</button>
            </div>
            <div class='bootstrap-dialog-title'><fmt:message key="account_modify_email"></fmt:message></div>
        </div>
    </div>
    <div class="modal-body">
        <div class="container-fluid">
            <div class="form-group">
                <label for="email" class="col-sm-3 control-label"><fmt:message
                        key="account_new_email"></fmt:message></label>
                <div class="col-sm-6">
                    <input id="email" name="email" type="email" maxlength="32" class="form-control required"
                           placeholder="<fmt:message key="register_email_input"></fmt:message>">
                </div>
            </div>
            <div class="form-group">
                <label for="code" class="col-sm-3 control-label"><fmt:message key="verify_code"></fmt:message></label>
                <div class="col-sm-6">
                    <input class="form-control required" placeholder="<fmt:message key="login_verify_code"/>"
                           type="text"
                           id="code" name="code" style="width: 30%; float: left;margin-right: 2%">
                    <button type="button" onclick="sendCode()" class="btn blue-dark" id="send-code"><fmt:message
                            key="account_send_verification_code"></fmt:message>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal"><fmt:message
                key="cancel"></fmt:message></button>
        <shiro:hasPermission name="account/editEmail">
            <button type="submit" class="btn btn-primary"><fmt:message key="save"></fmt:message></button>
        </shiro:hasPermission>
    </div>
</form>
<script type="text/javascript">
    $('#defForm').validate({
        rules: {
            required: true,
            remote: {
                type: "post",
                url: "account/editEmail",
                dataType: "json",
                dataFilter: function (data, type) {
                    if (data == 1) {
                        return false;
                    } else {
                        return true;
                    }
                }
            }
        },
        messages: {
            email: {
                required: "<fmt:message key="register_email_input"></fmt:message>",
                remote: "<fmt:message key="register_incorrect_email2"></fmt:message>",
                email: "<fmt:message key="register_incorrect_email2"></fmt:message>"
            },
            code: {
                required: "<fmt:message key="account_enter_verification_code"></fmt:message>",
                remote: "<fmt:message key="login_incorrect_verifycode"></fmt:message>"
            }
        }
    });


    function sendCode() {
        $.post("account/editEmail/sendCode", {email: $('#email').val()}, function (data) {
            if (data.suc) {
                $("#send-code").tips({
                    side: 1,
                    msg: "<fmt:message key="account_have_send_code"/>",
                    bg: '#FF5080',
                    time: 15
                })
            } else {
                if (data.errInfo == "email used") {
                    alert("<fmt:message key="register_incorrect_email"></fmt:message>");
                } else if (data.errInfo == "email empty") {
                    alert("<fmt:message key="register_email_empty"></fmt:message>");
                }
            }
        });
    }

    $(document).keyup(function (event) {
        if (event.keyCode == 13) {
            $("#to-recover").trigger("click");
        }
    });

</script>