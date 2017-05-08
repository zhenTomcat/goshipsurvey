<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                        <span class="caption-subject font-blue-soft bold uppercase">Available vessels</span>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="caption col-md-8 margin-bottom-15">
                                        <span class="caption-subject font-blue-soft bold uppercase">Applied</span>
                                    </div>
                                    <div class="tab-pane fade active in" id="tab_1_1">
                                        <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                               id="applied_table">
                                            <thead>
                                            <tr>
                                                <th width="15%">Ship name</th>
                                                <th width="10%">imo</th>
                                                <th width="10%">Ship type</th>
                                                <th width="15%">Inspection type</th>
                                                <th width="15%">Inspection port</th>
                                                <th width="20%">Inspection date(LMT)</th>
                                                <th width="10%">Price</th>
                                                <th width="10%">Status</th>
                                            </tr>
                                            <tbody></tbody>
                                            </thead>
                                        </table>
                                    </div>
                                    <div class="clearfix margin-bottom-20"></div>
                                    <div class="caption col-md-8 margin-bottom-15">
                                        <span class="caption-subject font-blue-soft bold uppercase">Available</span>
                                    </div>
                                    <div class="tab-content">
                                        <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                               id="available_table">
                                            <thead>
                                            <tr>
                                                <th width="15%">Ship name</th>
                                                <th width="10%">imo</th>
                                                <th width="10%">Ship type</th>
                                                <th width="15%">Inspection type</th>
                                                <th width="15%">Inspection port</th>
                                                <th width="20%">Inspection date(LMT)</th>
                                                <th width="10%">Price</th>
                                                <th width="10%">Apply Survey</th>
                                            </tr>
                                            <tbody></tbody>
                                            </thead>
                                        </table>
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
    var appliedTable = $("#applied_table");//已申请的quotation表格
    var availableTable = $("#available_table");//可申请的quotation表格
    $(document).ready(function () {
        drawTable();
    })

    //绘制页面表格
    function drawTable() {
        $.ajax({
            url: "surveyor/quotation/list",
            type: "get",
            success: function (data) {
                drawAppliedTable(data.applicationList);
                drawAvailableTable(data.quotationList);
            },
            error: function () {
                alert("drawTable error");
            }
        })
    }

    //绘制已申请的quotation表格
    function drawAppliedTable(list) {
        var html = "";
        for (var i = 0; i < list.length; i++) {
            var a = list[i];
            var q = a.quotation;
            html += "<tr>";
            html += "<td>" + q.shipName + "</td>";
            html += "<td>" + q.imo + "</td>";
            html += "<td>" + q.shipType + "</td>";
            html += "<td>" + q.inspectionType + "</td>";
            html += "<td>" + q.portName + "</td>";
            var startDate = new Date(q.startDate).Format("yyyy-MM-dd");
            var endDate = new Date(q.endDate).Format("yyyy-MM-dd");
            html += "<td>" + startDate + " to " + endDate + "</td>";
            html += "<td>$:" + a.totalPrice + "</td>";
            var applicationStaus = a.applicationStatus;
            if (applicationStaus == 0) {
                html += "<td><a class='btn btn-sm yellow'>Applying</a></td>";
            } else if (applicationStaus == 1) {
                html += "<td><a class='btn btn-sm green'>Success</a></td>";
            } else if (applicationStaus == 2) {
                html += "<td><a class='btn btn-sm red'>Failure</a></td>";
            }
            html += "</tr>"
        }
        if (html == "") {
            html += "<tr><td colspan='8'>No data</td></tr>";
        }
        appliedTable.find("tbody").html(html);
    }

    //绘制可申请的quotation表格
    function drawAvailableTable(list) {
        var html = "";
        for (var i = 0; i < list.length; i++) {
            var q = list[i];
            html += "<tr>";
            html += "<td>" + q.shipName + "</td>";
            html += "<td>" + q.imo + "</td>";
            html += "<td>" + q.shipType + "</td>";
            html += "<td>" + q.inspectionType + "</td>";
            html += "<td>" + q.portName + "</td>";
            var startDate = new Date(q.startDate).Format("yyyy-MM-dd");
            var endDate = new Date(q.endDate).Format("yyyy-MM-dd");
            html += "<td>" + startDate + " to " + endDate + "</td>";
            html += "<td>$:<input class='price-input' style='width: 70%'></td>";
            <shiro:hasPermission
                    name="surveyor/quotationApplication/add">
            html += "<td><a class='btn btn-sm blue' onclick='addApplication(this," + q.id + ")'>Apply</a></td>";
            </shiro:hasPermission>
            html += "</tr>"
        }
        if (html == "") {
            html += "<tr><td colspan='8'>No data</td></tr>";
        }
        availableTable.find("tbody").html(html);
    }

    //提交申请
    function addApplication(obj, quotationId) {
        var priceInput = $(obj).parents("tr").find(".price-input");
        var totalPrice = priceInput.val();
        if (totalPrice == null || (totalPrice.trim() == "") || (isNaN(totalPrice)) || totalPrice < 0) {
            priceInput.tips({
                side: 1,
                msg: "请输入正确的金额",
                bg: '#FF5080',
                time: 5,
            });
            return;
        }
        $.ajax({
            url: "surveyor/quotationApplication/add",
            type: "post",
            data: {quotationId: quotationId, totalPrice: totalPrice},
            success: function (data) {
                if (data.success) {
                    drawTable();
                } else {
                    alert("addApplication error");

                }
            },
            error: function () {
                alert("addApplication error");
            },
        })
    }
</script>




