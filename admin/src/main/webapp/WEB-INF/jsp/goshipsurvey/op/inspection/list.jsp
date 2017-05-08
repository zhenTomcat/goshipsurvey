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
                <div class="col-md-12">
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption col-md-8">
                                <i class="icon-social-dribbble font-blue-soft"></i>
                                <span class="caption-subject font-blue-soft bold uppercase">Scheduled inspections</span>
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
                                                            <shiro:hasPermission name="op/inspection/confirm">
                                                                <c:if test="${inspection.inspectionStatus==3}">
                                                                    <div class="actions inspection-action">
                                                                        <a class="btn btn-sm green-jungle inspection-action"
                                                                           onclick="OPConfirmComplete(this,${inspection.id})"><i
                                                                                class="fa fa-pencil"></i>
                                                                            Complete</a>
                                                                    </div>
                                                                </c:if>
                                                            </shiro:hasPermission>
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
                                                                    <td><fmt:formatDate value="${quotation.startDate}"
                                                                                        pattern="yyyy-MM-dd"></fmt:formatDate>
                                                                        to <fmt:formatDate value="${quotation.endDate}"
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
                                                                    <td>${surveyor.name}</td>
                                                                    <td>
                                                                        <c:if test="${(not empty surveyor.passportUrl) && (surveyor.passportUrl!='')}">
                                                                            <a class="btn btn-sm green"
                                                                               target="_blank"
                                                                               href="${surveyor.passportUrl}">VIEW</a>
                                                                        </c:if>
                                                                    </td>
                                                                    <td>
                                                                        <shiro:hasPermission name="admin">
                                                                            <a href="surveyor/account/personalInfo?id=${inspection.surveyorId}"
                                                                               data-target="navTab">VIEWP</a>
                                                                            <a href="surveyor/account/companyInfo?id=${inspection.surveyorId}"
                                                                               data-target="navTab">VIEWC</a>
                                                                        </shiro:hasPermission>
                                                                        <c:if test="${surveyor.type==2}">
                                                                            <a href="surveyor/account/personalInfo?id=${inspection.surveyorId}"
                                                                               data-target="navTab">VIEW</a>
                                                                        </c:if>
                                                                        <c:if test="${surveyor.type==3}">
                                                                            <a href="surveyor/account/companyInfo?id=${inspection.surveyorId}"
                                                                               data-target="navTab">VIEW</a>
                                                                        </c:if>
                                                                    </td>
                                                                    <td>
                                                                        <c:if test="${(not empty surveyor.loiUrl) && (surveyor.loiUrl!='')}">
                                                                            <a class="btn btn-sm green"
                                                                               target="_blank"
                                                                               href="${surveyor.loiUrl}">VIEW</a>
                                                                        </c:if>
                                                                    </td>
                                                                    <td>
                                                                        <c:if test="${(not empty surveyor.reportUrl) && (surveyor.reportUrl!='')}">
                                                                            <a class="btn btn-sm green"
                                                                               target="_blank"
                                                                               href="${surveyor.reportUrl}">VIEW</a>
                                                                        </c:if>
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
                                                                    <a href="javascript:;" class="collapse"> </a>
                                                                </div>
                                                                <shiro:hasPermission
                                                                        name="op/inspection/editOtherDetails">
                                                                    <c:if test="${inspection.inspectionStatus==0}">
                                                                        <div class="actions other-details-action">
                                                                            <a class="btn btn-sm green-jungle"
                                                                               onclick="addOtherDetailsInfo(this)"><i
                                                                                    class="fa fa-pencil"></i>
                                                                                Submit</a>
                                                                        </div>
                                                                    </c:if>
                                                                    <c:if test="${inspection.inspectionStatus!=0}">
                                                                        <div class="actions other-details-action">
                                                                            <a class="btn btn-sm green-jungle"
                                                                               onclick="addOtherDetailsInfo(this)"><i
                                                                                    class="fa fa-pencil"></i>
                                                                                Edit</a>
                                                                        </div>
                                                                    </c:if>
                                                                </shiro:hasPermission>
                                                            </div>
                                                            <div class="portlet-body">
                                                                <div class="container-fluid">
                                                                    <div class="col-md-8">
                                                                        <c:forEach items="${inspection.inspectionTypes}"
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
                                                                                particulars(你可以填写或上传或两者都进行)</label>
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
                                                                            <shiro:hasPermission
                                                                                    name="op/inspection/editOtherDetails">
                                                                                <button type="button"
                                                                                        id="ship-particulars${inspection.id}"
                                                                                        class="col-sm-4 btn btn-sm blue ship-particulars-btn">
                                                                                    <i class="fa fa-upload"></i> Ship
                                                                                    particulars upload
                                                                                </button>
                                                                                <div class="col-sm-4 view-ship-particulars">
                                                                                    <c:if test="${(!empty inspection.shipParticularsUrl) && (inspection.shipParticularsUrl!='')}">
                                                                                        <a class="btn btn-sm green"
                                                                                           target="_blank"
                                                                                           href="${inspection.shipParticularsUrl}">DOWNLOAD</a>
                                                                                    </c:if>
                                                                                </div>
                                                                            </shiro:hasPermission>
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
                                                                        <shiro:hasPermission
                                                                                name="op/inspection/editOtherDetails">
                                                                            <button type="button"
                                                                                    id="loi${inspection.id}"
                                                                                    class="col-sm-6 btn btn-sm blue loi-btn">
                                                                                <i class="fa fa-upload"></i> L.O.I
                                                                                without
                                                                                sign upload
                                                                            </button>
                                                                            <div class="col-sm-6 view-loi">
                                                                                <c:if test="${(!empty inspection.blankLoiUrl) && (inspection.blankLoiUrl!='')}">
                                                                                    <a class="btn btn-sm green"
                                                                                       target="_blank"
                                                                                       href="${inspection.blankLoiUrl}">DOWNLOAD</a>
                                                                                </c:if>
                                                                            </div>
                                                                        </shiro:hasPermission>
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
<script>
    $(document).ready(function () {
        $(".loi-btn").each(function () {
            initUploaders_loi_without_sign($(this).attr("id"), "shipinfo", "${staticPath}/");
        })
        $(".ship-particulars-btn").each(function () {
            initUploaders_ship_particulars($(this).attr("id"), "shipinfo", "${staticPath}/");
        })
    })

    function addOtherDetailsInfo(obj) {
        var form = $(obj).parents(".other-details-form");
        if (checkForm(form)) {
            form.ajaxSubmit({
                success: function (data) {
                    if (data.success) {
                        alert("success");
                    } else {
                        alert("failure");
                    }
                },
                error: function () {
                    alert("error");
                }
            })
        }
    }

    function checkForm(form) {
        var flag = true;
        form.find(".required").each(function () {
            var obj = $(this);
            var value = obj.val();
            if (value == null || value.trim() == "") {
                obj.tips({
                    side: 1,
                    msg: "Cannot be empty",
                    bg: '#FF5080',
                    time: 3,
                });
                flag = false;
                return flag;
            }
        })

        //ship particulars
        if (flag) {
            var a = form.find(".ship-particulars-url-input");
            var b = form.find(".ship-particulars-textarea");
            var A = (a.val() == null || a.val().trim() == "");
            var B = (b.val() == null || b.val().trim() == "");
            if (A && B) {
                b.tips({
                    side: 1,
                    msg: "你可以填写或上传",
                    bg: '#FF5080',
                    time: 3,
                });
                flag = false;
            }
        }

        //loi
//        if (flag) {
//            var a = form.find(".blank-loi-url-input");
//            if (a.val() == null || a.val().trim() == "") {
//                form.find(".loi-btn").tips({
//                    side: 1,
//                    msg: "Cannot be empty",
//                    bg: '#FF5080',
//                    time: 3,
//                });
//                flag = false;
//            }
//        }
        return flag;
    }

    function OPConfirmComplete(obj, id) {
        $.ajax({
            url: "op/inspection/confirm",
            type: "post",
            data: {id: id},
            success: function (data) {
                if (data.success) {
                    $(obj).remove();
                    alert("op confirm success")
                } else {
                    alert("op confirm failure");
                }
            },
            error: function () {
                alert("op confirm error");
            }
        })
    }


</script>

