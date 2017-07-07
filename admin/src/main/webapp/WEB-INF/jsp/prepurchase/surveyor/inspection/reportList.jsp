<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <center>
                    <div class="caption"><h3>Reports</h3></div>
                </center>
            </div>
            <div class="portlet-body">
                <table class="table table-striped table-bordered table-hover table-checkable order-column"
                       id="pre_surveyor_report_table">
                    <thead>
                    <tr>
                        <th> Public date</th>
                        <th> Ship name</th>
                        <th> IMO</th>
                        <th> ship type</th>
                        <th> Inspection port</th>
                        <th> Inspection dates(LMT)</th>

                        <th> Consignor</th>
                        <th> Price</th>
                        <th> Surveyor</th>
                        <th> Grading</th>
                        <th> Link to report</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
</div>
<script>
    var reportTable = null;

    $(document).ready(function () {
        drawTable();
    });

    function drawTable() {
        reportTable = $('#pre_surveyor_report_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            'bStateSave': true,
            "ajax": {
                "url": "prepurchase/surveyor/inspection/list",
                "type": "post",
                "data": function (data) {
                    data.keyword = $("#keyword").val();
                }
            },
//            "language": {
//                "url": "http://windyeel.oss-cn-shanghai.aliyuncs.com/global/plugins/datatables/cn.txt"
//            },
            "lengthMenu": [[5, 40, 60], [5, 40, 60]],
            "columns": [
                {
                    "data": "createDate",
                },
                {
                    "data": "shipDetail.shipName",
                },
                {
                    "data": "shipDetail.imo",
                },
                {
                    "data": "shipDetail.shipType",
                },
                {
                    "data": "purchaseQuotation.location",
                },
                {
                    "data": "startDate",
                },
                {
                    "data": "op.name",
                },
                {
                    "data": "purchaseQuotation.totalPrice",
                },
                {
                    "data": "surveyor.firstName",
                },
                {
                    "data": "totalGrade",
                },
                {
                    "data": "",
                },
            ],
            "columnDefs": [
                {
                    "targets": 0,
                    "render": function (data, type, row) {
                        var createDate = new Date(row.createDate).Format("dd/MM/yyyy");
                        return createDate;
                    }
                },
                {
                    "targets": 5,
                    "render": function (data, type, row) {
                        var startDate = new Date(row.purchaseQuotation.startDate).Format("dd/MM/yyyy");
                        var endDate = new Date(row.purchaseQuotation.endDate).Format("dd/MM/yyyy");
                        return startDate + " - " + endDate;
                    }
                }, {
                    "targets": 8,
                    "render": function (data, type, row) {
                        return row.surveyor.firstName + " " + row.surveyor.lastName;
                    }
                }, {
                    "targets": 10,
                    "render": function (data, type, row) {
                        if (row.submitStatus == 1) {
                            return '<a class="ajaxify"  active-li-href="prepurchase/surveyor/report"  data-target="navTab" href="prepurchase/surveyor/reportEdit?inspectionId=' + row.id + '" >View</a> <li class="fa fa-link"></li>';
                        }
                        if (row.submitStatus == 0) {
                            return '<a class="ajaxify" active-li-href="prepurchase/surveyor/report"  data-target="navTab" href="prepurchase/surveyor/reportEdit?inspectionId=' + row.id + '" >Edit</a> <li class="fa fa-edit"></li></li>';
                        }
                        return "";
                    }
                }
            ]
        });
    }


</script>

