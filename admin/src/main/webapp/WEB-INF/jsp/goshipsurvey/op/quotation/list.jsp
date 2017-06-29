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
                                        <span class="caption-subject font-blue-soft bold uppercase">Quotations</span>
                                    </div>
                                    <shiro:hasPermission name="op/quotation/add">
                                        <div class="col-md-4">
                                            <div class="btn-group">
                                                <a onclick="showModelForm(this)" data-url="op/quotation/add"
                                                   class="btn blue"><i class="fa fa-plus"></i> New quotation
                                                </a>
                                            </div>
                                        </div>
                                    </shiro:hasPermission>
                                </div>
                                <div class="portlet-body">
                                    <div class="tab-content">
                                        <div class="tab-pane fade active in" id="tab_1_1">
                                            <table class="table  table-bordered"
                                                   id="onoff_op_quotation_table">
                                                <thead>
                                                <tr>
                                                    <th width="15%">Ship name</th>
                                                    <th width="10%">imo</th>
                                                    <th width="10%">Ship type</th>
                                                    <th width="15%">Inspection type</th>
                                                    <th width="15%">Inspection port</th>
                                                    <th width="15%">Inspection date(LMT)</th>
                                                    <th width="10%">Status</th>
                                                    <th width="10%">Trash</th>
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
<div id="modal_form" class="modal fade" role="dialog" aria-hidden="true"></div>
<a id="modal_form_switch" data-toggle="modal" href="#modal_form" style="display: none">a</a>
<script>
    function showModelForm(obj) {
        var url = $(obj).attr("data-url");
        var md = $(obj).attr("md");
        if (md == 'ajax') {
        } else {
            $("#modal_form").load(url);
            $("#modal_form_switch").click();
        }
        return false;
    }

    var quotationTable = $("#onoff_op_quotation_table");
    $(document).ready(function () {
        $.cookie("onOffLastPage", "op/quotation");
        drawTable();
    })

    function drawTable() {
        quotationTable = $('#onoff_op_quotation_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "destroy": true,
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            'bStateSave': true,
            "ajax": {
                "url": "op/quotation/list",
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
                    "data": "shipName",
                },
                {
                    "data": "imo",
                },
                {
                    "data": "shipType",
                },
                {
                    "data": "inspectionType",
                },
                {
                    "data": "portName",
                },
                {
                    "data": "startDate",
                },
                {
                    "data": "quotationStatus",
                },
                {
                    "data": "id",
                },
            ],
            "columnDefs": [
                {
                    "targets": 0,
                    "render": function (data, type, row) {
                        var status = row.quotationStatus;
                        if (status != 0) {
                            return row.shipName;
                        } else {
//                            return '<a  href="op/quotation/edit?id=' + row.id + '"  data-toggle="modal" >' + row.shipName + '</a>'
                            return '<a onclick="showModelForm(this)"  data-url="op/quotation/edit?id=' + row.id + '"  >' + row.shipName + '</a>';

                        }
                    }
                },
                {
                    "targets": 5,
                    "render": function (data, type, row) {
                        var startDate = new Date(row.startDate).Format("yyyy-MM-dd");
                        var endDate = new Date(row.endDate).Format("yyyy-MM-dd");
                        return startDate + " to " + endDate;
                    }
                },
                {
                    "targets": 6,
                    "render": function (data, type, row) {
                        var status = row.quotationStatus;
                        if (status == 0) {
                            return '<a class="btn btn-sm blue" onclick="startQuotation(' + row.id + ')">询价</a>';
                        } else if (status == 1) {
                            return '<a class="btn btn-sm green">询价中...</a>';
                        } else if (status == 2) {
                            return '<a class="btn btn-sm green">已邀请验船</a>';
                        }
                    }
                },
                {
                    "targets": 7,
                    "render": function (data, type, row) {
                        var status = row.quotationStatus;
                        if (status != 2) {
                            return '<a href="op/quotation/deleteById?id=' + row.id + '" class="btn red btn-sm" type="button" data-msg="确定删除吗？" data-model="ajaxToDo" data-callback="drawTable()"><i class="fa fa-trash"></i></a>';
                        }
                    }
                }
            ],
            "drawCallback": function () {
                var rows = $('#onoff_op_quotation_table').find("tbody tr");
                rows.each(function (i, e) {
                    var row = quotationTable.row($(this));
                    var data = row.data();
                    if (data != null) {
                        $(this).after(moreInfo(data));
                    }
                })
            },
        });
    }


    function moreInfo(data) {
        var html = '';
        var quotation = data;
        var applyList = data.applicationList;
        if (applyList != null && applyList.length > 0) {
            html += '<tr class="application-outer-tr"><td colspan="8" style="padding: 0" class="application-outer-td"><table class="table" style="margin-bottom: 0;width:100%">';
            for (var j = 0; j < applyList.length; j++) {
                var application = applyList[j];
                var user = application.user;
                var surveyor = application.surveyor;
                html += '<tr class="application-tr">';
                html += '<td style="width:25%">Apply company : <a href="user/companyInfo?id=' + user.id + '"data-model="dialog">' + user.name + '</a></td>';
                html += '<td style="width:25%">Apply surveyor : <a data-model="dialog" href="surveyor/info?id=' + surveyor.id + '">' + surveyor.firstName + ' ' + surveyor.lastName + '</a></td>';
                html += '<td style="width:20%">Location:' + user.address + '</td>';
                html += '<td style="width:20%">Quotation:$ ' + application.totalPrice + '</td>';
                var applicationStatus = application.applicationStatus;
                if (applicationStatus == 0) {
                    <shiro:hasPermission name="op/inspection/add">
                    html += '<td style="width:10%"><a class="btn btn-sm default" onclick="initInspection(' + quotation.id + ',' + application.id + ')">确认邀请验船</a></td>';
                    </shiro:hasPermission>
                } else if (applicationStatus == 1) {
                    html += '<td style="width:10%" ><a class="btn btn-sm default">已邀请验船</a></td>';
                } else if (applicationStatus == 2) {
                    html += '<td style="width:10%"><a class="btn btn-sm default">下次合作</a></td>';
                }
                html += '</tr>';
            }
            html += '</table></td></tr>';
        }
        return html;
    }


    function refreshTable(toFirst) {
        if (toFirst) {//表格重绘，并跳转到第一页
            quotationTable.draw();
        } else {//表格重绘，保持在当前页
            quotationTable.draw(false);
        }
    }


    function startQuotation(quotationId) {
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


    function initInspection(quotationId, applicationId) {
        $.ajax({
            type: "post",
            url: "op/inspection/add",
            data: {quotationId: quotationId, applicationId: applicationId},
            success: function (data) {
                refreshTable();
            },
            error: function () {
                alert("initInspection error");
            }
        })
    }
</script>


