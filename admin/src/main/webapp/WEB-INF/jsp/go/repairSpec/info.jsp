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
    <%--.portlet.box > .portlet-title > .tools > a.collapse {--%>
        <%--background-image: url(<%=basePath%>assets/global/img/portlet-collapse-icon.png);--%>
    <%--}--%>

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
     table th {
         text-align: center;
     }
</style>
<go:navigater path="repairSpec"></go:navigater>
<form class="form-horizontal" action="repairSpec/edit" method="post"
      id="defForm" callfn="refreshTable">
    <input id="modelId" type="hidden" name="modelId" value="${repairSpec.modelId}">
    <input id="specId" type="hidden" name="id" value="${repairSpec.id}">
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
                                   <%-- <div class="form-group col-md-6">
                                        <label for="planCost" class="col-sm-3 control-label">
                                            预估金额</label>
                                        <div class="col-sm-7">
                                            <input id="planCost" name="planCost" type="text" ${repairSpec.planCost}
                                                   class="form-control required" placeholder="无预估维修金额信息">
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
                                                    ${cataList[outerVs.count-1].des}
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
                                                    </tbody>
                                                </c:if>
                                                    <%--通用服务结束--%>
                                                    <%--除通用服务外开始--%>
                                                <c:if test="${outerVs.count!=1}">
                                                    <thead>
                                                    <tr>
                                                        <th style="width:10%">工程单号</th>
                                                        <th style="width:15%">工程单名</th>
                                                        <th style="width:65%">工程描述</th>
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
    var specId = $("#specId").val();
    var modelId = $("#modelId").val();


    <%--初始化通用服务item--%>
    $(function () {
        $.ajax({
            type: "GET",
            url: 'repairSpec/getSpecInfoItem',
            data: {
                specId: specId,
                catagory: "通用服务",
                modelId: modelId
            },
            success: function (data) {
                var tbody = $("#item1").find("tbody");
                if (data != null && data.length > 0) {

                    $(data).each(function () {
                        var a = eval(this);
                        var tr = $("#genInfoTmp").clone().removeAttr("id");
                        tr.attr("data-parent", a.parentCode).attr("data-code", a.code);
                        if (a.parentCode == 0) {
                            tr.addClass("top-row");
                        } else {
                            tr.addClass("details-control-child");
                        }
                        tr.find(".code-td").html(a.code);
                        var contentHtml = "";
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
                                pValue = (pValue == null) ? "" : pValue;
                                contentHtml += pValue + p.unit;
                            }
                        }
                        tr.find(".content-td").html(contentHtml);
                        tr.find(".unit-td").html(a.unit);
                        tr.find(".count-td").html(a.count);
                        if (a.parentCode == 0) {
                            tr.find(".remark-td").html(" <a class='add-remark' data-toggle='modal' onclick='addRemark(this)' onmouseover='showRemark(this)'onmouseout='showRemark(this)'href='#responsive'>查看备注</a> <textarea class='remark-text' cols='60' rows='10' wrap='hard' placeholder='暂未添加备注' style='display: none'></textarea>")
                        }
                        if (a.children != 0) {
                            var td = tr.find(".show-td");
                            td.addClass("details-control").attr("data-code", a.code);
                            td.html("<a href='javascript:;' onclick='controlHidden(false,\"" + a.code + "\",this)' class='btn btn-circle blue m-icon m-icon-only open-png' style='display: none'><i class='m-icon-swapdown m-icon-white'></i></a>" +
                                    "<a href='javascript:;' onclick='controlHidden(true,\"" + a.code + "\",this)' class='btn btn-circle blue m-icon m-icon-only close-png' > <i class='m-icon-swapup m-icon-white'></i></a>");
                        }
                        tbody.append(tr);
                    })
                    tbody.find("input").prop("readonly", true);
                } else {
                    tbody.html("<tr><td colspan='6'>无项目信息</td></tr>")
                }
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
            url: 'repairSpec/getSpecInfoItem',
            data: {
                specId: specId,
                catagory: catagory,
                modelId: modelId
            },
            success: function (data) {
                var tbody = $("#item" + (num * 1 + 1)).find("tbody");
                var count = 0;
                if (data != null && data.length > 0) {
                    $(data).each(function () {
                        var a = eval(this);
                        var tr = $("#otherInfoTmp").clone().removeAttr("id");
                        tr.find(".proOrderNo-td").html(a.proOrderNo);
                        tr.find(".proName-td").html(a.proName);
                        tr.find(".proDesc-td").html(a.proDesc);
                        tr.find("a").attr("href", "repairSpecDetail/editSpecDetail?id=" + a.id);
                        tbody.append(tr);
                    })
                } else {
                    tbody.html("<tr><td colspan='4'>无详单信息</td></tr>")
                }
            },
        })
    }

    $("input").prop("readonly", true);
    $("textarea").prop("readonly", true);
    function lookDetail(obj) {
        $(".marked-detail-name").removeClass("marked-detail-name");
        $(".marked-detail-desc").removeClass("marked-detail-desc");
        var tr = $(obj).parents("tr");
        tr.find(".proName").addClass("marked-detail-name");
        tr.find(".proDesc").addClass("marked-detail-desc");
    }
</script>

