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
    table th, td {
        text-align: center;
    }

    .table-bordered, .table-bordered > tbody > tr > td, .table-bordered > tbody > tr > th, .table-bordered > tfoot > tr > td, .table-bordered > tfoot > tr > th, .table-bordered > thead > tr > td, .table-bordered > thead > tr > th {
        border: 1px solid #e7ecf1;
    }

    .application-outer-td {
        padding: 0;
    }

</style>
<div class="row">
    <div class="col-md-12">
        <div class="portlet light bordered">
            <div class="portlet-body">
                <div class="table-toolbar">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet light">
                                <div class="portlet-title">
                                    <div class="caption col-md-6">
                                        <i class="icon-social-dribbble font-blue-soft"></i>
                                        <span class="caption-subject font-blue-soft bold uppercase">SHIP SIMPLE SPEC.</span>
                                    </div>
                                    <shiro:hasPermission name="spec/add">
                                        <div class="col-md-4">
                                            <div class="btn-group">
                                                <a onclick="showModelForm(this)" data-url="spec/add"
                                                   class="btn blue"><i class="fa fa-plus"></i> Add SHIP SIMPLE SPEC
                                                </a>
                                            </div>
                                        </div>
                                    </shiro:hasPermission>
                                </div>

                                <div class="portlet-body">
                                    <div class="tab-content">
                                        <div class="tab-pane fade active in" id="tab_1_1">
                                            <table class="table  table-checkable table-bordered"
                                                   id="ship_simple_spec">
                                                <thead>
                                                <tr>
                                                    <th width="10%">船名</th>
                                                    <th width="10%">IMO</th>
                                                    <th width="10%">船型</th>
                                                    <th width="10%">检验类型</th>
                                                    <th width="10%">检验港口</th>
                                                    <th width="10%">检验日期</th>
                                                    <th width="10%">检验报告</th>
                                                    <th width="10%">现场照片</th>
                                                    <th width="10%">验船师简历</th>
                                                    <th width="10%">操作</th>
                                                </tr>
                                                <tbody></tbody>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="clearfix margin-bottom-20"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="static" class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false">

    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header" style="background-color: #32c5d2;">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title" style="color: white">船舶信息.</h4>
            </div>
            <div class="modal-body">
                    <img src="" width="90%" id="shipInfoImg"/>
            </div>
            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn dark blue">关闭</button>
            </div>
        </div>
    </div>
</div>
<div id="modal_form" class="modal fade" role="dialog" aria-hidden="true"></div>
<a id="modal_form_switch" data-toggle="modal" href="#modal_form" style="display: none">a</a>
<script>
    var inspectionTable = $("#ship_simple_spec");
    $(document).ready(function () {
        drawQuotationTable();
    })

    function drawQuotationTable() {
        inspectionTable = $('#ship_simple_spec').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            'bStateSave': true,
            "ajax": {
                "url": "spec/list",
                "type": "post",
                "data": function (data) {
                    data.keyword = $("#keyword").val();
                }
            },
//            "language": {
//                "url": "https://windyeel.oss-cn-shanghai.aliyuncs.com/global/plugins/datatables/cn.txt"
//            },
            "lengthMenu": [[5, 40, 60], [5, 40, 60]],
            "columns": [
                {
                    "data": "shipName",
                },
                {
                    "data": "imo",
                },
                {
                    "data": "shipType",
                },
                {
                    "data": "inspectType",
                },
                {
                    "data": "inspectPort",
                },
                {
                    "data": "inspectDate",
                },
                {
                    "data": "inspectReport",
                },
                {
                    "data": "sitePicture",
                },
                {
                    "data": "surveyor",
                },
                {
                    "data": "id",
                },
            ],
            "columnDefs": [
                {
                  "targets":0,
                  "render":function (data,type,row) {
                      var shipInfo="";
                      if (data!=null && data!=""){
                         shipInfo ="<a onclick='showShipInfo("+row.id+")' href='#static' data-toggle='modal'>"+data+"</a>";
                      }
                      return shipInfo;

                  }
                },
                {
                    "targets": 5,
                    "render": function (data, type, row) {
                        var date = new Date(row.inspectDate.replace(/-/g, "/")).Format("yyyy-MM-dd");
                        return date;
                    }
                },
                {
                    "targets": 6,
                    "render": function (data, type, row) {
                        var report="";
                        if(row.inspectReportOss!=null && row.inspectReportOss!=""){
                            report="<a href='"+row.inspectReportOss+"'>下载</a>";
                        }

                        return report;
                    }
                },
                {
                    "targets":7,
                    "render" :function (data,type,row) {
                        var sitePicture="";
                        if(row.sitePictureName!=null && row.sitePictureName!=""){
                            sitePicture="<a href='"+row.sitePictureOss+"'>下载</a>";
                        }

                        return sitePicture;
                    }
                },
                {
                    "targets": 8,
                        "render": function (data, type, row) {
                            var a="";
                            var b="";
                            if(row.surveyorAResumeOss!=null && row.surveyorAResumeOss!=""){
                                a="<a href='"+row.surveyorAResumeOss+"' target='_blank'>"+row.surveyorAName+"</a>";
                            }
                            if(row.surveyorBResumeOss!=null && row.surveyorBResumeOss!=""){
                                b="<a href='"+row.surveyorBResumeOss+"' target='_blank'>"+row.surveyorBName+"</a>";
                            }
                        return a+" , "+b;
                    }
                },
                {
                    "targets":9,
                        "render":function (data,type,row) {
                            return ""
                                    <shiro:hasPermission name="spec/delete">
                                    +'<button onclick="deleteInfo('+row.id+')" class="btn btn-xs red" >删除</button>'
                                    </shiro:hasPermission>
                                    <shiro:hasPermission name="spec/edit">
                                    +'<button onclick="showModelForm(this)" data-url="/spec/edit?id=' + row.id + '" class="btn btn-xs blue" data-toggle="modal">编辑</button>';
                                   </shiro:hasPermission>
                    }
                }

            ],
        });
    }


    function refreshTable(toFirst) {
        if (toFirst) {//表格重绘，并跳转到第一页
            inspectionTable.draw();
        } else {//表格重绘，保持在当前页
            inspectionTable.draw(false);
        }
    }

    function showModelForm(obj) {
        var url = $(obj).attr("data-url");
        var md = $(obj).attr("md");
        if (md == 'ajax') {
        } else {
            $("#modal_form").load(url);
            $("#modal_form_switch").click();
        }
        return false;
    }

    function deleteInfo(id) {
        swal({
            title: "您确定要删除吗？",
            text: "您确定要删除这条数据？",
            type: "warning",
            showCancelButton: true,
            closeOnConfirm: false,
        }, function() {
            $.ajax({
                url: "/spec/delete",
                type: "post",
                data:{id:id}
            }).done(function(data) {
                swal("已成功删除数据!", "请重新刷新当前页面", "success");
                refreshTable(true);
            }).error(function(data) {
                swal("OMG", "删除操作失败了!", "error");
            });
        });
    }

    function showShipInfo(id) {
        $.ajax({
            url:"/spec/info",
            data:{id:id},
            type:"get",
            success:function (data) {
                if(data.status ==200){
                    $("#shipInfoImg").attr("src",data.src);
                }
            }
        });
    }
</script>



