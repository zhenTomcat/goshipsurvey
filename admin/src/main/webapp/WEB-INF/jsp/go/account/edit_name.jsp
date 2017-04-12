<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<form class="form-horizontal" action="account/editName" method="post"
      id="defForm" callfn="refreshTable">
    <div class="modal-header">
        <div class='bootstrap-dialog-header'>
            <div class='bootstrap-dialog-close-button'
                 style='display: block;'>
                <button class='close' data-dismiss='modal' aria-label='Close'>×</button>
            </div>
            <div class='bootstrap-dialog-title'><fmt:message key="account_modify_name"></fmt:message></div>
        </div>
    </div>
    <div class="modal-body">
        <div class="container-fluid">
            <div class="form-group">
                <label for="name" class="col-sm-2 control-label"><fmt:message key="account_name"></fmt:message></label>
                <div class="col-sm-7">
                    <input id="name" name="name" type="text" maxlength="32"
                           minlength="2" class="form-control required"
                           placeholder="<fmt:message key="account_enter_name"></fmt:message>">
                </div>
            </div>
            <div class="form-group">
                <label for="code" class="col-sm-2 control-label"><fmt:message key="verify_code"></fmt:message></label>
                <div class="col-sm-7">
                    <input class="form-control required" placeholder="<fmt:message key="login_verify_code"/>"
                           type="text"
                           id="code" name="code" style="width: 30%; float: left;">
                    <img id="codeImg" alt="<fmt:message key="login_click_change"/>"
                         title="<fmt:message key="login_click_change"/>"
                         style="width: 40%; height: 34px; margin-left: 12px;" src="">
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal"><fmt:message
                key="cancel"></fmt:message></button>
        <shiro:hasPermission name="account/editName">
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
                url: "account/editName",
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
            name: {
                required: "<fmt:message key="account_enter_name"></fmt:message>",
                remote: "<fmt:message key="register_username_false"></fmt:message>"
            }
        }
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


</script>