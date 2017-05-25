<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<style>

</style>
<h1 style="text-align: center;background-color: #3598dc;color: white;margin-top: 0">Surveyor management</h1>
<div class="row">
    <div class="col-md-12">
        <form class="form-horizontal" action="op/quotation/add" method="post" id="quotation-add-form">
        </form>
    </div>
    <div class="col-md-12">
        <div style="float:left;margin-bottom: 10px;margin-left: 20px;" class="col-md-3">
            <a type="button" id="back-btn" class="btn btn-circle blue" data-target="navTab" href="surveyor">Back to
                Surveyor list</a>
        </div>
        <label class="col-md-6" style="font-size: 24px;text-align: center">Surveyor Curriculum Vitae</label>
        <hr style="width: 95%;margin: auto;margin-bottom:10px">
    </div>
    <div class="col-md-12">
        <div class="profile-sidebar">
            <div class="portlet light profile-sidebar-portlet ">
                <div class="profile-userpic">
                    <img onerror="nofind(2)" src="${surveyor.portraitUrl}" id="head-img"
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
                        <div class="portlet-body">
                            <div class="tab-content">
                                <div class="tab-pane active">
                                    <form id="add-surveyor-form" action="surveyor/addComplete" method="post">
                                        <div class="form-group col-md-6">
                                            <label class="control-label">First name</label>
                                            <input type="text" class="form-control" name="firstName"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-label">Last name</label>
                                            <input type="text" class="form-control" name="lastName"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-label">Nationality</label>
                                            <input type="text" class="form-control" name="nationality"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-label">Personal Email</label>
                                            <input type="text" class="form-control" name="email"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-label">Mobile number</label>
                                            <input type="text" class="form-control" name="tel"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-labe">Available survey time from</label>
                                            <div class="input-group input-large date-picker input-daterange">
                                                <input type="text" class="form-control required" name="surveyTimeStart">
                                                <span class="input-group-addon"> to </span>
                                                <input type="text" class="form-control required" name="surveyTimeEnd">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label>Available Ship type</label>
                                            <div class="mt-checkbox-inline">
                                                <c:forEach items="${shipType}" var="type">
                                                    <label class="mt-checkbox col-sm-3">
                                                        <input type="checkbox" value="${type.value}" name="shipType">
                                                            ${type.des}
                                                        <span></span>
                                                    </label>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label class="control-label">Description</label>
                                            <textarea class="form-control" rows="5"
                                                      name="description"></textarea>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label class="control-label">Surveyor's profile</label>
                                            <textarea class="form-control" rows="5"
                                                      name="surveyorProfile"></textarea>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label class="control-label">Surveyor's experience</label>
                                            <textarea class="form-control" rows="5"></textarea>
                                        </div>
                                        <div class="margiv-top-10 col-md-12">
                                            <button type="button" onclick="addSurveyor(this)" class="btn green"> Save
                                                Changes
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $('.date-picker').datepicker({autoclose: true, todayHighlight: true, format: 'yyyy-mm-dd'});

    if (jQuery().datepicker) {
        $('.date-picker').datepicker({
            rtl: App.isRTL(),
            orientation: "left",
            autoclose: true,
            startDate: new Date(),
            format: 'yyyy-mm-dd'
        });
    }

    function addSurveyor(obj) {
        var btn = $(obj);
        btn.attr("disabled", true);
        if (check()) {
            $("#add-surveyor-form").ajaxSubmit({
                success: function (data) {
                    if (data.success) {
                        alert("success");
                        $("#back-btn").click();
                    } else {
                        alert("failure");
                    }
                },
                error: function () {
                    alert("error");
                    btn.attr("disabled", false);
                }
            })
        } else {
            btn.attr("disabled", false);
        }

    }

    function check() {
        return true;
    }


</script>
