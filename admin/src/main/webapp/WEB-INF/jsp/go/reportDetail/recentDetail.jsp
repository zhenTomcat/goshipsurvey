<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<go:navigater path="reportDetail"></go:navigater>
<go:navigater path="task"></go:navigater>
<style>
   /* table, tr, td {
        border: solid 2px #9C9C9C
    }

    .borders {
        border: solid 1px #9C9C9C;
        margin-bottom: 40px;
    }*/

    textarea {
        resize: none;
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
</style>

<form action="report/addRecord" method="post" class="form-horizontal" id="defForm">
    <input name="repairProgDetailId" type="hidden" value="${progDetail.id}" id="progDetailId"/>
    <input type="hidden" value="${reportDetailId}" id="reportDetailId">

    <div class="profile-content">
        <div class="row col-md-11">
            <div class="col-md-12"><h4>记录报告</h4></div>
            <div class="col-md-12" style="padding-left:0px;padding-right: 0px">
                <div class="timeline-body-content">
                    <table class="table table-bordered">
                        <tr>
                            <td>${progDetail.proOrderNo}</td>
                            <td>${progDetail.proName}</td>
                            <td style="width: 50%">${progDetail.proDesc}</td>
                            <td>
                                <c:if test="${progDetail.taskStatus == 0}">
                                    <label  class='btn green-jungle'>已完成</label>
                                </c:if>
                                <c:if test="${progDetail.taskStatus == 1}">
                                    <label  class='btn blue'>进行中</label>
                                </c:if>
                                <c:if test="${progDetail.taskStatus==2}">
                                    <label  class='btn default'>未开始</label>
                                </c:if>
                                <c:if test="${progDetail.taskStatus ==3}">
                                    <label  class='btn yellow'>已取消</label>
                                </c:if>
                            </td>
                            <td><a data-model="dialog" href="repairProg/progDetail?id=${progDetail.id}">工程详单查看</a></td>
                        </tr>
                    </table>
                </div>
            </div>
            <c:if test="${size>0}" var="s">
                <c:forEach var="i" begin="0" end="${size-1}" step="1" varStatus="d">
                    <fmt:formatDate value="${reportDetails[i].createDate}" var="date" pattern="yyyy-MM-dd HH:mm:ss"/>
                    <div style="margin-top: 20px" class="col-sm-10"><h4 class="block"> ${date}</h4></div>
                    <div style="margin-top: 30px" class="col-sm-2">
                        <c:if test="${reportDetails[i].taskStatus == 0}">
                            <label  class='btn green-jungle'>已完成</label>
                        </c:if>
                        <c:if test="${reportDetails[i].taskStatus == 1}">
                            <label  class='btn blue'>进行中</label>
                        </c:if>
                        <c:if test="${reportDetails[i].taskStatus == null||reportDetails[i].taskStatus==2}">
                            <label  class='btn default'>未开始</label>
                        </c:if>
                        <c:if test="${reportDetails[i].taskStatus ==3}">
                            <label  class='btn yellow'>已取消</label>
                        </c:if>
                    </div>
                    <div class="col-md-12 note note-success">
                        <div class="col-md-12"><h4>详情记录</h4></div>
                        <div class="col-md-12 borders">
                            <div style="padding-top: 15px;padding-bottom: 15px">
                                <div class="col-md-9" style="padding: 0px">
                                    <div id="handsontable${d.count}" data-id="${reportDetails[i].id}"
                                         style=" height: 250px; overflow: hidden;"></div>
                                </div>
                                <div class="col-md-3" style=" height: 250px;padding: 0px">
                            <textarea name="memo" style="width: 100%;height:100%;"
                                      placeholder="备注:">${reportDetails[i].memo}</textarea>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 " style="margin-top: 40px"><h4>照片</h4></div>
                        <div class="col-md-12">
                            <c:if test="${!empty reportDetails[i].imgList}">
                                <c:forEach items="${reportDetails[i].imgList}" var="t">
                                    <c:if test="${t.type==0}">
                                        <div style="float:left;position:relative;margin: 10px">
                                            <a href="${t.oss}" target="_blank"><img src="${t.oss}" style="width: 100px;height: 100px;" class="min-img"></a>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </c:if>
                        </div>
                        <div class="col-md-12" style="margin-top: 40px"><h4>相关文件</h4></div>
                        <div class="col-md-12">
                            <div style="padding: 10px;">
                                <table class="table" id="table_attachment">
                                    <tbody>
                                    <c:if test="${!empty reportDetails[i].otherList}">
                                        <c:forEach items="${reportDetails[i].otherList}" var="r">
                                            <c:if test="${r.type==2}">
                                                <tr>
                                                    <td style="width: 80%"><a target="_blank" href="${r.oss}">${r.filename}</a>
                                                    </td>
                                                </tr>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:if>
            <c:if test="${! s}" >
                <div class="col-md-12 note note-success">
                    <h3>暂无前期报告</h3>
                </div>
            </c:if>



            <div class="modal-footer" style="text-align: center">
            </div>
        </div>
    </div>
</form>
<nav class="quick-nav">
    <a class="quick-nav-trigger" data-target="navTab" href="task/info?id=${taskId}">
        <h3 style="position: absolute;color:white ">&nbsp;返回</h3>
    </a>
    <span aria-hidden="true" class="quick-nav-bg"></span>
</nav>
<div class="quick-nav-overlay"></div>
<a id="info" href="task/info?id=${taskId}" class="btn btn-sm grey-mint" data-target="navTab" style="display: none"></a>
<a href="#make" style="display:none" data-toggle="modal" id="box" class="btn btn-sm margin-bottom-5 green"></a>

<script>
    var size=${size};
    for (var i = 1; i <= size; i++) {
        handsontableData(i)
    }
    function handsontableData(i) {
        var reportDetailId = $("#handsontable" + i).attr("data-id");
        var width = $(window).width();
        var dataJson;
        $.ajax({
            url: 'reportDetail/reqs',
            data: {
                reportDetailId: reportDetailId
            },
            type: 'POST', //GET
            async: true,    //或false,是否异步

            success: function (data) {


                console.log(i)
                dataJson = data.reqs;
                console.log(dataJson);
                var datas = eval(dataJson);
                var container = document.getElementById('handsontable' + i),
                        storedData = {},
                        savedKeys,
                        resetState,
                        stateLoaded,
                        hot;

                hot = new Handsontable(container, {
                    data: datas,
                    rowHeaders: true,
                    colHeaders: true,
                    colWidths: [width * 0.3, width * 0.05, width * 0.05, width * 0.05, width * 0.05, width * 0.05],
                    minRows: 9,
                    colHeaders: ["要求和描述/材料规格", "单位", "数量", "单价", "系数", "总价"],
                    columnSorting: true,
                    columns: [
                        {data: "des"},
                        {data: "unit"},
                        {data: "count"},
                        {data: "tariff"},
                        {data: "discount"},
                        {data: "total"}
                    ],
                    manualColumnMove: false,
                    manualColumnResize: true,
                    manualRowMove: false,
                    manualRowResize: false,
                    minSpareRows: 1,
                    contextMenu: false,
                    persistentState: false,
                    readOnly:true
                });
                flag = false;

            },
            error: function (xhr, textStatus) {
                console.log('错误');
            }
        });

    }


</script>
