<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form id="editSurveyTypeForm" class="form-horizontal" method="post" action="surveyor/editSurveyTypeComplete"
      role="form">
    <div class="modal-header">
        <div class='bootstrap-dialog-header'>
            <div class='bootstrap-dialog-close-button'
                 style='display: block;'>
                <button class='close' data-dismiss='modal' aria-label='Close'>×</button>
            </div>
            <div class='bootstrap-dialog-title'>Type of survey</div>
        </div>
    </div>
    <div class="modal-body">
        <div class="container-fluid">
            <div class="form-group col-md-12">
                <div>
                    <input type="hidden" name="id" value="${param.id}">
                    <div class="mt-checkbox-inline">
                        <c:forEach items="${surveyType}" var="type">
                            <label class="mt-checkbox col-sm-5">
                                <input type="checkbox" value="${type.value}" name="surveyType">
                                    ${type.des}
                                <span></span>
                            </label>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" id="close-btn" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary" onclick="submitForm()">保存</button>
    </div>
</form>
<script>

    function submitForm() {
        $("#editSurveyTypeForm").ajaxSubmit({
            complete: function () {
                $("#editSurveyTypeForm #close-btn").click();
                    refreshTable();
            }
        })
    }


</script>