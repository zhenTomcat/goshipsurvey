<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<style>
    .red {
        color: red;
    }

    .portlet.box > .portlet-title > .tools > a.collapse {
        background-image: url(<%=basePath%>assets/global/img/portlet-collapse-icon.png);
    }

    .details-control {
        cursor: pointer;
    }

    .table-striped > tbody > tr.details-control-child:nth-of-type(odd) {
        background-color: white;
    }

    .table-striped > tbody > tr.details-control-child:nth-of-type(even) {
        background-color: #fbfcfd;
    }

    .table-checkable tr.details-control-child > td:first-child {
        text-align: right;
        padding-right: 15px;
    }

    .table-striped > tbody > tr.details-control-child.detail-row:nth-of-type(odd) {
        background-color: white;
    }

    .table-striped > tbody > tr.details-control-child.detail-row:nth-of-type(even) {
        background-color: white;
    }

    .table-striped > tbody > tr.details-control-child:nth-of-type(odd) {
        background-color: #d2f7ff;
    }

    .table-striped > tbody > tr.details-control-child:nth-of-type(even) {
        background-color: #d2f7ff;
    }

    .table-striped > tbody > tr:nth-of-type(odd) {
        background-color: #bfe3ff;
    }

    .table-striped > tbody > tr:nth-of-type(even) {
        background-color: #bfe3ff;
    }

    .remark-text {
        position: fixed;
        resize: none;
        left: 40%;
        top: 40%;
        z-index: 100;
    }

