<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<form class="form-horizontal" action="user/edit" method="post"
      id="defForm" callfn="refreshTable">
    <div class="modal-header">
        <div class='bootstrap-dialog-header'>
            <div class='bootstrap-dialog-close-button'
                 style='display: block;'>
                <button class='close' data-dismiss='modal' aria-label='Close'>×</button>
            </div>
            <div class='bootstrap-dialog-title'>修改用户</div>
        </div>
    </div>
    <div class="modal-body">
        <div class="container-fluid">
            <div class="form-group">
                <input type="hidden" name="id" value="${user.id}"/> <label
                    for="loginName" class="col-sm-2 control-label">用户名</label>
                <div class="col-sm-7">
                    <input id="loginName" value="${user.loginName}" type="text"
                           maxlength="32" class="form-control" readonly="readonly">
                </div>
            </div>
            <div class="form-group">
                <label for="password" class="col-sm-2 control-label">密码</label>
                <div class="col-sm-7">
                    <input id="password" name="password" type="password" maxlength="32"
                           minlength="2" class="form-control" placeholder="请输入密码">
                </div>
            </div>
            <div class="form-group">
                <label for="name" class="col-sm-2 control-label">姓名</label>
                <div class="col-sm-7">
                    <input id="name" name="name" value="${user.name}" type="text"
                           maxlength="32" class="form-control required" placeholder="请输入姓名">
                </div>
            </div>
            <div class="form-group">
                <label for="email" class="col-sm-2 control-label">邮箱</label>
                <div class="col-sm-7">
                    <input id="email" name="email" value="${user.email}" type="text"
                           maxlength="32" class="form-control required" placeholder="请输入邮箱">
                </div>
            </div>
            <div class="form-group">
                <label for="phone" class="col-sm-2 control-label">电话</label>
                <div class="col-sm-7">
                    <input id="phone" name="phone" value="${user.phone}" type="text"
                           maxlength="32" class="form-control required" placeholder="请输入电话">
                </div>
            </div>
            <div class="form-group">
                <label for="description" class="col-sm-2 control-label">描述</label>
                <div class="col-sm-7">
					<textarea id="description" name="description" class="form-control"
                              rows="3">${user.description}</textarea>
                </div>
            </div>
            <shiro:hasPermission name="user/editRole">
            <div class="form-group">
                <label for="description" class="col-sm-2 control-label">角色</label>
                <div class="col-sm-7" style="margin-top:7px;">
                    <c:choose>
                        <c:when test="${user.roles != null && fn:length(user.roles) > 0}">
                            <c:forEach items="${user.roles}" var="role" varStatus="vs">
                                <label class="mt-checkbox mt-checkbox-outline"> ${role.roleName}
                                    <input type="checkbox" name="roleIds" value="${role.id}" ${role.checked ? "checked" : ""}>
                                    <span></span>
                                </label>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td colspan="5">没有相关数据</td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
            </shiro:hasPermission>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <shiro:hasPermission name="user/edit">
            <button type="submit" class="btn btn-primary">保存</button>
        </shiro:hasPermission>
    </div>
</form>
<script type="text/javascript">
    $("#defForm").validate();
</script>