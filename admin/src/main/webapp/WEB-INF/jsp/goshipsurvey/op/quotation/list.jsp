<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<style>
    table th, td {
        text-align: center;
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
                                        <span class="caption-subject font-blue-soft bold uppercase">Quotations</span>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="btn-group">
                                            <a href="#form_modal2" data-toggle="modal"
                                               class="btn blue"><i class="fa fa-plus"></i> New quotation
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="tab-content">
                                        <div class="tab-pane fade active in" id="tab_1_1">
                                            <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                                   id="quotation_table">
                                                <thead>
                                                <tr>
                                                    <th width="15%">Ship name</th>
                                                    <th width="10%">imo</th>
                                                    <th width="10%">Ship type</th>
                                                    <th width="15%">Inspection type</th>
                                                    <th width="15%">Inspection port</th>
                                                    <th width="25%">Inspection date(LMT)</th>
                                                    <th width="10%">Status</th>
                                                </tr>
                                                <tbody></tbody>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="clearfix margin-bottom-20"></div>
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
    var shipType = ["", "Bulker", "Tanker", "Gas", "Chemical", "Container", "Multi_purpose", "Ro-Ro/PCC", "Reefer"];
    var inspectionType = ["", "on hire", "off hire", "condition"];

    var quotationTable = $("#quotation_table");
    $(document).ready(function () {
        drawTable();
    })

    function drawTable() {
        $.ajax({
            url: "op/quotation/list",
            type: "post",
            success: function (data) {
                var list = data.list;
                var html = "";
                for (var i = 0; i < list.length; i++) {
                    var quotation = list[i];
                    html += "<tr>";
                    html += "<td>" + quotation.shipName + "</td>";
                    html += "<td>" + quotation.imo + "</td>";
                    html += "<td>" + shipType[quotation.shipType] + "</td>";
                    html += "<td>" + inspectionType[quotation.inspectionType] + "</td>";
                    html += "<td>" + quotation.portName + "</td>";
                    var dateFrom = new Date(quotation.dateFrom).Format("yyyy-MM-dd");
                    var dateTo = new Date(quotation.dateTo).Format("yyyy-MM-dd");
                    html += "<td>" + dateFrom + " to " + dateTo + "</td>";
                    html += "<td>";
                    var quotationStatus = quotation.quotationStatus;
                    if (quotationStatus == 0) {
                        html += "<a class='btn btn-sm blue' onclick='startQuotation(" + quotation.id + ")'>询价</a>";
                    } else if (quotationStatus == 1) {
                        html += "<a class='btn btn-sm green' readonly>询价中...</a>";
                    } else if (quotationStatus == 2) {
                        html += "<a class='btn btn-sm green' readonly>已邀请验船</a>";
                    }
                    html += "</td>"
                    html += "</tr>"
                    var applyList = quotation.applicationList;
                    if (applyList != null && applyList.length > 0) {
                        html += "<tr><td colspan='7'><table class='table table-striped table-bordered table-hover table-checkable order-column'>"
                        for (var j = 0; j < applyList.length; j++) {
                            var application = applyList[j];
                            var user = application.user;
                            html += "<tr>";
                            html += "<td>Apply surveyor:" + user.name + "</td>";
                            html += "<td>Surveyor CV:" + "" + "</td>";
                            html += "<td>Location:" + "" + "</td>";
                            html += "<td>Company:" + "" + "</td>";
                            html += "<td>Quotation:" + application.totalPrice + "</td>";
                            var applicationStatus = application.applicationStatus;
                            if (applicationStatus == 0) {
                                html += "<td><a class='btn btn-sm default' onclick='initInspection(" + quotation.id + "," + application.id + ")'>确认邀请验船</a></td>";
                            } else if (applicationStatus == 1) {
                                html += "<td><a class='btn btn-sm default'>已邀请验船</a></td>";
                            } else if (applicationStatus == 2) {
                                html += "<td><a class='btn btn-sm default'>下次合作</a></td>";
                            }
                            html += "</tr>";
                        }
                        html += "</table></td></tr>";
                    }

                }
                quotationTable.find("tbody").html(html);
            },
            error: function () {

            }
        })
    }

    function initInspection(quotationId, applicationId) {
        $.ajax({
            type: "post",
            url: "op/inspection/add",
            data: {quotationId: quotationId, applicationId: applicationId},
            success: function (data) {
                drawTable();
            },
            error: function () {
                alert("initInspection error");
            }
        })
    }

    function refreshTable(toFirst) {
        if (toFirst) {//表格重绘，并跳转到第一页
            defTable.draw();
        } else {//表格重绘，保持在当前页
            defTable.draw(false);
        }
    }

    function startQuotation(quotationId) {
        console.log(quotationId);
        $.ajax({
            type: "post",
            url: "op/quotation/startQuotation",
            data: {id: quotationId},
            success: function (data) {
                if (data.success) {
                    drawTable();
                } else {
                    alert("error1");
                }
            },
            error: function () {
                alert("error2");
            }
        })
    }

</script>


<jsp:include page="add.jsp"/>


