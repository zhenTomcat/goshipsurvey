<%@ page import="java.util.Date" %>
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
    .proImg-td div {
        height: 120px;
    }

    .height-max {
        max-height: 100%;
        height: 100%;
    }

    .width-max {
        max-width: 100%;
        width: 100%;
    }

    table td {
        text-align: center;
    }
</style>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    <h4 class="modal-title" style="color: white">查看汇报</h4>
</div>
<form class="form-horizontal" action="report/add" method="post" id="defForm">
    <div class="row">
        <div class="col-md-12">
            <div class="portlet light bordered">
                <div class="portlet-body">
                    <div class="table-toolbar">
                        <div class="row">
                            <div class="col-md-4">
                                船名: ${task.shipName}
                            </div>
                            <div class="col-md-4">
                                维修单号:
                            </div>
                            <div class="col-md-4">
                                汇报日期: ${report.publishTime}
                            </div>
                        </div>
                    </div>

                    <table class="table table-striped table-bordered table-hover table-checkable order-column">
                        <tr>
                            <td style="width: 33%">天气</td>
                            <td style="width: 33%">温度</td>
                            <td style="width: 33%">湿度</td>
                        </tr>
                        <tr>
                            <td>${report.weather}&nbsp;</td>
                            <td>${report.temperature}&nbsp;</td>
                            <td>${report.humidity}&nbsp;</td>
                        </tr>
                    </table>

                    <div class="form-group">
                        <div class="col-md-12">
                            <h4>备忘</h4>
                            <textarea readonly rows="6" class="form-control" style="resize: none"
                                      placeholder="暂无详细信息">${report.remark}</textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12">
                            <h4>船员主要工作</h4>
                            <textarea readonly rows="6" class="form-control" style="resize: none"
                                      placeholder="暂无详细信息">${report.crewJob}</textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12">
                            <h4>船检反馈情况</h4>
                            <textarea rows="6" class="form-control" style="resize: none" readonly
                                      placeholder="暂无详细信息">${report.shipInspection}</textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12">
                            <h4>明日工作计划</h4>
                            <textarea readonly rows="6" class="form-control" style="resize: none"
                                      placeholder="暂无详细信息">${report.tomorrowPlan}</textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12">
                            <h4>当日详细工程汇报</h4>
                        </div>
                    </div>

                    <div class="modal-footer" style="text-align: center" id="item9">
                        <a id="closeModal" class="btn default" data-dismiss="modal">关闭</a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</form>


<table id="reportDetailTmp" style="display: none"
       class="table table-striped table-bordered table-hover table-checkable">
    <input type="hidden" name="reportDetailId" class="reportDetailId">
    <thead>
        <tr style="background-color: #00a8c6">
            <td style="width: 20%">S/N</td>
            <td style="width: 80%">描述</td>
        </tr>
    </thead>
    <tr>
        <td class="proOrderNo-td"></td>
        <td class="proName-td"></td>
    </tr>
    <tr>
        <td>工程描述</td>
        <td class="proDesc-td"></td>
    </tr>
    <tr>
        <td>工程状态</td>
        <td class="taskStatus-td">已完成</td>
    </tr>
    <tr>
        <td>详情记录</td>
        <td class="description-td"></td>
    </tr>
    <tr>
        <td>工程照片</td>
        <td class="proImg-td">
            <div class="col-md-3">
                <a target="_blank"
                   href="${ctx}/assets/layouts/layout/img/bg/4.jpg"><img
                        src="${ctx}/assets/layouts/layout/img/bg/4.jpg"></a>
            </div>
        </td>
    </tr>
    <tr>
        <td>相关文件</td>
        <td class="proFile-td"></td>
    </tr>
</table>

<script>
    $(function () {
        var reportId =${report.id};
        $.ajax({
            type: "GET",
            url: 'report/info/getReportDetail',
            data: {
                reportId: reportId
            },
            success: function (data) {
                appendReportDetail(data.list);
                $('.proImg-td div img').each(function () {
                    $(this).load(function () {
                        if (this.width > this.height) {
                            $(this).addClass("width-max")
                        } else {
                            $(this).addClass("height-max")
                        }
                    });
                });
            },
        })
    })


    function appendReportDetail(reportDetailList) {
        if (reportDetailList != null && reportDetailList.length > 0) {
            $(reportDetailList).each(function () {
                var reportDetail = eval(this);
                var progDetail = reportDetail.repairProgDetail;
                var a = $("#reportDetailTmp").clone().toggle().removeAttr("id");
                a.find(".reportDetailId").val(reportDetail.id);
                a.find(".proOrderNo-td").html(progDetail.proOrderNo);
                a.find(".proName-td").html(progDetail.proName);
                a.find(".proDesc-td").html(progDetail.proDesc + "&nbsp;");
                var taskStatus = reportDetail.taskStatus;
                console.log(taskStatus);
                if (taskStatus == 0) {
                    a.find(".taskStatus-td").html("已完成");
                } else if (taskStatus == 1) {
                    a.find(".taskStatus-td").html("进行中");
                } else if (taskStatus == 3) {
                    a.find(".taskStatus-td").html("已取消");
                } else {
                    a.find(".taskStatus-td").html("未开始");
                }
                a.find(".description-td").html(reportDetail.memo);
                var imgHtml = "";
                $(reportDetail.imgList).each(function () {
                    imgHtml += "<div class='col-md-3'><a target='_blank' href='" + this.oss + "'><img src='" + this.oss + "'></a> </div>";
                })
                a.find(".proImg-td").html(imgHtml);
                var fileHtml = "";
                $(reportDetail.mp3List).each(function () {
                    fileHtml += "<a download='' href='" + this.oss + "'>" + this.filename + "</a> &nbsp; ";
                })
                $(reportDetail.otherList).each(function () {
                    fileHtml += "<a download='' href='" + this.oss + "'>" + this.filename + "</a> &nbsp;";
                })
                a.find(".proFile-td").html(fileHtml);
                $(".modal-footer").before(a);
            })
        }
    }
</script>
