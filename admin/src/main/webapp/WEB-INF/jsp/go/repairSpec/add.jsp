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

    <%--.portlet.box > .portlet-title > .tools > a.collapse {--%>
    <%--background-image: url(<%=basePath%>assets/global/img/portlet-collapse-icon.png);--%>
    <%--}--%>

    .details-control {
        cursor: pointer;
    }

    .table-striped > tbody > tr.details-control-child:nth-of-type(odd) {
        background-color: white;
    }

    .table-striped > tbody > tr.details-control-child:nth-of-type(even) {
        background-color: #fbfcfd;
    }

    .table > tbody > tr > td.for-right {
        padding-left: 15px;
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

    table th {
        text-align: center;
    }

</style>
<go:navigater path="repairSpec"></go:navigater>
<form class="form-horizontal" action="repairSpec/add" method="post"
      id="defForm" callfn="refreshTable">
    <input type="hidden" name="modelId" value="${modelId}">
    <input type="hidden" name="companyId" value="${companyId}">
    <input type="hidden" name="companyName" value="${companyName}">
    <div class="profile-content">
        <div class="row">
            <div class="col-md-12">
                <div class="portlet light bordered">
                    <div class="portlet-title tabbable-line">
                        <div id="bootstrap_alerts_demo"></div>
                        <div class="caption caption-md">
                            <i class="fa fa-user"></i>
                            <span class="caption-subject font-blue-madison bold uppercase"> 新增维修工程单</span>
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
                                        <label for="shipId" class="col-sm-3 control-label">
                                            船舶名称</label>
                                        <div class="col-sm-7">
                                            <select id="shipId" name="shipId" class="form-control select2">
                                                <option value="0">请输入船舶名称或IMO号</option>
                                                <c:forEach items="${shipList}" var="ship">
                                                    <option value="${ship.id}" data-name="${ship.name}">${ship.name}
                                                        imo:${ship.imo}</option>
                                                </c:forEach>
                                            </select>
                                            <input type="hidden" name="shipName" id="shipName" value="">
                                        </div>
                                        <label class="col-sm-1 control-label"><span class="red">* </span></label>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="planStartDate" class="col-sm-3 control-label">计划进场日期</label>
                                        <div class="col-sm-7">
                                            <div class="input-group">
                                                <input id="planStartDate" name="planStartDate" type="text"
                                                       class="form-control date-picker" readonly
                                                       placeholder="请选择进厂日期">
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
                                            <input id="planDays" name="planDays" type="text"
                                                   class="form-control required" placeholder="请输入预估维修天数">
                                        </div>
                                    </div>
                                    <%-- <div class="form-group col-md-6">
                                         <label for="planCost" class="col-sm-3 control-label">
                                             预估金额</label>
                                         <div class="col-sm-7">
                                             <input id="planCost" name="planCost" type="text"
                                                    class="form-control required" placeholder="请输入预估维修金额">
                                         </div>
                                         <label class="col-sm-2 control-label"
                                                style="padding-left: 5px;padding-right: 5px">
                                             (单位:万元)</label>
                                     </div>--%>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label class="col-sm-3 control-label">
                                            维修类型</label>
                                        <div class="col-sm-9 icheck-inline">
                                            <c:forEach items="${typeList}" var="type" varStatus="vs">
                                                <label>
                                                    <input type="radio" name="type"
                                                           value="${type.value}"
                                                           <c:if test="${vs.count==1}">checked</c:if>> ${type.des}
                                                    <span></span>
                                                </label>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--<div class="portlet box blue-dark">--%>
                        <%--<div class="portlet-title">--%>
                        <%--<div class="caption">--%>
                        <%--<i class="fa fa-cog"></i>维修工程详细--%>
                        <%--</div>--%>
                        <%--<div class="tools">--%>
                        <%--<a href="javascript:;" class="collapse"> </a>--%>
                        <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="portlet-body" id="content">--%>
                        <%--<c:forEach begin="1" end="8" varStatus="outerVs">--%>
                        <%--<div class="portlet box blue-dark item" id="item${outerVs.count}">--%>
                        <%--<div class="portlet-title" style="background-color: #00aaaa">--%>
                        <%--<div class="caption">--%>
                        <%--<i class="fa fa-cog"></i>--%>
                        <%--${cataList[outerVs.count-1].des}--%>
                        <%--</div>--%>
                        <%--<div class="tools">--%>
                        <%--<a href="javascript:;" class="expand"> </a>--%>
                        <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="portlet-body" style="display: none">--%>
                        <%--<c:set var="type" value="type${outerVs.count}"></c:set>--%>
                        <%--<table class="table table-striped table-bordered table-hover table-checkable order-column"--%>
                        <%--id="table${outerVs.count}"--%>
                        <%--data-totalRow="${fn:length(requestScope[type])}">--%>
                        <%--&lt;%&ndash;通用服务开始&ndash;%&gt;--%>
                        <%--<c:if test="${outerVs.count==1}">--%>
                        <%--<thead>--%>
                        <%--<tr>--%>
                        <%--<th style="width:5%">&nbsp;</th>--%>
                        <%--<th style="width:10%">项目号</th>--%>
                        <%--<th style="width:45%">维修内容</th>--%>
                        <%--<th style="width:10%">单位</th>--%>
                        <%--<th style="width:10%">数量</th>--%>
                        <%--<th style="width:10%">备注</th>--%>
                        <%--<th style="width:10%">操作</th>--%>
                        <%--</tr>--%>
                        <%--</thead>--%>
                        <%--<tbody>--%>
                        <%--</tbody>--%>
                        <%--</c:if>--%>
                        <%--&lt;%&ndash;通用服务结束&ndash;%&gt;--%>
                        <%--&lt;%&ndash;除通用服务外开始&ndash;%&gt;--%>
                        <%--<c:if test="${outerVs.count!=1}">--%>
                        <%--<thead>--%>
                        <%--<tr>--%>
                        <%--<th style="width:5%">&nbsp;</th>--%>
                        <%--<th style="width:10%">项目号</th>--%>
                        <%--<th style="width:40%">维修内容</th>--%>
                        <%--<th style="width:25%">维修详单</th>--%>
                        <%--<th style="width:10%">备注</th>--%>
                        <%--<th style="width:10%">操作</th>--%>
                        <%--</tr>--%>
                        <%--</thead>--%>
                        <%--<tbody>--%>
                        <%--</tbody>--%>
                        <%--</c:if>--%>
                        <%--&lt;%&ndash;除通用服务外结束&ndash;%&gt;--%>
                        <%--</table>--%>
                        <%--</div>--%>
                        <%--</div>--%>
                        <%--</c:forEach>--%>
                        <%--</div>--%>
                        <%--</div>--%>
                        <div class="modal-footer" style="text-align: center" id="item9">
                            <shiro:hasPermission name="repairSpec/add">
                                <a id="submitButton" type="button" onclick="severCheck()"
                                   class="btn btn-primary mt-ladda-btn ladda-button" data-style="slide-down">
                                    <span class="ladda-label">提交</span>
                                </a>
                            </shiro:hasPermission>
                            <a class="btn blue" data-toggle="modal" href="#small">清空</a>
                            <a href="repairSpec" class="btn default" data-target="navTab">取消</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade bs-modal-sm" id="small" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title">确认清空?</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn dark btn-outline cancel" data-dismiss="modal">取消</button>
                    <button type="reset" onclick="closeModal()" class="btn green">确定</button>
                </div>
            </div>
        </div>
    </div>
</form>


<%--用于工程单号--%>
<input type="hidden" id="type1proOrderNo" value=1>
<input type="hidden" id="type2proOrderNo" value=1>
<input type="hidden" id="type3proOrderNo" value=1>
<input type="hidden" id="type4proOrderNo" value=1>
<input type="hidden" id="type5proOrderNo" value=1>
<input type="hidden" id="type6proOrderNo" value=1>
<input type="hidden" id="type7proOrderNo" value=1>
<input type="hidden" id="type8proOrderNo" value=1>

<%--<jsp:include page="common.jsp"></jsp:include>--%>

<a style="display:none" id="go-to-edit" href="repairSpec/edit?id=8" class="btn btn-sm margin-bottom-5"
   data-target="navTab"><span
        class="ladda-label">编辑</span></a>
<script>
    function closeModal() {
        $("#small .cancel").click();
    }

    <%--初始化通用服务item--%>
    //    $(function () {
    //        $.ajax({
    //            type: "GET",
    //            url: 'repairSpec/getModelItem',
    //            data: {
    //                catagory: "通用服务",
    //            },
    //            success: function (data) {
    //                var tbody = $("#item1").find("tbody");
    //                var table = tbody.parents("table");
    //                table.attr("data-totalRow", data.length);
    //                var count = 0;
    //                $(data).each(function () {
    //                    var a = eval(this);
    //                    var namePre = "type1List[" + count + "].";
    //                    var tr = $("#genTmp").clone().removeAttr("id");
    //                    tr.attr("data-parent", a.parentCode).attr("data-code", a.code);
    //                    if (a.parentCode == 0) {
    //                        tr.addClass("top-row");
    //                    } else {
    //                        tr.addClass("details-control-child");
    //                    }
    //                    tr.find(".code-td").html(a.code);
    //                    if (a.content != "addrow") {
    //                        var contentHtml = "<input  value='" + a.content + "' type='hidden' name='" + namePre + "content'>";
    //                        contentHtml += a.content;
    //                        var paramList = a.paramList;
    //                        if (paramList != null && paramList.length > 0) {
    //                            for (var m = 0; m < paramList.length; m++) {
    //                                if ((m == 0 && a.content != "") || m != 0) {
    //                                    contentHtml += "<br>";
    //                                }
    //                                var p = eval(paramList[m]);
    //                                var pCount = m + 1;
    //                                var str = "param" + pCount + "Val";
    //                                contentHtml += p.name;
    //                                if (p.type == "text") {
    //                                    contentHtml += "<input onchange='inputControl(this)' name='" + namePre + str + "' class='input-control'>";
    //                                } else if (p.type == "select") {
    //                                    contentHtml += "<select name='" + namePre + str + "'>";
    //                                    $(p.paramValueVariableList).each(function () {
    //                                        var val = eval(this);
    //                                        contentHtml += "<option value = '" + val.paramValVariable + "'>" + val.paramValVariable + "</option>";
    //                                    })
    //                                    contentHtml += "</select>";
    //                                }
    //                                contentHtml += p.unit;
    //                            }
    //                        }
    //                        tr.find(".content-td").html(contentHtml);
    //                    } else {
    //                        var contentHtml = "<input onchange='inputControl(this)' class='input-control' value='" + a.content + "' type='hidden' name='" + namePre + "content'>";
    //                        contentHtml += "<button onclick='addRow(this)'  type='button' data-current='" + count + "' class='btn btn-sm blue'>新增</button> ";
    //                        tr.find(".content-td").html(contentHtml);
    //                    }
    //
    //                    if (a.unit != null && a.unit != "") {
    //                        tr.find(".unit-td").html(a.unit + "<input value='" + a.unit + "' type='hidden' class='col-md-12 input-control' onchange='inputControl(this)' name='" + namePre + "unit'>");
    //                        tr.find(".count-td").html("<input class='col-md-12 input-control' onchange='inputControl(this)' name='" + namePre + "count'>");
    //                    }
    //                    if (a.content == "addrow") {
    //                        tr.find(".unit-td").html("<input style='display:none' class='col-md-12 input-control' onchange='inputControl(this)' name='" + namePre + "unit'>");
    //                        tr.find(".count-td").html("<input style='display:none' class='col-md-12 input-control' onchange='inputControl(this)' name='" + namePre + "count'>");
    //                    }
    //                    if (a.parentCode == 0) {
    //                        tr.find(".remark-td").html(" <a class='add-remark' data-toggle='modal' onclick='addRemark(this)' onmouseover='showRemark(this)'onmouseout='showRemark(this)'href='#responsive'>添加备注</a> <textarea class='remark-text' name='" + namePre + "remark' cols='60' rows='10' wrap='hard' placeholder='暂未添加备注' style='display: none'></textarea>")
    //                    }
    //                    if (a.children != 0) {
    //                        var td = tr.find(".show-td");
    //                        td.addClass("details-control").attr("data-code", a.code);
    //                        td.html("<a href='javascript:;' onclick='controlHidden(false,\"" + a.code + "\",this)' class='btn btn-circle blue m-icon m-icon-only open-png' style='display: none'><i class='m-icon-swapdown m-icon-white'></i></a>" +
    //                                "<a href='javascript:;' onclick='controlHidden(true,\"" + a.code + "\",this)' class='btn btn-circle blue m-icon m-icon-only close-png' > <i class='m-icon-swapup m-icon-white'></i></a>");
    //                    }
    //                    tr.find(".true-status").val(1).prop("name", namePre + "status");
    //                    tr.find(".item-cata").val(a.catagory).prop("name", namePre + "catagory");
    //                    tr.find(".item-code").val(a.code).prop("name", namePre + "code");
    //                    tr.find(".item-parent").val(a.parentCode).prop("name", namePre + "parentCode");
    //                    tr.find(".item-children").val(a.children).prop("name", namePre + "children");
    //                    tr.find(".item-sort").val(a.sort).prop("name", namePre + "sort");
    //                    tr.find(".item-src").val(a.src).prop("name", namePre + "src");
    //                    tbody.append(tr);
    //                    count++;
    //                })
    //
    //            },
    //        })
    //    })

    <%--初始化除通用服务外其他item--%>
    //    $(function () {
    //        var catagory = ["", "坞修工程", "船体工程", "机械工程", "电气工程", "冷藏工程", "特种设备", "其他"];
    //        for (var n = 1; n < catagory.length; n++) {
    //            getItem(catagory[n], n)
    //        }
    //    })

    //    function getItem(catagory, num) {
    //        $.ajax({
    //            type: "GET",
    //            url: 'repairSpec/getModelItem',
    //            data: {
    //                catagory: catagory,
    //            },
    //            success: function (data) {
    //                var tbody = $("#item" + (num * 1 + 1)).find("tbody");
    //                var table = tbody.parents("table");
    //                table.attr("data-totalRow", data.length);
    //                var count = 0;
    //                $(data).each(function () {
    //                    var a = eval(this);
    //                    var namePre = "type" + (num * 1 + 1) + "List[" + count + "].";
    //                    var tr = $("#otherTmp").clone().removeAttr("id");
    //                    tr.attr("data-parent", a.parentCode).attr("data-code", a.code);
    //                    if (a.parentCode == 0) {
    //                        tr.addClass("top-row");
    //                    } else {
    //                        tr.addClass("details-control-child").css("display", "none");
    //                    }
    //                    tr.find(".code-td").html(a.code);
    //                    if (a.content != "addrow") {
    //                        var contentHtml = "<input  value='" + a.content + "' type='hidden' name='" + namePre + "content'>";
    //                        contentHtml += a.content;
    //                        var paramList = a.paramList;
    //                        if (paramList != null && paramList.length > 0) {
    //                            for (var m = 0; m < paramList.length; m++) {
    //                                if ((m == 0 && a.content != "") || m != 0) {
    //                                    contentHtml += "<br>";
    //                                }
    //                                var p = eval(paramList[m]);
    //                                var pCount = m + 1;
    //                                var str = "param" + pCount + "Val";
    //                                contentHtml += p.name;
    //                                if (p.type == "text") {
    //                                    contentHtml += "<input onchange='inputControl(this)' name='" + namePre + str + "' class='input-control'>";
    //                                } else if (p.type == "select") {
    //                                    contentHtml += "<select name='" + namePre + str + "'>";
    //                                    $(p.paramValueVariableList).each(function () {
    //                                        var val = eval(this);
    //                                        contentHtml += "<option value = '" + val.paramValVariable + "'>" + val.paramValVariable + "</option>";
    //                                    })
    //                                    contentHtml += "</select>";
    //                                }
    //                                contentHtml += p.unit;
    //                            }
    //                        }
    //                        tr.find(".content-td").html(contentHtml);
    //                    } else {
    //                        var contentHtml = "<input  class='input-control' onchange='inputControl(this)'  value='" + a.content + "' type='hidden' name='" + namePre + "content'>";
    //                        contentHtml += "<button onclick='addRow(this)'  type='button' data-current='" + count + "' class='btn btn-sm blue'>新增 </button>"
    //                        tr.find(".content-td").html(contentHtml);
    //                    }
    //
    ////                    tr.find(".unit-td").html(a.unit);
    ////                    if (a.unit != "") {
    ////                        tr.find(".count-td").html("<input class='col-md-12 input-control' onchange='inputControl(this)' name='" + namePre + "count'>");
    ////                    }
    //                    if (a.parentCode == 0) {
    //                        tr.find(".remark-td").html(" <a class='add-remark' data-toggle='modal' onclick='addRemark(this)' onmouseover='showRemark(this)'onmouseout='showRemark(this)'href='#responsive'>添加备注</a> <textarea class='remark-text' name='" + namePre + "remark' cols='60' rows='10' wrap='hard' placeholder='暂未添加备注' style='display: none'></textarea>")
    //                    }
    //                    if (!(a.parentCode == 0 || a.content == "addrow")) {
    //                        tr.find(".model-detail-select").attr("data-code", a.code).attr("data-catagory", a.catagory).toggle();
    //                    }
    //                    if (a.children != 0) {
    //                        var td = tr.find(".show-td");
    //                        td.addClass("details-control").attr("data-code", a.code);
    //                        td.html("<a href='javascript:;' onclick='controlHidden(false,\"" + a.code + "\",this)' class='btn btn-circle blue m-icon m-icon-only open-png'><i class='m-icon-swapdown m-icon-white'></i></a>" +
    //                                "<a href='javascript:;' onclick='controlHidden(true,\"" + a.code + "\",this)' class='btn btn-circle blue m-icon m-icon-only close-png' style='display: none'> <i class='m-icon-swapup m-icon-white'></i></a>");
    //                    }
    //                    tr.find(".true-status").val(1).prop("name", namePre + "status");
    //                    tr.find(".item-cata").val(a.catagory).prop("name", namePre + "catagory");
    //                    tr.find(".item-code").val(a.code).prop("name", namePre + "code");
    //                    tr.find(".item-unit").val(a.unit).prop("name", namePre + "unit");
    //                    tr.find(".item-parent").val(a.parentCode).prop("name", namePre + "parentCode");
    //                    tr.find(".item-children").val(a.children).prop("name", namePre + "children");
    //                    tr.find(".item-sort").val(a.sort).prop("name", namePre + "sort");
    //                    tr.find(".item-src").val(a.src).prop("name", namePre + "src");
    //                    tbody.append(tr);
    //                    count++;
    //                })
    //            },
    //        })
    //    }


    <%--保存为工程单--%>
    function severCheck() {
        var shipId = $("#shipId").val();
        if (shipId == "0") {
            $("#shipId").tips({
                side: 1,
                msg: "船舶不能为空",
                bg: '#FF5080',
                time: 15
            });
            $("#shipId").focus();
            return;
        }
        $("#submitButton").prop("disabled", true);
        $("#defForm").ajaxSubmit({
            success: function (data) {
                if (data.success) {
                    $("#go-to-edit").prop("href", "repairSpec/edit?id=" + data.specId).click();
                } else {
                    App.alert({
                        container: "#bootstrap_alerts_demo",
                        close: true,
                        icon: 'fa fa-warning',
                        place: "append",
                        message: "failure",
                        type: 'danger',
                        reset: true,
                        focus: true,
                        closeInSeconds: 10,
                    })
                    $("#submitButton").prop("disabled", false);
                }
            },
            error: function () {
                App.alert({
                    container: "#bootstrap_alerts_demo",
                    close: true,
                    icon: 'fa fa-warning',
                    place: "append",
                    message: "error",
                    type: 'warning',
                    reset: true,
                    focus: true,
                    closeInSeconds: 10,
                })
                $("#submitButton").prop("disabled", false);
                return;
            }
        });
    }
    <%--选择船舶后  修改隐藏的 shipName的值--%>
    $("#shipId").on("change", function () {
        $("#shipName").val($(this).find("option:selected").attr("data-name"));
    })

    <%--船只列表的初始化下拉框--%>
    if (App.isAngularJsApp() === false) {
        jQuery(document).ready(function () {
            $.fn.select2.defaults.set("theme", "bootstrap");
            var placeholder = "Select a State";
            $(".select2, .select2-multiple").select2({
                placeholder: placeholder,
                width: null
            });
        });
    }

    $('.date-picker').datepicker({autoclose: true, todayHighlight: true, format: 'yyyy-mm-dd'});

    Ladda.bind('.mt-ladda-btn', {timeout: 60000});
</script>