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

    .table-checkable tr.details-control-child > td:first-child {
        text-align: right;
        padding-right: 15px;
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

    .table > tbody > tr > td.for-right {
        padding-left: 15px;
    }

    table th {
        text-align: center;
    }

    tr td.proOrderNo {
        text-align: right;
    }

</style>
<go:navigater path="repairSpec"></go:navigater>
<form class="form-horizontal" action="repairSpec/edit" method="post"
      id="specEditForm" callfn="refreshTable">
    <input id="specId" type="hidden" name="id" value="${repairSpec.id}">
    <input id="modelId" type="hidden" name="modelId" value="${repairSpec.modelId}">
    <input type="hidden" name="delFlag" value="${repairSpec.delFlag}">
    <input type="hidden" name="createDate"
           value="<fmt:formatDate value='${repairSpec.createDate}' pattern="yyyy-MM-dd"/>">
    <input type="hidden" name="createBy" value="${repairSpec.createBy}">
    <input type="hidden" name="companyId" value="${repairSpec.companyId}">
    <input type="hidden" name="companyName" value="${repairSpec.companyName}">
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
                                                   value="${repairSpec.shipName}">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="planStartDate" class="col-sm-3 control-label">计划进场日期</label>
                                        <div class="col-sm-7">
                                            <div class="input-group">
                                                <input id="planStartDate" name="planStartDate" type="text"
                                                       class="form-control date-picker" readonly
                                                       value="<fmt:formatDate value='${repairSpec.planStartDate}' pattern="yyyy-MM-dd"/>"
                                                       placeholder="请选择进厂日期"><span class="input-group-addon"><i
                                                    class="fa fa-calendar"></i></span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label for="planDays" class="col-sm-3 control-label">
                                            预估天数</label>
                                        <div class="col-sm-7">
                                            <input id="planDays" name="planDays" type="text"
                                                   value="${repairSpec.planDays}"
                                                   class="form-control required" placeholder="请输入预估维修天数">
                                        </div>
                                    </div>
                                    <%--<div class="form-group col-md-6">
                                        <label for="planCost" class="col-sm-3 control-label">
                                            预估金额</label>
                                        <div class="col-sm-7">
                                            <input id="planCost" name="planCost" type="text" ${repairSpec.planCost}
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
                                                           <c:if test="${type.value==repairSpec.type}">checked</c:if>> ${type.des}
                                                    <span></span>
                                                </label>
                                            </c:forEach>
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
                                                    ${catagory[outerVs.count-1].des}&nbsp;<span
                                                    class="checkedOrNot"></span>
                                            </div>
                                            <div class="tools">
                                                <a href="javascript:;" class="expand"> </a>
                                            </div>
                                        </div>
                                        <div class="portlet-body" style="display: none">
                                            <c:set var="type" value="type${outerVs.count}"></c:set>
                                            <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                                   id="table${outerVs.count}"
                                                   data-totalRow="${fn:length(requestScope[type])}">
                                                    <%--通用服务开始--%>
                                                <c:if test="${outerVs.count==1}">
                                                    <thead>
                                                    <tr>
                                                        <th style="width:5%">&nbsp;</th>
                                                        <th style="width:10%">项目号</th>
                                                        <th style="width:45%">维修内容</th>
                                                        <th style="width:10%">单位</th>
                                                        <th style="width:10%">数量</th>
                                                        <th style="width:10%">备注</th>
                                                        <th style="width:10%">操作</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    </tbody>
                                                </c:if>
                                                    <%--通用服务结束--%>
                                                    <%--除通用服务外开始--%>
                                                <c:if test="${outerVs.count!=1}">
                                                    <thead>
                                                    <tr>
                                                        <th style="width:5%">&nbsp;</th>
                                                        <th style="width:10%">项目号</th>
                                                        <th style="width:40%">维修内容</th>
                                                        <th style="width:25%">维修详单</th>
                                                        <th style="width:10%">备注</th>
                                                        <th style="width:10%">操作</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
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
                            <shiro:hasPermission name="repairSpec/edit">
                                <button id="submitButton" type="button" onclick="severCheck()" class="btn btn-primary">
                                    提交
                                </button>
                            </shiro:hasPermission>
                            <button id="reset-btn" type="reset" class="btn blue">清空</button>
                            <a href="repairSpec" class="btn default" data-target="navTab">取消</a>
                            <%--<button id="notific8_show" type="button">弹出</button>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

<%--用于工程单号--%>
<c:forEach begin="1" end="8" varStatus="vs">
    <c:set var="no" value="nextNo${vs.current}"></c:set>
    <input type="hidden" id="type${vs.current}proOrderNo" value=${nextProNoList[no]}>
</c:forEach>

<jsp:include page="common.jsp"></jsp:include>

<%--用于关闭自动保存的定时器--%>
<input type="hidden" value="specEditJsp" id="specEdit"/>
<input type="hidden" name="deleteItemId" id="deleteRowIdTemp"/>
<script>
    var specId = $("#specId").val();
    var modelId = $("#modelId").val();


    <%--初始化通用服务item--%>
    $(function () {
        $.ajax({
            type: "GET",
            url: 'repairSpec/getSpecItem',
            data: {
                specId: specId,
                catagory: "通用服务",
                modelId: modelId
            },
            success: function (data) {
                var tbody = $("#item1").find("tbody");
                var table = tbody.parents("table");
                table.attr("data-totalRow", data.length);
                var count = 0;
                $(data).each(function () {
                    var a = eval(this);
                    var namePre = "type1List[" + count + "].";
                    var tr = $("#genTmp").clone().removeAttr("id");
                    tr.attr("data-parent", a.parentCode).attr("data-code", a.code);
                    if (a.parentCode == 0) {
                        tr.addClass("top-row");
                    } else {
                        tr.addClass("details-control-child");
                    }
                    tr.find(".code-td").html(a.code);
                    if (a.content != "addrow") {
                        var contentHtml = "<input  value='" + a.content + "' type='hidden' name='" + namePre + "content'>";
                        contentHtml += a.content;
                        var paramList = a.paramList;
                        if (paramList != null && paramList.length > 0) {
                            for (var m = 0; m < paramList.length; m++) {
                                if ((m == 0 && a.content != "") || m != 0) {
                                    contentHtml += "<br>";
                                }
                                var p = eval(paramList[m]);
                                var pCount = m + 1;
                                contentHtml += p.name;
                                var str = "param" + pCount + "Val";
                                var pValue = a[str];
                                pValue = pValue == null ? "" : pValue;
                                if (p.type == "text") {
                                    contentHtml += "<input value='" + pValue + "' onchange='inputControl(this)' name='" + namePre + str + "' class='input-control'>";
                                } else if (p.type == "select") {
                                    contentHtml += "<select name='" + str + "'>";
                                    $(p.paramValueVariableList).each(function () {
                                        var val = eval(this);
                                        contentHtml += "<option value = '" + val.paramValVariable + "'";
                                        if (val.paramValVariable == pValue) {
                                            contentHtml += "selected";
                                        }
                                        contentHtml += "  >" + val.paramValVariable + "</option>";
                                    })
                                    contentHtml += "</select>";
                                }
                                contentHtml += p.unit;
                            }
                        }
                        tr.find(".content-td").html(contentHtml);
                    } else {
                        var contentHtml = "<input  class='input-control' onchange='inputControl(this)'  value='" + a.content + "' type='hidden' name='" + namePre + "content'>";
                        contentHtml += "<button onclick='addRow(this)'  type='button' data-current='" + count + "' class='btn btn-sm blue'>新增 </button>"
                        tr.find(".content-td").html(contentHtml);
                    }

                    if (a.unit != null && a.unit != "") {
                        tr.find(".unit-td").html(a.unit + "<input value='" + a.unit + "' type='hidden' name='" + namePre + "unit'>");
                        var aCount = a.count;
                        if (aCount == null) {
                            aCount = "";
                        }
                        tr.find(".count-td").html("<input value='" + aCount + "' class='col-md-12 input-control' onchange='inputControl(this)' name='" + namePre + "count'>");
                    }
                    if (a.content == "addrow") {
                        tr.find(".unit-td").html("<input style='display:none' class='col-md-12 input-control' onchange='inputControl(this)' name='" + namePre + "unit'>");
                        tr.find(".count-td").html("<input style='display:none' class='col-md-12 input-control' onchange='inputControl(this)' name='" + namePre + "count'>");
                    }


                    if (a.parentCode == 0) {
                        tr.find(".remark-td").html(" <a class='add-remark' data-toggle='modal' onclick='addRemark(this)' onmouseover='showRemark(this)'onmouseout='showRemark(this)'href='#responsive'>添加备注</a> <textarea class='remark-text' name='" + namePre + "remark' cols='60' rows='10' wrap='hard' placeholder='暂未添加备注' style='display: none'></textarea>")
                    }
                    if (a.children != 0) {
                        var td = tr.find(".show-td");
                        td.addClass("details-control").attr("data-code", a.code);
                        td.html("<a href='javascript:;' onclick='controlHidden(false,\"" + a.code + "\",this)' class='btn btn-circle blue m-icon m-icon-only open-png' style='display: none'><i class='m-icon-swapdown m-icon-white'></i></a>" +
                                "<a href='javascript:;' onclick='controlHidden(true,\"" + a.code + "\",this)' class='btn btn-circle blue m-icon m-icon-only close-png' > <i class='m-icon-swapup m-icon-white'></i></a>");
                    }
                    if (a.src == 0 && a.content != "addrow") {
                        var td = tr.find(".show-td");
                        td.html("<a href='javascript:;' onclick='deleteNewRow(" + a.id + ",this)' class='btn btn-sm red'>删除</a>");
                    }


                    if (a.status == "0") {
                        tr.find(".status-control").prop("checked", true);
                    }
                    tr.find(".true-status").val(a.status).prop("name", namePre + "status");
                    if (a.content == "addrow") {
                        tr.find(".status-control").css("display", "none");
                        tr.find(".true-status").removeClass("true-status");
                    }
                    tr.find(".item-id").val(a.id).prop("name", namePre + "id");
                    tr.find(".item-cata").val(a.catagory).prop("name", namePre + "catagory");
                    tr.find(".item-code").val(a.code).prop("name", namePre + "code");
                    tr.find(".item-parent").val(a.parentCode).prop("name", namePre + "parentCode");
                    tr.find(".item-children").val(a.children).prop("name", namePre + "children");
                    tr.find(".item-sort").val(a.sort).prop("name", namePre + "sort");
                    tr.find(".item-src").val(a.src).prop("name", namePre + "src");
                    tbody.append(tr);
                    count++;
                })
                calStatus(table);
            },
        })
    })

    <%--初始化除通用服务外其他item--%>
    $(function () {
        var catagory = ["", "坞修工程", "船体工程", "机械工程", "电气工程", "冷藏工程", "特种设备", "其他"];
        for (var n = 1; n < catagory.length; n++) {
            getItem(catagory[n], n)
        }
    })

    function getItem(catagory, num) {
        $.ajax({
            type: "GET",
            url: 'repairSpec/getSpecItem',
            data: {
                specId: specId,
                catagory: catagory,
                modelId: modelId
            },
            success: function (data) {
                var tbody = $("#item" + (num * 1 + 1)).find("tbody");
                var table = tbody.parents("table");
                table.attr("data-totalRow", data.length);
                var count = 0;
                $(data).each(function () {
                    var a = eval(this);
                    var namePre = "type" + (num * 1 + 1) + "List[" + count + "].";
                    var tr = $("#otherTmp").clone().removeAttr("id");
                    tr.attr("data-parent", a.parentCode).attr("data-code", a.code);
                    if (a.parentCode == 0) {
                        tr.addClass("top-row");
                    } else {
                        tr.addClass("details-control-child").css("display", "none");
                    }
                    tr.find(".code-td").html(a.code);
                    if (a.content != "addrow") {
                        var contentHtml = "<input  value='" + a.content + "' type='hidden' name='" + namePre + "content'>";
                        contentHtml += a.content;

                        var paramList = a.paramList;
                        if (paramList != null && paramList.length > 0) {
                            for (var m = 0; m < paramList.length; m++) {
                                var pCount = m + 1;
                                if ((m == 0 && a.content != "") || m != 0) {
                                    contentHtml += "<br>";
                                }
                                var p = eval(paramList[m]);
                                contentHtml += p.name;
                                var str = "param" + pCount + "Val";
                                var pValue = a[str];
                                pValue = pValue == null ? "" : pValue;
                                if (p.type == "text") {
                                    contentHtml += "<input value='" + pValue + "' onchange='inputControl(this)' name='" + namePre + str + "' class='input-control'>";
                                } else if (p.type == "select") {
                                    contentHtml += "<select name='" + namePre + str + "'>";
                                    $(p.paramValueVariableList).each(function () {
                                        var val = eval(this);
                                        contentHtml += "<option value = '" + val.paramValVariable + "'";
                                        if (val.paramValVariable == pValue) {
                                            contentHtml += "selected";
                                        }
                                        contentHtml += "  >" + val.paramValVariable + "</option>";
                                    })
                                    contentHtml += "</select>";
                                }
                                contentHtml += p.unit;
                            }
                        }
                        tr.find(".content-td").html(contentHtml);
                    } else {
                        var contentHtml = "<input  class='input-control' onchange='inputControl(this)'  value='" + a.content + "' type='hidden' name='" + namePre + "content'>";
                        contentHtml += "<button onclick='addRow(this)'  type='button' data-current='" + count + "' class='btn btn-sm blue'>新增 </button>"
                        tr.find(".content-td").html(contentHtml);
                    }

//                    tr.find(".unit-td").html(a.unit);
//                    if (a.unit != "") {
//                        tr.find(".count-td").html("<input class='col-md-12 input-control' onchange='inputControl(this)' name='" + namePre + "count'>");
//                    }
                    if (a.parentCode == 0) {
                        tr.find(".remark-td").html(" <a class='add-remark' data-toggle='modal' onclick='addRemark(this)' onmouseover='showRemark(this)'onmouseout='showRemark(this)'href='#responsive'>添加备注</a> <textarea class='remark-text' name='" + namePre + "remark' cols='60' rows='10' wrap='hard' placeholder='暂未添加备注' style='display: none'></textarea>")
                    }
                    if (!(a.parentCode == 0 || a.content == "addrow")) {
                        tr.find(".model-detail-select").attr("data-code", a.code).attr("data-catagory", a.catagory).toggle();
                    } else if (a.content == "addrow") {
                        tr.find(".model-detail-select").attr("data-code", a.code).attr("data-catagory", a.catagory);

                    }
                    if (a.children != 0) {
                        var td = tr.find(".show-td");
                        td.addClass("details-control").attr("data-code", a.code);
                        td.html("<a href='javascript:;' onclick='controlHidden(false,\"" + a.code + "\",this)' class='btn btn-circle blue m-icon m-icon-only open-png'><i class='m-icon-swapdown m-icon-white'></i></a>" +
                                "<a href='javascript:;' onclick='controlHidden(true,\"" + a.code + "\",this)' class='btn btn-circle blue m-icon m-icon-only close-png' style='display: none'> <i class='m-icon-swapup m-icon-white'></i></a>");
                    }
                    if (a.status == "0") {
                        tr.find(".status-control").prop("checked", true);
                    }
                    tr.find(".true-status").val(a.status).prop("name", namePre + "status");
                    if (a.content == "addrow") {
                        tr.find(".status-control").css("display", "none");
                        tr.find(".true-status").removeClass("true-status");
                    }
                    if (a.src == 0 && a.content != "addrow") {
                        var td = tr.find(".show-td");
                        td.html("<a href='javascript:;' onclick='deleteNewRow(" + a.id + ",this)' class='btn btn-sm red'>删除</a>");
                    }
                    tr.find(".item-id").val(a.id).prop("name", namePre + "id");
                    tr.find(".item-cata").val(a.catagory).prop("name", namePre + "catagory");
                    tr.find(".item-code").val(a.code).prop("name", namePre + "code");
                    tr.find(".item-unit").val(a.unit).prop("name", namePre + "unit");
                    tr.find(".item-parent").val(a.parentCode).prop("name", namePre + "parentCode");
                    tr.find(".item-children").val(a.children).prop("name", namePre + "children");
                    tr.find(".item-sort").val(a.sort).prop("name", namePre + "sort");
                    tr.find(".item-src").val(a.src).prop("name", namePre + "src");
                    tbody.append(tr);
                    count++;
                    var detailList = a.detailList;
                    for (var d = 0; d < detailList.length; d++) {
                        var detail = detailList[d];
                        var detailRow = $("#detail-row-temp").clone().removeAttr("id").attr("data-parent", detail.code);
                        var detailId = detail.id;
                        detailRow.find(".proOrderNo").html(detail.proOrderNo);
                        detailRow.find(".repairDetailId").val(detailId);
                        detailRow.find(".editDetail").attr("href", "repairSpecDetail/editSpecDetail?id=" + detailId).html(detail.proName);
                        tr.after(detailRow);
                    }

                })
                calStatus(table);
            },
        })
    }


    //保存
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
        $("#specEditForm").ajaxSubmit({
            success: function (data) {
                if (data.success) {
                    $(data.idList).each(function () {
                        console.log(this.id + "===" + this.code);
                        var code = this.code;
                        $("tr[data-code='" + code + "']").find(".item-id").val(this.id);
                    })
                    saveAlert("teal", "保存成功(每五分钟会自动保存)");
                } else {
                    saveAlert("ruby", "保存失败(每五分钟会自动保存)");
                }
                $("#submitButton").prop("disabled", false);
            },
            error: function () {
                saveAlert("tangerine", "系统错误,无法保存(每五分钟会自动保存)");
                $("#submitButton").prop("disabled", false);
                return;
            }
        });
    }

    //自动保存
    var autoSaveTime = 300000;
    setTimeout(autoSave, autoSaveTime);
    function autoSave() {
        var value = $("#specEdit").val();
        if (value == null || value != "specEditJsp") return;
        severCheck();
        setTimeout(autoSave, autoSaveTime);
    }

    function saveAlert(theme, msg) {
        var settings = {
            theme: theme,
            sticky: false,
            horizontalEdge: "top",
            verticalEdge: "left"
        }
        if (!settings.sticky) {
            settings.life = 3000;
        }
        $.notific8('zindex', 11500);
        $.notific8(msg, settings);
    }


    function deleteNewRow(itemId, obj) {
        if (!window.confirm("确认删除?提醒:删除栏目会将栏目下的详单一并删除!"))return;
        var tr = $(obj).parents("tr");
        var code = tr.attr("data-code");
        var pCode = tr.attr("data-parent");
        var input = $("#deleteRowIdTemp").clone().removeAttr("id");
        input.val(itemId);
        $("#specEditForm").append(input);
        $("tr[data-parent='" + code + "']").remove();
        tr.remove();
        changeStatus(pCode);
    }
</script>

