<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="page-bar">
    <ul class="page-breadcrumb">
        <li><a href="./"><i class="icon-home"></i> 主页</a></li>
        <li><i class='fa fa-circle'></i>系统管理</li>
        <li><i class='fa fa-circle'></i><a href="right" data-target="navTab">菜单信息</a></li>
        <li><i class='fa fa-circle'></i><a href="right/subMenu?parentId=${menu.parentId}" data-target="navTab">子菜单信息</a></li>
        <li><i class='fa fa-circle'></i><a href="right/button?id=${menu.id}" data-target="navTab">权限信息</a></li>
    </ul>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="portlet light bordered">
            <div class="portlet-body">
                <div class="table-toolbar">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="btn-group">
                                <shiro:hasPermission name="right/addBtn">
                                    <button data-url="right/addBtn?menuId=${menu.id}" data-model="dialog" class="btn btn-outline btn-circle btn-sm green"> 新增
                                        <i class="fa fa-plus"></i>
                                    </button>
                                </shiro:hasPermission>
                                <shiro:hasPermission name="right/batchDeleteBtn">
                                    <button data-url="right/batchDeleteBtn" data-msg="确定批量删除吗？" data-model="ajaxToDo" class="btn btn-outline btn-circle btn-sm green"
                                            data-checkbox-name="chx_default" data-callback="refreshTable">批量删除
                                        <i class="fa fa-times"></i>
                                    </button>
                                </shiro:hasPermission>
                            </div>
                        </div>
                        <div class="col-md-6">
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-bordered table-hover table-checkable order-column"
                       id="default_table">
                    <thead>
                    <tr>
                        <th width="10px" >
                           <input type='checkbox' id="defaultCheck"/>
                        </th>
                        <th>名称</th>
                        <th>路径</th>
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
            "autoWidth": false,
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": "right/listBtn",
                "type": "post",
                "data": function (data) {
                    data.buttonName = $("#buttonName").val();
                    data.menuId = ${menu.id};
                    data.keyword = $("#keyword").val();
                }
            },
            "language": {
                "url": "http://windyeel.oss-cn-shanghai.aliyuncs.com/global/plugins/datatables/cn.txt"
            },
            "createdRow": function (row, data, index) {
                $('td:eq(0)', row).html("<input type='checkbox' name='chx_default' value='" + data.id + "'/>");
            },
            "columns": [
                {"data": "id"},
                {"data": "buttonName"},
                {"data": "buttonUrl"},
            ],
            "columnDefs": [{
                "targets": 3,
                "render": function (data, type, row) {
                    return ""
                            <shiro:hasPermission name="right/editBtn">
                                +'<a href="right/editBtn?id='+row.id+'" class="btn btn-outline btn-circle btn-sm green" data-model="dialog">编辑<i class="fa fa-edit"></i></a>'
                            </shiro:hasPermission>
                            <shiro:hasPermission name="right/deleteBtn">
                                +'<a href="right/deleteBtn?id=' + row.id + '" data-msg="确定删除吗？"  data-model="ajaxToDo" data-callback="refreshTable" class="btn btn-outline btn-circle btn-sm green">删除<i class="fa fa-trash-o"></i></a>'
                            </shiro:hasPermission>;
                }
            }],
            "drawCallback": function (settings) {
                drawICheck('defaultCheck', 'chx_default');
            },
            "initComplete": function () {
                initSearchForm(null, "搜索权限名称和路径");
            }
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