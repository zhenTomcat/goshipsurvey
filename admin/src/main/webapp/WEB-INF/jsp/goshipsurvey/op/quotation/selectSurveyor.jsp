<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<style>
#surveyorUIds{
    z-index: 9999999
}

</style>
<form class="form-horizontal" action="op/quotation/startQuotation" method="post" id="quotation-add-form">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header" style="background-color: #32c5d2;">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title" style="color: white">Select Surveyor</h4>
            </div>
            <input type="hidden" value="${id}" name="id"/>
            <div class="modal-body">
                <div class="form-group">
                    <label class="col-sm-3 control-label">Select Surveyor</label>
                    <div class="form-group col-sm-9">
                        <select id="surveyorUIds"  name="surveyorUIds" style="width: 100%;"
                                title="请选择指定的的surveyor" multiple="multiple">
                        </select>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button id="closeModal" type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <button type="button" onclick="severCheck()" class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</form>

<script>
    $(function () {
        surveyorAndUserInfo();
        $("#surveyorUIds").select2();
    });

    function surveyorAndUserInfo() {
        $.get(
         '/surveyor/bindInfo',
         function (data) {
             for (var i = 0; i < data.bindSurveyors.length; i++) {
                 $("#surveyorUIds").append("<option  value='" + data.bindSurveyors[i].user.id + "'>" + data.bindSurveyors[i].firstName+ "</option>");
             }
         });
    }

    function severCheck() {
        $("#quotation-add-form").ajaxSubmit({
            success: function (data) {
                if (data.success) {
                    $("#closeModal").click();
                    drawTable();
                } else {
                    swal("错误","询价出错","error");
                }
            },
        });
    }
</script>
