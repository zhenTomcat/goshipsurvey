<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String[] dLabel = {"", "Delivery by", "Re-delivery by", "Charter"};
    String[] delivery = {"", "deliveryBy", "reDeliveryBy", "charter"};
    String[] aLabel = {"", "Accepted by", "Re-accepted by", "Owner"};
    String[] accepted = {"", "acceptedBy", "reAcceptedBy", "owner"};
%>
<c:set value="<%=delivery%>" var="delivery"></c:set>
<c:set value="<%=dLabel%>" var="dLabel"></c:set>
<c:set value="<%=accepted%>" var="accepted"></c:set>
<c:set value="<%=aLabel%>" var="aLabel"></c:set>
<style>
    table th, td {
        text-align: center;
    }

    .modal-dialog {
        width: 60%;
        margin: 30px auto;
    }

    .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
        padding-left: 5px;
        padding-right: 5px;
    }

    .form-control {
        width: 90%;
    }

    .form-horizontal .control-label {
        text-align: left;
    }

    .table, .portlet .portlet {
        margin-bottom: 0;
    }

</style>
<div class="row">
    <div class="col-md-12">
        <div class="portlet light bordered">
            <div class="portlet-body">
                <div class="table-toolbar">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet light">
                                <div class="portlet-title">
                                    <div class="caption col-md-8">
                                        <i class="icon-social-dribbble font-blue-soft"></i>
                                        <span class="caption-subject font-blue-soft bold uppercase">Apply survey</span>
                                    </div>
                                    <c:forEach items="${list}" var="inspection">
                                        <c:set value="${inspection.quotation}" var="quotation"></c:set>
                                        <c:set value="${inspection.surveyorInfo}" var="surveyor"></c:set>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="portlet-body">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="portlet box green">
                                                                <div class="portlet-title">
                                                                    <div class="caption">Details</div>
                                                                    <div class="tools">
                                                                        <a href="javascript:;" class="collapse"> </a>
                                                                    </div>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover  ">
                                                                        <thead>
                                                                        <tr>
                                                                            <th>Ship name</th>
                                                                            <th>imo</th>
                                                                            <th>Ship type</th>
                                                                            <th>Inspection type</th>
                                                                            <th>Inspection port</th>
                                                                            <th>Inspection date(LMT)</th>
                                                                            <th>Total price</th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr>
                                                                            <td>${quotation.shipName}</td>
                                                                            <td>${quotation.imo}</td>
                                                                            <td>${quotation.shipType}</td>
                                                                            <td>${quotation.inspectionType}</td>
                                                                            <td>${quotation.portName}</td>
                                                                            <td><fmt:formatDate
                                                                                    value="${quotation.startDate}"
                                                                                    pattern="yyyy-MM-dd"></fmt:formatDate>
                                                                                to <fmt:formatDate
                                                                                        value="${quotation.endDate}"
                                                                                        pattern="yyyy-MM-dd"></fmt:formatDate></td>
                                                                            <td>$:${quotation.totalPrice}</td>
                                                                        </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <form class="form-horizontal other-details-form"
                                                          action="op/inspection/editOtherDetails"
                                                          method="post">
                                                        <input type="hidden" value="${inspection.id}" name="id"/>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="portlet box green">
                                                                    <div class="portlet-title">
                                                                        <div class="caption">Other Details</div>
                                                                        <div class="tools">
                                                                            <a href="javascript:;"
                                                                               class="collapse"> </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="portlet-body">
                                                                        <div class="container-fluid">
                                                                            <div class="col-md-8">
                                                                                <div class="form-group col-md-12">
                                                                                    <label class="col-sm-2 control-label inspection-type-label">${inspectionType[inspectionTypeValue-1].des}</label>
                                                                                </div>
                                                                                <c:forEach
                                                                                        items="${inspection.inspectionTypes}"
                                                                                        var="type">
                                                                                    <div class="form-group col-md-12">
                                                                                        <label class="col-sm-2 control-label inspection-type-label">${inspectionType[type-1].des}</label>
                                                                                    </div>
                                                                                    <div class="form-group col-md-6">
                                                                                        <label class="col-sm-5 control-label delivery-by-label">
                                                                                                ${dLabel[type]}
                                                                                        </label>
                                                                                        <div class="col-sm-7">
                                                                                            <input name="${delivery[type]}"
                                                                                                   type="text"
                                                                                                   class="form-control delivery-by-input required"
                                                                                                   value="${inspection[delivery[type]]}"/>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="form-group col-md-6">
                                                                                        <label class="col-sm-5 control-label delivery-by-label">
                                                                                                ${aLabel[type]}
                                                                                        </label>
                                                                                        <div class="col-sm-7">
                                                                                            <input name="${accepted[type]}"
                                                                                                   type="text"
                                                                                                   class="form-control delivery-by-input required"
                                                                                                   value="${inspection[accepted[type]]}"/>
                                                                                        </div>
                                                                                    </div>
                                                                                </c:forEach>
                                                                                <div class="form-group col-md-3">
                                                                                    <label class="col-sm-10 control-label">Ship
                                                                                        particulars</label>
                                                                                </div>
                                                                                <div class="form-group col-md-9">
                                                                            <textarea
                                                                                    class="form-control ship-particulars-textarea"
                                                                                    name="shipParticulars"
                                                                                    style="height:200px;resize: none;width: 94%">${inspection.shipParticulars}</textarea>
                                                                                    <input class="form-control ship-particulars-url-input"
                                                                                           data-loi="true"
                                                                                           name="shipParticularsUrl"
                                                                                           type="hidden">
                                                                                    <br>
                                                                                    <div class="col-sm-4 view-ship-particulars">
                                                                                        <c:if test="${(!empty inspection.shipParticularsUrl) && (inspection.shipParticularsUrl!='')}">
                                                                                            <a class="btn btn-sm green"
                                                                                               target="_blank"
                                                                                               href="${inspection.shipParticularsUrl}">DOWNLOAD</a>
                                                                                        </c:if>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4 margin-bottom-10">
                                                                                <label class="col-sm-12 control-label"
                                                                                       style="margin-bottom: 15px">Port
                                                                                    agency</label>
                                                                                <textarea
                                                                                        class="form-control port-agency-textarea required"
                                                                                        name="portAgency"
                                                                                        style="height:230px;resize: none;width: 94%">${inspection.portAgency}</textarea>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <label class="col-sm-2 control-label">L.O.I</label>

                                                                                <input class="form-control blank-loi-url-input"
                                                                                       data-loi="true"
                                                                                       name="blankLoiUrl"
                                                                                       type="hidden">
                                                                                <br><br>
                                                                                <div class="col-sm-6 view-loi">
                                                                                    <c:if test="${(!empty inspection.blankLoiUrl) && (inspection.blankLoiUrl!='')}">
                                                                                        <a class="btn btn-sm green"
                                                                                           target="_blank"
                                                                                           href="${inspection.blankLoiUrl}">DOWNLOAD</a>
                                                                                    </c:if>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>

                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="portlet box green">
                                                                <div class="portlet-title">
                                                                    <div class="caption">Surveyors</div>
                                                                    <div class="tools">
                                                                        <a href="javascript:;" class="collapse"> </a>
                                                                    </div>
                                                                    <c:if test="${inspection.inspectionStatus==4}">
                                                                        <div class="actions inspection-action">
                                                                            <a class="btn btn-sm green-jungle inspection-action"
                                                                               onclick="SurveyorConfirmComplete(this,${inspection.id})"><i
                                                                                    class="fa fa-pencil"></i>
                                                                                Complete</a>
                                                                        </div>
                                                                    </c:if>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <shiro:hasPermission
                                                                            name="surveyor/surveyorInfo/editInfoName">
                                                                        <div class="form-group col-md-12">
                                                                            <label class="col-sm-2"
                                                                                   style="margin-top: 7px">
                                                                                Surveyor name:
                                                                            </label>
                                                                            <div class="col-sm-4">
                                                                                <div class="input-group">
                                                                                    <input type="text"
                                                                                           class="form-control"
                                                                                           value="${surveyor.name}">
                                                                                    <span class="input-group-btn">
                                                                            <button class="btn blue"
                                                                                    onclick="companyConfirmSurveyorName(this,${surveyor.id})"
                                                                                    type="button">Confirm</button>
                                                                        </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </shiro:hasPermission>
                                                                    <table class="table table-striped table-bordered table-hover  ">
                                                                        <thead>
                                                                        <tr>
                                                                            <th style="width:33.3%">Uploading Passport
                                                                            </th>
                                                                            <th style="width:33.3%">Uploading L.O.I with
                                                                                sign
                                                                            </th>
                                                                            <th style="width:33.3%">Inspection report
                                                                            </th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr>
                                                                            <td>
                                                                                <div class="col-sm-6 view-div">
                                                                                    <c:if test="${(not empty surveyor.passportUrl) && (surveyor.passportUrl!='')}">
                                                                                        <a class="btn btn-sm green"
                                                                                           target="_blank"
                                                                                           href="${surveyor.passportUrl}">VIEW</a>
                                                                                    </c:if>
                                                                                </div>
                                                                                <shiro:hasPermission
                                                                                        name="surveyor/surveyorInfo/editInfo">
                                                                                    <button type="button"
                                                                                            style="float: right"
                                                                                            id="passport${surveyor.id}"
                                                                                            data-id="${surveyor.id}"
                                                                                            class="col-sm-4 btn btn-sm blue passport-btn">
                                                                                        <i class="fa fa-upload"></i>
                                                                                        Upload
                                                                                    </button>
                                                                                </shiro:hasPermission>
                                                                            </td>
                                                                            <td>
                                                                                <div class="col-sm-6 view-div">
                                                                                    <c:if test="${(not empty surveyor.loiUrl) && (surveyor.loiUrl!='')}">
                                                                                        <a class="btn btn-sm green"
                                                                                           target="_blank"
                                                                                           href="${surveyor.loiUrl}">VIEW</a>
                                                                                    </c:if>
                                                                                </div>
                                                                                <shiro:hasPermission
                                                                                        name="surveyor/surveyorInfo/editInfo">
                                                                                    <button type="button"
                                                                                            style="float: right"
                                                                                            id="loi${surveyor.id}"
                                                                                            data-id="${surveyor.id}"
                                                                                            class="col-sm-4 btn btn-sm blue loi-btn">
                                                                                        <i class="fa fa-upload"></i>
                                                                                        Upload
                                                                                    </button>
                                                                                </shiro:hasPermission>
                                                                            </td>
                                                                            <td>
                                                                                <div class="col-sm-6 view-div">
                                                                                    <c:if test="${(not empty surveyor.reportUrl) && (surveyor.reportUrl!='')}">
                                                                                        <a class="btn btn-sm green"
                                                                                           target="_blank"
                                                                                           href="${surveyor.reportUrl}">VIEW</a>
                                                                                    </c:if>
                                                                                </div>
                                                                                <shiro:hasPermission
                                                                                        name="surveyor/surveyorInfo/editInfo">
                                                                                    <button type="button"
                                                                                            style="float: right"
                                                                                            id="report${surveyor.id}"
                                                                                            data-id="${surveyor.id}"
                                                                                            class="col-sm-4 btn btn-sm blue report-btn">
                                                                                        <i class="fa fa-upload"></i>
                                                                                        Upload
                                                                                    </button>
                                                                                </shiro:hasPermission>
                                                                            </td>
                                                                        </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                    <c:if test="${(list==null)||(fn:length(list)==0)}">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="portlet-body">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="portlet box green">
                                                                <div class="portlet-title">
                                                                    <div class="caption">Details</div>
                                                                    <div class="tools">
                                                                        <a href="javascript:;" class="collapse"> </a>
                                                                    </div>
                                                                    <c:if test="${inspection.inspectionStatus==3}">
                                                                        <div class="actions inspection-action">
                                                                            <a class="btn btn-sm green-jungle inspection-action"
                                                                               onclick="OPConfirmComplete(this,${inspection.id})"><i
                                                                                    class="fa fa-pencil"></i>
                                                                                Complete</a>
                                                                        </div>
                                                                    </c:if>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <center>No data</center>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:if>
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
    $(document).ready(function () {
        $("form input").prop("readonly", true);
        $("textarea").prop("readonly", true);

        $(".passport-btn").each(function () {
            initUploaders_passprot_loi_report($(this).attr("id"), "shipinfo", "${staticPath}/", "passport");
        })

        $(".loi-btn").each(function () {
            initUploaders_passprot_loi_report($(this).attr("id"), "shipinfo", "${staticPath}/", "loi");
        })

        $(".report-btn").each(function () {
            initUploaders_passprot_loi_report($(this).attr("id"), "shipinfo", "${staticPath}/", "report");
        })

    })


    function SurveyorConfirmComplete(obj, id) {
        $.ajax({
            url: "surveyor/inspection/confirm",
            type: "post",
            data: {id: id},
            success: function (data) {
                if (data.success) {
                    $(obj).remove();
                    alert("surveyor confirm success")
                } else {
                    alert("surveyor confirm failure");
                }
            },
            error: function () {
                alert("surveyor confirm error");
            }
        })
    }

    function companyConfirmSurveyorName(obj, id) {
        console.log("sadasdsada");
        var input = $(obj).parent().siblings("input");
        var name = input.val();
        if (name == null || name.trim() == "") {
            input.tips({
                side: 1,
                msg: "Cannot be empty",
                bg: '#FF5080',
                time: 3,
            });
        } else {
            $.ajax({
                url: "surveyor/surveyorInfo/editInfoName",
                type: "post",
                data: {id: id, name: name},
                success: function (data) {
                    if (data.success) {
                        alert("editInfoName success");
                    } else {
                        alert("editInfoName failure");
                    }
                },
                error: function () {
                    alert("editInfoName error");
                }
            })
        }
    }
</script>

