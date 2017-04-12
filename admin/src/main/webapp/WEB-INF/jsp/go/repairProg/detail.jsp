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
    .col-md-3 {
        margin-bottom: 5px;
    }

    .col-md-6 {
        padding-left: 0px;
    }

    .form-control {
        height: 28px;
        margin-top: 5px;
        width: 100%;
    }

    .control-label {
        margin-top: 0px;
    }

    .form-horizontal .control-label {
        padding-top: 0px;
    }

    .line1 {
        border-bottom: solid 2px #337ab7;
        height: 1px;
        margin-top: 10px
    }

    .head {
        background-color: #C0C9CC;
        font-size: 20px
    }

    textarea {
        resize: none;
    }

    .td-text {
        height: 100%;
        width: 100%;
    }

    .div-left {
        margin-left: 20px
    }

    .mt-checkbox, .mt-radio {
        margin-left: 3px;
    }

    .form-horizontal .form-group {
        margin-left: 5px;
    }

    .label-top {
        margin-top: 10px
    }

    .col-md-offset-3 {
        margin-left: 40%;
        margin-top: 20px;
    }

    .left {
        margin-top: 5px;
        border-right: dashed 1px #337ab7;
    }

    .right {
        margin-top: 5px;
        border: 1px dashed #337ab7;
        margin-left: 10px
    }

</style>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    <h4 class="modal-title" style="color: white">维修详单</h4>
</div>
<form action="" method="post" class="form-horizontal" id="defForm">
    <input type="hidden" value="${proDetail.id}" id="progDetailId"/>
    <div>
        <div class="line1"></div>
        <div style="height:40px;width: 100%;background-color: #C0C9CC">
            <div class="timeline-body-content">
                <div class="form-group col-md-3">
                    <label for="shipName" class="col-sm-5 control-label label-top">船名：</label>
                    <label style="width: auto;padding-left: 0px;" id="shipNameLabel"
                           class="col-sm-7 control-label label-top">${proDetail.shipName}</label>
                    <input id="shipName" name="shipName" type="hidden">
                </div>
                <div class="form-group col-md-3">
                    <label for="catagory" class="col-sm-6 control-label label-top">项目分类：</label>
                    <label style="width: auto;padding-left: 0px;" id="catagoryLabel"
                           class="col-sm-6 control-label label-top">${proDetail.catagory}</label>
                    <input id="catagory" name="catagory" type="hidden">
                </div>
                <div class="form-group col-md-3">
                    <label for="code" class="col-sm-6 control-label label-top">项目号：</label>
                    <label style="width: auto;padding-left: 0px;" id="codeLabel"
                           class="col-sm-6 control-label label-top">${proDetail.code}</label>
                    <input id="code" name="code" type="hidden">
                </div>
                <div class="form-group col-md-3">
                    <label for="proOrderNo" class="col-sm-6 control-label label-top">项目单号：</label>
                    <label style="width: auto;padding-left: 0px;" id="proOrderNoLabel"
                           class="col-sm-6 control-label label-top">${proDetail.proOrderNo}</label>
                    <input id="proOrderNo" name="proOrderNo" type="hidden">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8 left">
                <div style="width: 100%;">
                    <div><span style="background-color: #C0C9CC;font-size: 20px">工程项目描述</span></div>
                    <div class="col-md-12 div-left" style="margin-top: 20px">工程名称：
                        <input style="width: 50%" disabled id="proName" type="text" name="proName" value="${proDetail.proName}"/>
                    </div>
                    <div class="col-md-12 div-left">工程描述：</div>
                    <div class="col-md-12" style="margin-left: 20px">
                        <textarea disabled class="form-control" rows="4" name="proDesc">${proDetail.proDesc}</textarea>
                    </div>
                </div>
                <div class="col-md-12 line1"></div>
                <div style="width: 100%;">
                    <div><span class="head">设备信息</span></div>
                    <div class="col-md-6">
                        <div class="form-group col-md-12">
                            <label for="faciName" class="col-sm-6 control-label">设备名称:</label>
                            <div class="col-sm-6">
                                <input id="faciName" disabled name="faciName" type="text" value="${proDetail.faciName}"
                                       class="">
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="faciType" class="col-sm-6 control-label">设备型号:</label>
                            <div class="col-sm-6">
                                <input disabled id="faciType" name="faciType" type="text" value="${proDetail.faciType}"
                                       class="">
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="faciSrc" class="col-sm-6 control-label">厂家/国家:</label>
                            <div class="col-sm-6">
                                <input disabled id="faciSrc" name="faciSrc" type="text" value="${proDetail.faciSrc}"
                                       class="">
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="faciNo" class="col-sm-6 control-label">序列号:</label>
                            <div class="col-sm-6">
                                <input disabled id="faciNo" name="faciNo" type="text" value="${proDetail.faciNo}"
                                       class="">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group" style="margin-left: 20px">
                            <textarea disabled class="form-control" rows="7" placeholder="请输入相关参数"
                                      name="faciParam">${proDetail.faciParam}</textarea>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 line1"></div>
                <div style="width: 100%;">
                    <div><span class="head">维修部位</span></div>
                    <div class="form-group col-md-12" style="margin-left: 3px;margin-top: 20px">
                        <c:forEach items="${repDicts}" var="r">
                            <div class="col-md-3">
                                <label class="mt-checkbox">
                                    <input disabled type="checkbox" value="${r.value}"
                                    <c:forEach var="p" items="${positions}">
                                    <c:if test="${r.value==p}">
                                           checked
                                    </c:if>
                                    </c:forEach>
                                           name="repairPosition"> ${r.des}
                                    <span></span>
                                </label>
                            </div>
                        </c:forEach>

                    </div>
                    <div class="col-md-12" style="margin-left: 20px">
                        <textarea disabled class="form-control" rows="4" placeholder="请输入详细位置"
                                  name="repairPositionDesc">${modelDetails.repairPositionDesc}</textarea>
                    </div>
                </div>
                <div class="col-md-12 line1"></div>
                <div style="width: 100%;">
                    <div><span class="head">损坏程度</span></div>
                    <div class="col-md-12 div-left" style="margin-top: 20px">
                        <textarea class="form-control" rows="4" name="damage">${modelDetails.damage}</textarea>
                    </div>
                </div>
            </div>
            <div class="col-sm-4" id="imgNum">
                <div style="margin-top: 5px"><span class="head">图片</span></div>
                <c:if test="${progDetailMedias!=null}">
                    <c:forEach var="p" items="${progDetailMedias}">
                        <div class="col-md-12" style="margin-top: 20px;border: 1px dashed #337ab7;padding: 0px">
                            <a target="_blank" href="${p.oss}">
                                <img style="width:100%;height: 180px" src="${p.oss}"/></a></div>
                    </c:forEach>
                </c:if>

            </div>

        </div>
        <div class="col-md-12 line1"></div>
        <div style="width: 100%;margin-top: 10px">
            <div><span class="head">维修描述/材料规格</span></div>
            <div class="col-md-12 div-left" style="margin-top: 20px">
                <div id="example1" style=" height: 300px; overflow: hidden;"></div>
            </div>
        </div>
        <div class="col-md-12 line1"></div>
        <div style="width: 100%;margin-top: 10px">
            <div><span class="head">修理工艺</span></div>
            <div class="form-group col-md-12 div-left" style="margin-top: 20px">
                <c:forEach items="${reqDicts}" var="req">
                    <div class="col-md-3">
                        <label class="mt-checkbox">
                            <input disabled type="checkbox" value="${req.value}"
                            <c:forEach var="t" items="${techs}">
                            <c:if test="${req.value==t}">
                                   checked
                            </c:if>
                            </c:forEach>
                                   name="repairTech"> ${req.des}
                            <span></span>
                        </label>
                    </div>
                </c:forEach>
            </div>

            <div class="col-md-11 div-left">
                <textarea disabled class="form-control" rows="4" placeholder="请填写修理工艺"
                          name="repairTechDesc">${modelDetails.repairTechDesc}</textarea>
            </div>
        </div>
    </div>

    <div class="form-actions">
        <div class="row">
            <div class="col-md-offset-3 col-md-9">
                <button id="close" type="button" class="btn default" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</form>
