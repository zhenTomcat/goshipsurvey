<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<form id="editTimeForm" class="form-horizontal" method="post" action="surveyor/editTimeComplete" role="form">
    <div id="time_modal" class="modal fade" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #32c5d2;color:white">
                    <div class='bootstrap-dialog-header'>
                        <div class='bootstrap-dialog-close-button'
                             style='display: block;'>
                            <button class='close' data-dismiss='modal' aria-label='Close'>×</button>
                        </div>
                        <div class='bootstrap-dialog-title'>Available time</div>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="form-group col-md-12">
                            <input type="hidden" id="edit-time-id" name="id" value="${param.id}">
                            <div class="input-group input-large date-picker input-daterange">
                                <input type="text" class="form-control required edit-time-input" name="surveyTimeStart">
                                <span class="input-group-addon"> to </span>
                                <input type="text" class="form-control required edit-time-input" name="surveyTimeEnd">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button id="close-btn" type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" onclick="submitForm()" class="btn btn-primary">保存</button>
                </div>
            </div>
        </div>
    </div>
</form>
<script>
    if (jQuery().datepicker) {
        $('.date-picker').datepicker({
            rtl: App.isRTL(),
            orientation: "left",
            autoclose: true,
            startDate: new Date(),
            format: 'yyyy-mm-dd'
        });
        $('body').removeClass("modal-open"); // fix bug when inline picker is used in modal
    }

    $(document).scroll(function () {
        $('#time_modal .date-picker').datepicker('place'); //#modal is the id of the modal
    });

    function submitForm() {
        if (check()) {
            $("#editTimeForm").ajaxSubmit({
                complete: function () {
                    $("#close-btn").click();
                    refreshTable();
                }
            })
        }
    }

    function check() {
        var flag = true;
        $(".edit-time-input").each(function () {
            var value = $(this).val();
            if (value == null || value == "") {
                $(this).tips({
                    side: 1,
                    msg: "cannot be empty",
                    bg: '#FF5080',
                    time: 3,
                });
                flag = false;
                return false;
            }
        })
        return flag;
    }

</script>