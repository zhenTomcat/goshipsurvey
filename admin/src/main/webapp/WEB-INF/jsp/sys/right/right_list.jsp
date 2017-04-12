<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<go:navigater path="right"></go:navigater>

<div class="row">
    <div class="col-md-12">
        <div class="portlet light bordered">
            <div class="portlet-body">
                <div class="table-toolbar">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="btn-group">
                                <shiro:hasPermission name="right/addMenu">
                                    <button data-url="right/addMenu" data-model="dialog" class="btn btn-outline btn-circle btn-sm green"> 新增
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
                        <th><fmt:message key="right_table_head_title"></fmt:message></th>
                        <th><fmt:message key="right_table_head_path"></fmt:message></th>
                        <th><fmt:message key="right_table_head_sort"></fmt:message></th>
                        <th><fmt:message key="right_table_head_des"></fmt:message></th>
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
                    data.menuType = "1";
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
                            + '<a href="right/editMenu?id=' + row.id + '" class="btn btn-outline btn-circle btn-sm green" data-model="dialog"><i class="fa fa-edit"></i><fmt:message key="edit"></fmt:message></a>'
                            </shiro:hasPermission>
                            <shiro:hasPermission name="right/deleteMenu">
                            + '<a href="right/deleteMenu?id=' + row.id + '" data-msg="将删除该菜单下的所有子菜单和权限，确定删除吗？" data-model="ajaxToDo" data-callback="refreshTable" class="btn btn-outline btn-circle btn-sm green"><i class="fa fa-trash-o"></i><fmt:message key="delete"></fmt:message></a>'
                            </shiro:hasPermission>
                            <shiro:hasPermission name="right/subMenu">
                            + '<a href="right/subMenu?parentId=' + row.id + '" class="btn btn-outline btn-circle btn-sm green" data-target="navTab"><i class="fa fa-search"></i>查看子菜单</a>'
                            </shiro:hasPermission>;
                }
            }],
            "drawCallback": function (settings) {
                drawICheck('defaultCheck', 'chx_default');
            },
            "initComplete": function () {
                initSearchForm(null, "搜索菜单名称和路径");
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