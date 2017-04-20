<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                                    <div class="caption">
                                        <i class="icon-social-dribbble font-blue-soft"></i>
                                        <span class="caption-subject font-blue-soft bold uppercase">My record</span>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <ul class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#tab_1_1" data-toggle="tab"> Last quotations </a>
                                        </li>
                                        <li>
                                            <a href="#tab_1_2" data-toggle="tab"> Last inspections </a>
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane fade active in" id="tab_1_1">
                                            <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                                   id="quotation_table">
                                                <thead>
                                                <tr>
                                                    <th>Ship name</th>
                                                    <th>imo</th>
                                                    <th>Ship type</th>
                                                    <th>Inspection type</th>
                                                    <th>Inspection port</th>
                                                    <th>Inspection date(LMT)</th>
                                                    <th>Total price</th>
                                                    <th>Status</th>
                                                </tr>
                                                </thead>
                                            </table>
                                        </div>
                                        <div class="tab-pane fade" id="tab_1_2">
                                            <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                                   id="inspection_table">
                                                <thead>
                                                <tr>
                                                    <th>Ship name</th>
                                                    <th>imo</th>
                                                    <th>Ship type</th>
                                                    <th>Inspection type</th>
                                                    <th>Inspection port</th>
                                                    <th>Inspection date(LMT)</th>
                                                    <th>Total price</th>
                                                    <th>Surveyors/Company</th>
                                                    <th>Inspection report</th>
                                                </tr>
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
    var quotationTable;
    var inspectionTable;
    $(document).ready(function () {
        quotationTable = $('#quotation_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            "ajax": {
                "url": "op/record/list/quotation",
                "type": "post",
                "data": function (data) {
                    data.keyword = $("#keyword").val();
                }
            },
            "language": {
                "url": "http://windyeel.oss-cn-shanghai.aliyuncs.com/global/plugins/datatables/cn.txt"
            },
            "lengthMenu": [[5, 40, 60], [5, 40, 60]],
            "columns": [
                {
                    "data": "shipName",
                },
                {
                    "data": "imo",
                },
                {
                    "data": "shipType",
                    "render": function (data) {
                        return shipType[data];
                    }
                },
                {
                    "data": "inspectionType",
                    "render": function (data) {
                        return inspectionType[data];
                    }
                },
                {
                    "data": "portName",
                },
                {
                    "data": "imo",
                },
                {
                    "data": "totalPrice",
                },
                {
                    "data": "quotationStatus",
                    "render": function (data) {
                        if (data == 0) {
                            return "<a class='btn btn-sm blue'>询价</a>";
                        } else if (data == 1) {
                            return "aaa";
                        }
                    }
                },
            ],
            "columnDefs": [{
                "targets": 5,
                "render": function (data, type, row) {
                    var dateFrom = new Date(row.dateFrom).Format("yyyy-MM-dd");
                    var dateTo = new Date(row.dateTo).Format("yyyy-MM-dd");
                    return dateFrom + " to " + dateTo;
                }
            }],
        });
        inspectionTable = $('#inspection_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            "ajax": {
                "url": "op/record/list/inspection",
                "type": "post",
                "data": function (data) {
                    data.keyword = $("#keyword").val();
                }
            },
            "language": {
                "url": "http://windyeel.oss-cn-shanghai.aliyuncs.com/global/plugins/datatables/cn.txt"
            },
            "lengthMenu": [[5, 40, 60], [5, 40, 60]],
            "columns": [
                {
                    "data": "shipName",
                },
                {
                    "data": "imo",
                },
                {
                    "data": "shipType",
                    "render": function (data) {
                        return shipType[data];
                    }
                },
                {
                    "data": "inspectionType",
                    "render": function (data) {
                        return inspectionType[data];
                    }
                },
                {
                    "data": "portName",
                },
                {
                    "data": "imo",
                },
                {
                    "data": "totalPrice",
                },
                {
                    "data": "quotationStatus",
                    "render": function (data) {
                        if (data == 0) {
                            return "<a class='btn btn-sm blue'>询价</a>";
                        } else if (data == 1) {
                            return "aaa";
                        }
                    }
                },
            ],
            "columnDefs": [{
                "targets": 5,
                "render": function (data, type, row) {
                    var dateFrom = new Date(row.dateFrom).Format("yyyy-MM-dd");
                    var dateTo = new Date(row.dateTo).Format("yyyy-MM-dd");
                    return dateFrom + " to " + dateTo;
                }
            }],
        });
    });


</script>