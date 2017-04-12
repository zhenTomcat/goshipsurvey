<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<style>
    table th,td {
        text-align: center;
    }
</style>
<go:navigater path="repairProg"></go:navigater>
<div class="row">
    <div class="col-md-12">
        <div class="portlet light bordered">
            <div class="portlet-body">
                <div class="table-toolbar">
                    <div class="row">
                        <div class="col-md-6">
                            维修工程管理
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-bordered table-hover table-checkable order-column"
                       id="default_table">
                    <thead>
                    <tr>
                        <th>船舶名称</th>
                        <th>维修单号</th>
                        <th>维修类别</th>
                        <th>船厂</th>
                        <th>计划进厂日期</th>
                        <th>计划天数</th>
                        <th>计划金额</th>
                        <th>创建日期</th>
                        <th>创建人</th>
                        <th>工程总进度</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    var defTable;
    $(document).ready(function () {
        defTable = $('#default_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            "ajax": {
                "url": "repairProg/list",
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
                    "data": "orderNo",
                },
                {
                    "data": "type",
                },
                {
                    "data": "shipyardName",
                },
                {
                    "data": "planStartDate", "type": "date",
                    "render": function (data) {
                        var date = new Date(data);
                        return date.Format("yyyy-MM-dd");
                    }
                },
                {
                    "data": "planDays",
                },
                {
                    "data": "planCost",
                },
                {
                    "data": "createDate", "type": "date",
                    "render": function (data) {
                        var date = new Date(data);
                        return date.Format("yyyy-MM-dd");
                    }
                },
                {
                    "data": "createBy",
                },
                {
                    "data": "per",
                    "render": function (data) {
                        if (data == null) {
                            data = 100;
                        }
                        return '<input type="text" value="' + data + '" class="prog"/>';
                    }
                },
            ],

            "columnDefs": [{
                "targets": 10,
                "render": function (data, type, row) {
                    return ""
                            <shiro:hasPermission name="repairProg/info">
                            + '<a href="repairProg/info?id=' + row.id + '" class="btn btn-sm grey-mint" data-target="navTab"></i>查看进度</a>'
                            </shiro:hasPermission>
                            ;
                }
            }],

            "drawCallback": function (settings) {
                drawICheck('defaultCheck', 'chx_default');
                $(".prog").each(function () {
                    var percent = $(this).val();
                    $(this).ionRangeSlider({
                        min: 0,
                        max: 100,
                        from: percent,
                        from_fixed: true,
                    });
                })
            },
            "initComplete": function () {
                initSearchForm(null, "请输入船舶名称");
            }
        });

        $('#myInput').on('keyup', function () {
            defTable.search(this.value).draw();
        });
    });


    function refreshTable(toFirst) {
        //defaultTable.ajax.reload();
        if (toFirst) {//表格重绘，并跳转到第一页
            defTable.draw();
        } else {//表格重绘，保持在当前页
            defTable.draw(false);
        }
    }

</script>