<script>
    $(document).ready(function () {
        var id = $("#progDetailId").val();
        var width = $(window).width();
        var divWidth = $("#example1").width(width * 0.65);

        function json() {
            $.ajax({
                url: 'repairProg/reqs',
                type: 'POST', //GET
                async: true,    //或false,是否异步
                data: {
                    id: id
                },
                success: function (data) {
                    dataJson = data.reqs;
                    console.log(dataJson);
                    var datas = eval(dataJson);
                    var container = document.getElementById('example1'),
                            storedData = {},
                            savedKeys,
                            resetState,
                            stateLoaded,
                            hot;

                    hot = new Handsontable(container, {
                        data: datas,
                        rowHeaders: true,
                        colHeaders: true,
                        colWidths: [width * 0.46, width * 0.07, width * 0.07],
                        minRows: 10,
                        colHeaders: ["要求和描述/材料规格", "单位", "数量"],
                        columnSorting: true,
                        columns: [
                            {data: "des"},
                            {data: "unit"},
                            {data: "count"}
                        ],
                        manualColumnMove: false,
                        manualColumnResize: false,
                        manualRowMove: false,
                        manualRowResize: false,
                        minSpareRows: 1,
                        contextMenu: false,
                        persistentState: false,
                        readOnly: true
                    });

                    resetState = document.querySelector('.reset-state');
                    stateLoaded = document.querySelector('.state-loaded');

                },
                error: function (xhr, textStatus) {
                    console.log('错误');
                }
            });
        }

        json();
    });
</script>
