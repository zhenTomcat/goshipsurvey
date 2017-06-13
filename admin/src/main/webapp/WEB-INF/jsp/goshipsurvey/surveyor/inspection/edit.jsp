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
                                        <span class="caption-subject font-blue-soft bold uppercase">Scheduled inspections</span>
                                    </div>
                                    <c:set value="${inspection.quotation}" var="quotation"></c:set>
                                    <c:set value="${inspection.surveyor}" var="surveyor"></c:set>
                                    <c:set value="${inspection.company}" var="company"></c:set>
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
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="portlet box green">
                                                            <div class="portlet-title">
                                                                <div class="caption">Surveyors</div>
                                                                <div class="tools">
                                                                    <a href="javascript:;" class="collapse"> </a>
                                                                </div>
                                                            </div>
                                                            <div class="portlet-body">
                                                                <table class="table table-striped table-bordered table-hover  ">
                                                                    <thead>
                                                                    <tr>
                                                                        <th>Surveyor name / Company</th>
                                                                        <th>Passport</th>
                                                                        <th>Surveyor CV</th>
                                                                        <th>L.O.I</th>
                                                                        <th>Inspection report</th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td>${surveyor.firstName} ${surveyor.lastName}
                                                                            / ${company.name}</td>
                                                                        <td>
                                                                            <div class="col-sm-5 view-div">
                                                                                <c:if test="${(not empty inspection.passportUrl) && (inspection.passportUrl!='')}">
                                                                                    <a class="btn btn-sm green"
                                                                                       target="_blank"
                                                                                       href="${inspection.passportUrl}">VIEW</a>
                                                                                </c:if>
                                                                            </div>
                                                                            <shiro:hasPermission
                                                                                    name="surveyor/inspection/editUrl">
                                                                                <button type="button" title="upload"
                                                                                        style="float: right"
                                                                                        id="passport-btn"
                                                                                        data-id="${inspection.id}"
                                                                                        class=" btn btn-sm blue passport-btn">
                                                                                    <i class="fa fa-upload"></i>
                                                                                </button>
                                                                            </shiro:hasPermission>
                                                                        </td>
                                                                        <td>
                                                                            <a href="surveyor/info?id=${surveyor.id}"
                                                                               data-model="dialog">VIEW</a>
                                                                        </td>
                                                                        <td>
                                                                            <div class="col-sm-5 view-div">
                                                                                <c:if test="${(not empty inspection.loiUrl) && (inspection.loiUrl!='')}">
                                                                                    <a class="btn btn-sm green"
                                                                                       target="_blank"
                                                                                       href="${inspection.loiUrl}">VIEW</a>
                                                                                </c:if>
                                                                            </div>
                                                                            <shiro:hasPermission
                                                                                    name="surveyor/inspection/editUrl">
                                                                                <button type="button" title="upload"
                                                                                        style="float: right"
                                                                                        id="loi-btn"
                                                                                        data-id="${inspection.id}"
                                                                                        class="btn btn-sm blue loi-btn">
                                                                                    <i class="fa fa-upload"></i>
                                                                                </button>
                                                                            </shiro:hasPermission>
                                                                        </td>
                                                                        <td>
                                                                            <div class="col-sm-5 view-div">
                                                                                <c:if test="${(not empty inspection.reportUrl) && (inspection.reportUrl!='')}">
                                                                                    <a class="btn btn-sm green"
                                                                                       target="_blank"
                                                                                       href="${inspection.reportUrl}">VIEW</a>
                                                                                </c:if>
                                                                            </div>
                                                                            <shiro:hasPermission
                                                                                    name="surveyor/inspection/editUrl">
                                                                                <button type="button" title="upload"
                                                                                        style="float: right"
                                                                                        id="report-btn"
                                                                                        data-id="${inspection.id}"
                                                                                        class=" btn btn-sm blue report-btn">
                                                                                    <i class="fa fa-upload"></i>
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
                                                                            <c:forEach
                                                                                    items="${inspection.inspectionTypes}"
                                                                                    var="type">
                                                                                <div class="form-group col-md-12">
                                                                                    <label class="col-sm-2 control-label inspection-type-label">${inspectionType[type-1].des}</label>
                                                                                </div>
                                                                                <div class="form-group col-md-6">
                                                                                    <label class="col-sm-12 control-label delivery-by-label">
                                                                                            ${dLabel[type]}
                                                                                        : ${quotation[delivery[type]]}
                                                                                    </label>
                                                                                </div>
                                                                                <div class="form-group col-md-6">
                                                                                    <label class="col-sm-12 control-label delivery-by-label">
                                                                                            ${aLabel[type]}
                                                                                        : ${quotation[accepted[type]]}
                                                                                    </label>
                                                                                </div>
                                                                            </c:forEach>
                                                                            <div class="form-group col-md-3">
                                                                                <label class="col-sm-10 control-label">Ship
                                                                                    particulars : </label>
                                                                                <div class="col-sm-4 view-ship-particulars"
                                                                                     style="margin-top: 10px">
                                                                                    <c:if test="${(!empty quotation.shipParticularsUrl) && (quotation.shipParticularsUrl!='')}">
                                                                                        <a class="btn btn-sm green"
                                                                                           target="_blank"
                                                                                           href="${quotation.shipParticularsUrl}">DOWNLOAD</a>
                                                                                    </c:if>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group col-md-9"
                                                                                 style="padding-top: 10px;word-wrap: break-word">
                                                                                ${quotation.shipParticulars}
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4 margin-bottom-10">
                                                                            <label class="col-sm-12 control-label"
                                                                                   style="padding-left: 0">Port
                                                                                agency :</label>
                                                                            <div class="form-group col-md-12"
                                                                                 style="word-wrap: break-word">
                                                                                ${quotation.portAgency}
                                                                            </div>

                                                                            <label class="col-sm-2 control-label">L.O.I</label>
                                                                            <br><br>
                                                                            <div class="col-sm-6 view-loi">
                                                                                <c:if test="${(!empty quotation.blankLoiUrl) && (quotation.blankLoiUrl!='')}">
                                                                                    <a class="btn btn-sm green"
                                                                                       target="_blank"
                                                                                       href="${quotation.blankLoiUrl}">DOWNLOAD</a>
                                                                                </c:if>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
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
        </div>
    </div>
</div>
<script>
    initUploaders_passprot_loi_report("passport-btn", "shipinfo", "${staticPath}/", "passport");
    initUploaders_passprot_loi_report("loi-btn", "shipinfo", "${staticPath}/", "loi");
    initUploaders_passprot_loi_report("report-btn", "shipinfo", "${staticPath}/", "report");

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


</script>

