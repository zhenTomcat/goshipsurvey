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

    .table-bordered, .table-bordered > tbody > tr > td, .table-bordered > tbody > tr > th, .table-bordered > tfoot > tr > td, .table-bordered > tfoot > tr > th, .table-bordered > thead > tr > td, .table-bordered > thead > tr > th {
        border: 1px solid #e7ecf1;
    }

    .application-outer-td {
        padding: 0;
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
                                </div>
                                <div class="portlet-body">
                                    <div class="tab-content">
                                        <div class="tab-pane fade active in" id="tab_1_1">
                                            <table class="table  table-checkable table-bordered"
                                                   id="inspection_table">
                                                <thead>
                                                <tr>
                                                    <th width="10%">Ship name</th>
                                                    <th width="10%">imo</th>
                                                    <th width="10%">Ship type</th>
                                                    <th width="10%">Inspection type</th>
                                                    <th width="10%">Inspection port</th>
                                                    <th width="20%">Inspection date(LMT)</th>
                                                    <th width="10%">Total price</th>
                                                    <th width="10%">Status</th>
                                                    <th width="10%">View</th>
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
    var inspectionTable = $("#inspection_table");
    $(document).ready(function () {
        drawTable();
    })

    function drawTable() {
        inspectionTable = $('#inspection_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            "ajax": {
                "url": "surveyor/inspection/list",
                "type": "get",
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
                    "data": "quotation.shipName",
                },
                {
                    "data": "quotation.imo",
                },
                {
                    "data": "quotation.shipType",
                },
                {
                    "data": "quotation.inspectionType",
                },
                {
                    "data": "quotation.portName",
                },
                {
                    "data": "startDate",
                },
                {
                    "data": "quotation.totalPrice",
                    "render": function (data) {
                        return "$" + data;
                    }
                },
                {
                    "data": "inspectionStatus",
                    "render": function (data) {
                        return data;
                    }
                },
                {
                    "data": "id",
                },
            ],
            "columnDefs": [
                {
                    "targets": 5,
                    "render": function (data, type, row) {
                        var startDate = new Date(row.quotation.startDate).Format("yyyy-MM-dd");
                        var endDate = new Date(row.quotation.endDate).Format("yyyy-MM-dd");
                        return startDate + " to " + endDate;
                    }
                },
                {
                    "targets": 8,
                    "render": function (data, type, row) {
                        return '<a data-target="navTab" href="surveyor/inspection/edit?id=' + row.id + '">VIEW</a>';
                    }
                }
            ],
        });
    }


    function refreshTable(toFirst) {
        if (toFirst) {//表格重绘，并跳转到第一页
            inspectionTable.draw();
        } else {//表格重绘，保持在当前页
            inspectionTable.draw(false);
        }
    }


</script>



