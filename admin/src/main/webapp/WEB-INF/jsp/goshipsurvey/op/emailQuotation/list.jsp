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
                                        <span class="caption-subject font-blue-soft bold uppercase">EmailQuotations</span>
                                    </div>
                                    <div class="col-md-4">
                                        <input id="shipName"  type="text"
                                               class="form-control" name="name"
                                               placeholder="请输入要船舶名称" style="width: 180px"/>
                                    </div>
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
                                                    <%--<th width="10%">Ship type</th>--%>
                                                    <th width="15%">Inspection type</th>
                                                    <th width="15%">Inspection port</th>
                                                    <th width="15%">Estimated date(LMT)</th>
                                                    <th width="10%">Operation</th>
                                                    <%--<th width="10%">Trash</th>--%>
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

    var quotationTable = $("#onoff_op_quotation_table");
    $(document).ready(function () {
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
                "url": "op/emailQuotation/list",
                "type": "get",
                "data": function (data) {
                    data.keyword = $("#shipName").val();
                }
            },
            "lengthMenu": [[5, 40, 60], [5, 40, 60]],
            "columns": [
                {
                    "data": "shipName",
                },
                {
                    "data": "imo",
                },
                /*{
                    "data": "shipType",
                },*/
                {
                    "data": "inspectionType",
                },
                {
                    "data": "port",
                },
                {
                    "data": "estimatedDate",
                },
            ],
            "columnDefs": [

                {
                    "targets": 4,
                    "render": function (data, type, row) {
                        if(row.estimatedDate!=null){
                            var estimatedDate = new Date(row.estimatedDate.replace(/-/g, "/")).Format("yyyy-MM-dd");
                        }
                        /*var startDate = new Date(row.startDate.replace(/-/g, "/")).Format("yyyy-MM-dd");
                        var endDate = new Date(row.endDate.replace(/-/g, "/")).Format("yyyy-MM-dd");*/
                        return estimatedDate;
                    }
                },

                {
                    "targets": 5,
                    "render": function (data, type, row) {
                        var status = row.quotationStatus;
                        if (status != 2) {
                            return '<button class="btn blue btn-sm"  onclick="importQuotation('+row.id+')" ">Import</button>';
                        }
                        return "";
                    }
                }
            ],
            /*"drawCallback": function () {
                window.location.href="onoffindex#op/quotation";
                console.log("我点了import确定后回来了")
            },*/
        })
    }

    $('#shipName').change(function () {
        refreshTable(false)
    });

    function refreshTable(toFirst) {
        if (toFirst) {//表格重绘，并跳转到第一页
            quotationTable.draw();
        } else {//表格重绘，保持在当前页
            quotationTable.draw(false);
        }
    }
    function importQuotation(id) {
        swal({
            title: "确认导入Quotation吗？",
            text: "您将EmailQuotation信息导入到Quotation中",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "确认",
            cancelButtonText: "取消",
            closeOnConfirm: false,
            closeOnCancel: true
        },function (isConfirm) {
            if (isConfirm) {
                $.ajax({
                    type:"get",
                    url:"op/emailQuotation/import",
                    data:{
                        id:id
                    },
                    success:function (data) {
                        if (data.status==1){
                            swal("导入成功","已成功导入","success");
                            window.location.href="/onoffindex#op/quotation";
                        }else {
                            swal("导入失败","导入操作失败","error");
                        }
                    }
                })
            }

        });

    }
</script>


