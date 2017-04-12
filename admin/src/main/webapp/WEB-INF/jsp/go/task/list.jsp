<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<style>
    .modal-dialog {
        position: relative;
        width: 65%;
        margin: auto;
    }

    table th, td {
        text-align: center;
    }
</style>
<go:navigater path="task"></go:navigater>
<div class="row">
    <div class="col-md-12">
        <div class="portlet light bordered">
            <div class="portlet-body">
                <div class="table-toolbar">
                    <div class="row">
                        <div class="col-md-6">
                            维修工程单汇报
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-bordered table-hover table-checkable order-column"
                       id="default_table">
                    <thead>
                    <tr>
                        <th>船舶名称</th>
                        <th>维修单号</th>
                        <th>维修状态</th>
                        <th>维修船厂</th>
                        <th>最后报告日期</th>
                        <th>汇报邮箱</th>
                        <th>查看每日汇报</th>
                        <th>工程汇报</th>
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
                "url": "task/list",
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
                    "data": "shipName",
                },
                {
                    "data": "status",
                    "render": function (data) {
                        if (data == 0) {
                            return "已完成";
                        } else if (data == 1) {
                            return "进行中";
                        } else {
                            return "未开始";
                        }
                    }
                },
                {
                    "data": "shipyard",
                },
                {
                    "data": "latestReport",
                    "render": function (data) {
                        if (data != null) {
                            return '<a href="report/info?id=' + data.id + '"  data-model="dialog">' + data.publishTime + '</a>'
                        }
                        return "暂无报告信息";
                    }
                },
                {
                    "data": "emailList",
                    "render": function (data) {
                        var emails = "";
                        $(data).each(function () {
                            emails += this.email + ",";
                        })
                        if (emails.length > 0) {
                            emails = emails.substring(0, emails.length - 1);
                        }
                        return emails;
                    }
                },
                {
                    "data": "id",
                    "render": function (data) {
                        return "<a href='task/info?id=" + data + "' data-target='navTab'>进入汇报</a>";
                    }
                },
                {
                    "data": "id",
                    "render": function (data) {
                        return "<a href='report?taskId=" + data + "' class='btn btn-sm blue' data-target='navTab'>查看</a>" +
                                "<a href='task/delete?id=" + data + "' data-msg='定删除吗？'  data-model='ajaxToDo' data-callback='refreshTable' class='btn btn-sm margin-bottom-5 red'>删除</a>";
                    }
                },

            ],

            "drawCallback": function (settings) {
                drawICheck('defaultCheck', 'chx_default');
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
