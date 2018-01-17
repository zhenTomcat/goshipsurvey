<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<% String info = "This information can't be read by surveyor,until chosen surveyor/company.";%>
<style>
    #modal_form .modal-dialog {
        width: 70%;
        margin: 0px auto;
    }

    #modal_form .modal-dialog .modal-body {
        padding: 5px;
    }

    #modal_form .form-group {
        margin-bottom: 5px;
    }




    .required-label:after {
        content: "*";
        color: red;
    }

    .select2-dropdown {
        z-index: 999999;
    }
    .col-md-12{
        margin-top: 20px;
    }

</style>
<form class="form-horizontal" action="spec/edit" method="post" id="spec-add-form">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header" style="background-color: #32c5d2;">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title" style="color: white">SHIP SIMPLE SPEC.</h4>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <input type="hidden"  name="id" value="${spec.id}"/>
                    <input type="hidden"  name="delFlag" value="${spec.delFlag}"/>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group col-md-12">
                                <label class="col-sm-4 control-label required-label">船名</label>
                                <div class="col-sm-6">
                                    <input id="shipName" name="shipName" type="text" value="${spec.shipName}"
                                           class="form-control required">
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <label class="col-sm-4 control-label required-label">IMO</label>
                                <div class="col-sm-6">
                                    <input id="imo" name="imo" type="text" value="${spec.imo}"
                                           class="form-control required">
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <label class="col-sm-4 control-label required-label">船型</label>
                                <div class="col-sm-6">
                                    <input id="shipType" name="shipType" type="text" value="${spec.shipType}"
                                           class="form-control required">
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <label class="col-sm-4 control-label required-label">检验类型</label>
                                <div class="col-sm-6">
                                    <input id="inspectType" name="inspectType" type="text" value="${spec.inspectType}"
                                           class="form-control required">
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <label class="col-sm-4 control-label required-label">检验港口</label>
                                <div class="col-sm-6">
                                    <input id="inspectPort" name="inspectPort" type="text" value="${spec.inspectPort}"
                                           class="form-control required">
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <fmt:formatDate value="${spec.inspectDate}" pattern="yyyy-MM-dd" var="date"/>
                                <label class="col-sm-4 control-label required-label">检验日期</label>
                                <div class="col-sm-6 date-picker input-daterange" >
                                    <input id="inspectDate" name="inspectDate" type="text" value="${date}"
                                           class="form-control required">
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <label class="col-sm-4 control-label required-label">船舶信息</label>
                                <div class="col-sm-3">
                                    <button type="button" style="margin-left: 10px" id="shipInfo-btn"
                                            class="col-sm-4 btn btn-sm blue ship-particulars-btn">
                                        <i class="fa fa-upload"></i>ShipInfo</button>
                                </div>
                                <div class="col-sm-2">
                                    <input type="hidden" value="${spec.shipInfoName}" name="shipInfoName"/>
                                    <input type="hidden" value="${spec.shipInfoOss}" name="shipInfoOss"/>
                                    ${spec.shipInfoName}
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <label class="col-sm-4 control-label required-label">检验报告</label>
                                <div class="col-sm-3">
                                    <button type="button" style="margin-left: 10px" id="inspectReport-btn"
                                            class="col-sm-4 btn btn-sm blue ship-particulars-btn">
                                        <i class="fa fa-upload"></i>Report</button>
                                </div>
                                <div class="col-sm-2">
                                    <input type="hidden" value="${spec.inspectReportName}" name="inspectReportName"/>
                                    <input type="hidden" value="${spec.inspectReportOss}" name="inspectReportOss"/>
                                    ${spec.inspectReportName}
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <label class="col-sm-4 control-label required-label">现场照片</label>
                                <div class="col-sm-3">
                                    <button type="button" style="margin-left: 10px" id="sitePicture-btn"
                                            class="col-sm-4 btn btn-sm blue ship-particulars-btn">
                                        <i class="fa fa-upload"></i>Picture</button>
                                </div>
                                <div class="col-sm-2">
                                    <input type="hidden" value="${spec.sitePictureName}" name="sitePictureName"/>
                                    <input type="hidden" value="${spec.sitePictureOss}" name="sitePictureOss"/>
                                    ${spec.sitePictureName}
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <label class="col-sm-4 control-label required-label">验船师名称</label>
                                <div class="col-sm-1">
                                    <input id="surveyorAName" name="surveyorAName" type="text" value="${spec.surveyorAName}"
                                           class="form-control required">
                                </div>

                                <label class="col-sm-1 control-label required-label">简历</label>
                                <div class="col-sm-3">
                                    <button type="button" style="margin-left: 10px" id="surveyorAOss-btn"
                                            class="col-sm-4 btn btn-sm blue ship-particulars-btn">
                                        <i class="fa fa-upload"></i>Resume</button>
                                </div>
                                <div class="col-sm-2">
                                    <input type="hidden" value="${spec.surveyorAResumeName}" name="surveyorAResumeName"/>
                                    <input type="hidden" value="${spec.surveyorAResumeOss}" name="surveyorAResumeOss"/>
                                    ${spec.surveyorAResumeName}
                                </div>
                            </div>

                            <div class="form-group col-md-12">
                                <label class="col-sm-4 control-label required-label">验船师名称</label>
                                <div class="col-sm-1">
                                    <input id="surveyorBName" name="surveyorBName" type="text" value="${spec.surveyorBName}"
                                           class="form-control required">
                                </div>

                                <label class="col-sm-1 control-label required-label">简历</label>
                                <div class="col-sm-3">
                                    <button type="button" style="margin-left: 10px" id="surveyorBOss-btn"
                                            class="col-sm-4 btn btn-sm blue ship-particulars-btn">
                                        <i class="fa fa-upload"></i>Resume</button>
                                </div>
                                <div class="col-sm-2">
                                    <input type="hidden" value="${spec.surveyorBResumeName}" name="surveyorBResumeName"/>
                                    <input type="hidden" value="${spec.surveyorBResumeOss}" name="surveyorBResumeOss"/>
                                    ${spec.surveyorBResumeName}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button id="closeModal" type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <shiro:hasPermission name="op/quotation/add">
                    <button type="button" onclick="severCheck()" class="btn btn-primary">Save</button>
                </shiro:hasPermission>
            </div>
        </div>
    </div>
</form>

<script>
    $('.date-picker').datepicker({autoclose: true, todayHighlight: true, format: 'yyyy-mm-dd'});

    initUploaders_sitePicture("sitePicture-btn", "shipinfo", "${staticPath}/");
    initUploaders_shipinfo("shipInfo-btn", "shipinfo", "${staticPath}/");
    initUploaders_report("inspectReport-btn", "shipinfo", "${staticPath}/");
    initUploaders_resume("surveyorAOss-btn", "shipinfo", "${staticPath}/","a");
    initUploaders_resume("surveyorBOss-btn", "shipinfo", "${staticPath}/","b");

    function severCheck() {
        $("#spec-add-form").ajaxSubmit({
            success: function (data) {
                if (data.status==200) {
                    console.log("jinlaile");
                    $("#closeModal").click();
                    refreshTable(false);
                } else {
                    alert("add SHIP SIMPLE SPEC. error")
                }
            },
        });
    }



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

</script>