</style>
<go:navigater path="repairSpec"></go:navigater>
<form class="form-horizontal" action="repairSpec/edit" method="post"
      id="defForm" callfn="refreshTable">
    <input type="hidden" name="modelId" value="${repairSpec.modelId}">
    <input type="hidden" name="id" value="${repairSpec.id}">
    <input type="hidden" name="delFlag" value="${repairSpec.delFlag}">
    <input type="hidden" name="companyId" value="${repairSpec.companyId}">
    <div class="profile-content">
        <div class="row">
            <div class="col-md-12">
                <div class="portlet light bordered">
                    <div class="portlet-title tabbable-line">
                        <div id="bootstrap_alerts_demo"></div>
                        <div class="caption caption-md">
                            <i class="fa fa-user"></i>
                            <span class="caption-subject font-blue-madison bold uppercase"> 编辑维修工程单</span>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="portlet box blue-dark" id="item0">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="fa fa-info"></i>工程单概要
                                </div>
                                <div class="tools">
                                    <a href="javascript:;" class="collapse"> </a>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label class="col-sm-3 control-label">
                                            船舶名称</label>
                                        <div class="col-sm-7">
                                            <input type="hidden" name="shipId" value="${repairSpec.shipId}">
                                            <input name="shipName" id="shipName" class="form-control" readonly
                                                   value="${repairSpec.shipName}" placeholder="无船舶名称信息">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="planStartDate" class="col-sm-3 control-label">计划进场日期</label>
                                        <div class="col-sm-7">
                                            <div class="input-group">
                                                <input id="planStartDate" name="planStartDate" type="text"
                                                       class="form-control" readonly
                                                       value="<fmt:formatDate value='${repairSpec.planStartDate}' pattern="yyyy-MM-dd"/>"
                                                       placeholder="无进厂日期信息">
                                                <span class="input-group-addon">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label for="planDays" class="col-sm-3 control-label">
                                            预估天数</label>
                                        <div class="col-sm-7">
                                            <input id="planDays" name="planDays" type="text" ${repairSpec.planDays}
                                                   class="form-control required" placeholder="无预估维修天数信息">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="planCost" class="col-sm-3 control-label">
                                            预估金额</label>
                                        <div class="col-sm-7">
                                            <input id="planCost" name="planCost" type="text" ${repairSpec.planCost}
                                                   class="form-control required" placeholder="无预估维修金额信息">
                                        </div>
                                        <label class="col-sm-2 control-label"
                                               style="padding-left: 5px;padding-right: 5px">
                                            (单位:万元)</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label class="col-sm-3 control-label">
                                            维修类型</label>
                                        <div class="col-sm-7">
                                            <input value="${repairSpec.type}" class="form-control"
                                                   placeholder="无预估维修类型信息">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="portlet box blue-dark">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="fa fa-cog"></i>维修工程详细
                                </div>
                                <div class="tools">
                                    <a href="javascript:;" class="collapse"> </a>
                                </div>
                            </div>
                            <div class="portlet-body" id="content">
                                <c:forEach begin="1" end="8" varStatus="outerVs">
                                    <div class="portlet box blue-dark item" id="item${outerVs.count}">
                                        <div class="portlet-title" style="background-color: #00aaaa">
                                            <div class="caption">
                                                <i class="fa fa-cog"></i>
                                                <c:if test="${outerVs.count==1}">通用服务</c:if>
                                                <c:if test="${outerVs.count==2}">坞修工程</c:if>
                                                <c:if test="${outerVs.count==3}">船体工程</c:if>
                                                <c:if test="${outerVs.count==4}">机械工程</c:if>
                                                <c:if test="${outerVs.count==5}">电气工程</c:if>
                                                <c:if test="${outerVs.count==6}">冷藏工程</c:if>
                                                <c:if test="${outerVs.count==7}">特种设备</c:if>
                                                <c:if test="${outerVs.count==8}">其他</c:if>
                                            </div>
                                            <div class="tools">
                                                <a href="javascript:;" class="collapse"> </a>
                                            </div>
                                        </div>
                                        <div class="portlet-body">
                                            <c:set var="type" value="type${outerVs.count}"></c:set>
                                            <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                                   id="table${outerVs.count}"
                                                   data-totalRow="${fn:length(requestScope[type])}">
                                                    <%--通用服务开始--%>
                                                <c:if test="${outerVs.count==1}">
                                                    <thead>
                                                    <tr>
                                                        <th style="width:10%">项目号</th>
                                                        <th style="width:45%">维修内容</th>
                                                        <th style="width:10%">单位</th>
                                                        <th style="width:10%">数量</th>
                                                        <th style="width:10%">备注</th>
                                                        <th style="width:10%">操作</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${requestScope[type]}" var="item"
                                                               varStatus="itemVs">
                                                        <c:if test="${item.parentCode!='0'}">
                                                            <tr class="details-control-child" data-parent="${item.parentCode}" data-code="${item.code}">
                                                        </c:if>
                                                        <c:if test="${item.parentCode=='0'}">
                                                            <tr class="top-row" data-parent="${item.parentCode}" data-code="${item.code}">
                                                        </c:if>
                                                        <td>
                                                                ${item.code}
                                                        </td>
                                                        <td>
                                                                ${item.content}
                                                            <input type="hidden" value="${item.content}"
                                                                   name="type${outerVs.count}List[${itemVs.index}].content">
                                                            <c:forEach items="${item.paramList}" var="p"
                                                                       varStatus="vs">
                                                                <c:if test="${(!(vs.count==1))||((vs.count==1)&&(!empty item.content))}">
                                                                    <br>
                                                                </c:if>
                                                                ${p.name}
                                                                <c:if test="${p.type=='text'}">
                                                                    <c:set var="value"
                                                                           value="param${vs.count}Val"></c:set>
                                                                    <input name="type${outerVs.count}List[${itemVs.index}].param${vs.count}Val"
                                                                           class="input-control" value="${item[value]}">
                                                                </c:if>
                                                                <c:if test="${p.type=='select'}">
                                                                    <select name="type${outerVs.count}List[${itemVs.index}].param${vs.count}Val">
                                                                        <c:forEach
                                                                                items="${p.paramValueVariableList}"
                                                                                var="val">
                                                                            <option value="${val.paramValVariable}">${val.paramValVariable}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </c:if>
                                                                ${p.unit}
                                                            </c:forEach>
                                                        </td>
                                                        <td>${item.unit}</td>
                                                        <td><c:if test="${!empty item.unit}"><input
                                                                class="col-md-12 input-control" value="${item.count}"
                                                                name="type${outerVs.count}List[${itemVs.index}].count"></c:if>
                                                        </td>
                                                        <td><c:if test="${item.parentCode=='0'}">
                                                            <a class="add-remark" data-toggle="modal"
                                                               onclick="addRemark(this)" onmouseover="showRemark(this)"
                                                               onmouseout="showRemark(this)"
                                                               href="#responsive">显示备注 </a>
                                                            <textarea class="remark-text"
                                                                      name="type${outerVs.count}List[${itemVs.index}].remark"
                                                                      cols="60"
                                                                      rows="10"
                                                                      wrap="hard" placeholder="暂未添加备注"
                                                                      value="${item.remark}"
                                                                      style="display: none"></textarea></c:if>
                                                        </td>
                                                        <c:if test="${item.children==1}">
                                                            <td class="details-control" data-code="${item.code}">
                                                                <a href="javascript:;"
                                                                   onclick="controlHidden(false,'${item.code}',this)"
                                                                   class="btn btn-circle blue m-icon m-icon-only open-png"
                                                                   style="display: none">
                                                                    <i class="m-icon-swapdown m-icon-white"></i>
                                                                </a>
                                                                <a href="javascript:;"
                                                                   onclick="controlHidden(true,'${item.code}',this)"
                                                                   class="btn btn-circle blue m-icon m-icon-only close-png"
                                                                >
                                                                    <i class="m-icon-swapup m-icon-white"></i>
                                                                </a>
                                                            </td>
                                                        </c:if>
                                                        <c:if test="${item.children==0}">
                                                            <td>
                                                            </td>
                                                        </c:if>
                                                        </tr>
                                                    </c:forEach>
                                                    <c:if test="${(fn:length(requestScope[type]))==0}">
                                                        <tr>
                                                            <td colspan="7" style="text-align: center">无维修项目</td>
                                                        </tr>
                                                    </c:if>
                                                    </tbody>
                                                </c:if>
                                                    <%--通用服务结束--%>
                                                    <%--除通用服务外开始--%>
                                                <c:if test="${outerVs.count!=1}">
                                                    <tbody>
                                                    <thead>
                                                    <tr>
                                                        <th style="width:10%">工程单号</th>
                                                        <th style="width:15%">工程单名</th>
                                                        <th style="width:65%">工程描述</th>
                                                        <th style="width:10%">操作</th>
                                                    </tr>
                                                    </thead>
                                                    <c:forEach items="${requestScope[type]}" var="detail">
                                                        <tr>
                                                            <td>${detail.proOrderNo}</td>
                                                            <td class="proName">${detail.proName}</td>
                                                            <td class="proDesc">${detail.proDesc}</td>
                                                            <td>
                                                                <a href="repairSpecDetail/editSpecDetail?id=${detail.id}"
                                                                   data-model="dialog" class="look-info">查看详细</a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                    <c:if test="${(fn:length(requestScope[type]))==0}">
                                                        <tr>
                                                            <td colspan="6" style="text-align: center">无维修详单</td>
                                                        </tr>
                                                    </c:if>
                                                    </tbody>
                                                </c:if>
                                                    <%--除通用服务外结束--%>
                                            </table>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="modal-footer" style="text-align: center" id="item9">
                            <a href="repairSpec" class="btn default" data-target="navTab">返回</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

<jsp:include page="common.jsp"></jsp:include>
<script>
    $("input").prop("readonly", true);
    $(".look-info").on("click", function () {
        $(".marked-detail-name").removeClass("marked-detail-name");
        $(".marked-detail-desc").removeClass("marked-detail-desc");
        var tr = $(this).parents("tr");
        tr.find(".proName").addClass("marked-detail-name");
        tr.find(".proDesc").addClass("marked-detail-desc");
    })
</script>

