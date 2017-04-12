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
        <li><i class='fa fa-circle'></i><a href="right/subMenu?parentId=${menu.id}" data-target="navTab">子菜单信息</a></li>
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
                                <shiro:hasPermission name="right/addMenu">
                                    <button data-url="right/addMenu?parentId=${menu.id}" data-model="dialog" class="btn btn-outline btn-circle btn-sm green"> 新增
                                        <i class="fa fa-plus"></i>
                                    </button>
                                </shiro:hasPermission>
                                <shiro:hasPermission name="right/batchDeleteMenu">
                                    <button data-url="right/batchDeleteMenu" data-msg="确定批量删除吗？" data-model="ajaxToDo" class="btn btn-outline btn-circle btn-sm green"
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
                        <th>排序</th>
                        <th>描述</th>
                        <th></th>
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
                "url": "right/list",
                "type": "post",
                "data": function (data) {
                    data.menuType = "2";
                    data.parentId = ${menu.id};
                    data.keyword = $("#keyword").val();
                }
            },
            "language": {
                "url": "<%=basePath%>assets/global/plugins/datatables/cn.txt"
            },
            "createdRow": function (row, data, index) {
                $('td:eq(0)', row).html("<input type='checkbox' name='chx_default' value='" + data.id + "'/>");
            },
            "columns": [
                {"data": "id"},
                {"data": "menuName"},
                {"data": "menuUrl"},
                {"data": "menuOrder"},
                {"data": "description"},
            ],
            "columnDefs": [{
                "targets": 5,
                "render": function (data, type, row) {
                    return ""
                            <shiro:hasPermission name="right/editMenu">
                            + '<a href="right/editMenu?id=' + row.id + '" class="btn btn-outline btn-circle btn-sm green" data-model="dialog"><i class="fa fa-pencil"></i>编辑</a>'
                            </shiro:hasPermission>
                            <shiro:hasPermission name="right/deleteMenu">
                            + '<a href="right/deleteMenu?id=' + row.id + '"  class="btn btn-outline btn-circle btn-sm green" data-msg="将删除该菜单下的所有权限，确定删除吗？" data-model="ajaxToDo" data-callback="refreshTable"><i class="fa fa-trash-o"></i>删除</a>'
                            </shiro:hasPermission>
                            <shiro:hasPermission name="right/button">
                            + '<a href="right/button?id=' + row.id + '" class="btn btn-outline btn-circle btn-sm green" data-target="navTab">查看权限</a>'
                            </shiro:hasPermission>;
                }
            }],
            "drawCallback": function (settings) {
                drawICheck('defaultCheck', 'chx_default');
            },
            "initComplete": function () {
                initSearchForm(null, "搜索子菜单名称和路径");
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