<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<style>
    <%--.portlet.box > .portlet-title > .tools > a.collapse {--%>
    <%--background-image: url(<%=basePath%>assets/global/img/portlet-collapse-icon.png);--%>
    <%--}--%>

    .table-checkable tr.details-control-child > td:first-child {
        text-align: right;
        padding-right: 15px;
    }

    .table-striped > tbody > tr:nth-of-type(odd) {
        background-color: #d2f7ff;
    }

    .table-striped > tbody > tr:nth-of-type(even) {
        background-color: #bfe3ff;
    }

    ul.dropdown-menu {
        z-index: 100;
    }

    .modal-dialog {
        position: relative;
        width: 75%;
        margin: auto;
    }

    .modal-content {
        padding: 10px;
    }

    .table > tbody > tr > td, th {
        text-align: center;
        padding: 0;
    }

    .irs-min, .irs-max, .irs-single {
        top: 4px;
        padding: 1px 3px;
    }

    .portlet .portlet {
        margin-bottom: 3px;
    }

    .portlet-body .btn {
        margin-bottom: 2px;
    }

    .portlet.box .portlet.box > .portlet-body {
        padding: 4px 10px;
    }

    .portlet.box .portlet.box > .portlet-title {
        padding: 0 5px;
        max-height: 25px;
        min-height: 25px;
    }

    .portlet-body .portlet-body .portlet.box > .portlet-title > .caption {
        font-size: 10px;
        padding: 3px 0px 0px 0px;
    }

    .portlet .portlet > .portlet-title > .tools {
        padding: 3px 0 0px;
    }

</style>
<go:navigater path="repairProg"></go:navigater>
<input id="repairProgId" value="${repairProg.id}" type="hidden">
<form class="form-horizontal" action="repairSpec/add" method="post"
      id="defForm" callfn="refreshTable">
    <input type="hidden" value="${repairProg.id}" id="prog_id">
    <div class="profile-content">
        <div class="row">
            <div class="col-md-12">
                <div class="portlet light bordered">
                    <div class="portlet-title tabbable-line">
                        <div class="caption caption-md">
                            <i class="fa fa-user"></i>
                            <span class="caption-subject font-blue-madison bold uppercase"> 维修工程进度看板</span>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <%--维修进度汇总开始--%>
                        <div class="portlet box blue-dark">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="fa fa-info"></i>维修进度汇总
                                </div>
                                <div class="tools">
                                    <a href="javascript:;" class="collapse"> </a>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                       id="count_table">
                                    <thead>
                                    <tr>
                                        <th style="width:14%">分类</th>
                                        <th style="width:14%">项目总数</th>
                                        <th style="width:14%">已完成</th>
                                        <th style="width:14%">进行中</th>
                                        <th style="width:14%">未开始</th>
                                        <th style="width:14%">已取消</th>
                                        <th style="width:16%">完成百分比</th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                        <%--维修进度汇总结束--%>
                        <%--维修工程进度看板开始--%>
                        <div class="portlet box blue-dark">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="fa fa-cog"></i>维修工程进度看板
                                </div>
                                <div class="tools">
                                    <a href="javascript:;" class="collapse"> </a>
                                </div>
                                <div class="caption" style="float: right">
                                    说明:
                                    <a class="btn btn-sm green-jungle disabled" style="padding: 2px 5px;opacity: 1">
                                        已完成
                                    </a>
                                    <a class="btn btn-sm blue disabled" style="padding: 2px 5px;opacity: 1">
                                        进行中
                                    </a>
                                    <a class="btn btn-sm default disabled" style="padding: 2px 5px;opacity: 1">
                                        未开始
                                    </a>
                                    <a class="btn btn-sm  yellow disabled" style="padding: 2px 5px;opacity: 1">
                                        已取消
                                    </a>
                                </div>
                            </div>

                            <c:forEach begin="1" end="9" varStatus="outerVs">
                                <c:set var="type" value="type${outerVs.count}"></c:set>
                                <c:if test="${!empty requestScope[type]}">
                                    <div class="portlet-body">
                                        <div class="portlet box blue-dark">
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
                                                <div class="row">
                                                    <div class="col-md-12 clearfix">
                                                        <c:forEach items="${requestScope[type]}" var="detail">
                                                            <a class="btn <c:if test="${detail.taskStatus==0}">green-jungle</c:if>
                                                             <c:if test="${detail.taskStatus==1}">blue</c:if>
                                                             <c:if test="${(detail.taskStatus==2)||(empty detail.taskStatus)}">default</c:if>
                                                             <c:if test="${detail.taskStatus==3}">yellow</c:if>"
                                                               <c:if test="${outerVs.current!=9}">href="repairProg/progDetail?id=${detail.id}"
                                                               data-model="dialog"</c:if>
                                                               <c:if test="${outerVs.current==9}">href="javascript:void(0)"</c:if>
                                                            >${detail.proOrderNo}</a>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                        <%--维修工程进度看板结束--%>
                    </div>
                    <div class="modal-footer" style="text-align: center">
                        <a href="repairProg" class="btn default" data-target="navTab">返回</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</form>
<script>
    var repairProgId = $("#repairProgId").val();
    var count_table;
    $(document).ready(function () {
        count_table = $('#count_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            "paging": false,
            "ajax": {
                "url": "repairProg/getCount",
                "type": "post",
                "data": {id: repairProgId}
            },
            "language": {
                "url": "<%=basePath%>assets/global/plugins/datatables/cn.txt"
            },

            "columns": [
                {
                    "data": "catagory",
                },
                {
                    "data": "allCount",
                },
                {
                    "data": "complete",
                },
                {
                    "data": "now",
                },
                {
                    "data": "notStart",
                },
                {
                    "data": "cancel",
                },
                {
                    "data": "per",
                    "render": function (data) {
                        return '<input type="text" value="' + data + '" class="prog"/>';
                    }
                },
            ],
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
        });
    });

    $(".prog").each(function () {
        var percent = $(this).val();
        $(this).ionRangeSlider({
            type: "double",
            min: 0,
            max: 100,
            from: 0,
            to: percent,
            from_fixed: true,
            to_fixed: true,
        });
    })

    $('.change-status').on("click", function () {
        var thisone = $(this);
        var id = thisone.attr("data-id");
        var status = thisone.attr("data-status");
        var btn = thisone.parent().parent().siblings('button');
        $.ajax({
            url: "repairProg/item/changeStatus",
            data: {id: id, status: status},
            success: function (data) {
                if (data.success) {
                    btn.removeClass().addClass("btn dropdown-toggle " + thisone.attr("data-color"));
                    btn.tips({
                        side: 1,
                        msg: '修改成功',
                        bg: '#6AC1F1',
                        time: 3
                    });
                    count_table.draw();
                } else {
                    btn.tips({
                        side: 1,
                        msg: data.msg,
                        bg: '#6AC1F1',
                        time: 3
                    });
                }
            },
            error: function () {
                alert(2);
                btn.tips({
                    side: 1,
                    msg: "发生异常,请稍后再试",
                    bg: '#6AC1F1',
                    time: 3
                });
                return;
            }
        });
    })

</script>