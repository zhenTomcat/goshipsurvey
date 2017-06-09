<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<style>
    table th, td {
        text-align: center;
    }

    .rating {
        margin-bottom: 4px;
        font-size: 15px;
        line-height: 27px;
        color: #404040;
    }

    .rating input {
        position: absolute;
        left: -9999px;
    }

    .rating label {
        color: #ccc;
        -ms-transition: color 0.3s;
        -moz-transition: color 0.3s;
        -webkit-transition: color 0.3s;
        display: block;
        float: right;
        height: 17px;
        margin-top: 5px;
        padding: 0 2px;
        font-size: 17px;
        line-height: 17px;
        cursor: pointer;
    }

    .rating input:checked ~ label {
        color: #72c02c;
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
                                    <div class="caption">
                                        <i class="icon-social-dribbble font-blue-soft"></i>
                                        <span class="caption-subject font-blue-soft bold uppercase">My record</span>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <ul class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#tab_1_1" data-toggle="tab"> Last quotations </a>
                                        </li>
                                        <li>
                                            <a href="#tab_1_2" data-toggle="tab"> Last inspections </a>
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane fade active in" id="tab_1_1">
                                            <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                                   id="quotation_table">
                                                <thead>
                                                <tr>
                                                    <th style="width: 15%">Ship name</th>
                                                    <th style="width: 10%">imo</th>
                                                    <th style="width: 10%">Ship type</th>
                                                    <th style="width: 12%">Inspection port</th>
                                                    <th style="width: 18%">Inspection date(LMT)</th>
                                                    <th style="width: 10%">Surveyor/Company</th>
                                                    <th style="width: 10%">Total price</th>
                                                    <th style="width: 15%">Status</th>
                                                </tr>
                                                </thead>
                                            </table>
                                        </div>
                                        <div class="tab-pane fade" id="tab_1_2">
                                            <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                                   id="inspection_table">
                                                <thead>
                                                <tr>
                                                    <th style="width: 15%">Ship name</th>
                                                    <th style="width: 10%">imo</th>
                                                    <th style="width: 10%">Ship type</th>
                                                    <th style="width: 12%">Inspection port</th>
                                                    <th style="width: 18%">Inspection date(LMT)</th>
                                                    <th style="width: 10%">Total price</th>
                                                    <th style="width: 10%">Grading</th>
                                                    <th style="width: 15%">Link of inspection report</th>
                                                </tr>
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


<div id="star-rating-outer-not" style="display: none">
    <div class="row comment-submit-div">
        <div class="rating col-md-3">
            <div class="col-md-12"> Your Comment</div>
        </div>
        <div class="rating col-md-3">
            <div class="col-md-8 op-point-div">
                <input type="radio" value="5">
                <label onclick="starLight(this)"><i class="fa fa-star"></i></label>
                <input type="radio" value="4">
                <label onclick="starLight(this)"><i class="fa fa-star"></i></label>
                <input type="radio" value="3">
                <label onclick="starLight(this)" class="marked-label"><i class="fa fa-star"></i></label>
                <input type="radio" value="2">
                <label onclick="starLight(this)"><i class="fa fa-star"></i></label>
                <input type="radio" value="1">
                <label onclick="starLight(this)"><i class="fa fa-star"></i></label>
            </div>
        </div>
        <div class="form-group col-md-6">
            <div class="input-group col-sm-12">
                <input type="text" class="form-control">
                <span class="input-group-btn">
                    <button class="btn blue comment-btn" type="button" onclick="submitComment(this)"
                            style="height: 24px;padding: 1px 8px">Submit</button>
                </span>
            </div>
        </div>
    </div>
</div>

<div id="star-rating-outer-have" style="display: none">
    <div class="row">
        <div class="rating col-md-3">
            <div class="col-md-12 comment-label-div"> Your Comment</div>
        </div>
        <div class="rating col-md-3">
            <div class="col-md-8 op-point-div">
                <input type="radio" value="5">
                <label><i class="fa fa-star"></i></label>
                <input type="radio" value="4">
                <label><i class="fa fa-star"></i></label>
                <input type="radio" value="3">
                <label><i class="fa fa-star"></i></label>
                <input type="radio" value="2">
                <label><i class="fa fa-star"></i></label>
                <input type="radio" value="1">
                <label><i class="fa fa-star"></i></label>
            </div>
        </div>
        <div class="form-group col-md-6">
            <div class="input-group col-sm-12 op-comment-div" style="text-align: left">
            </div>
        </div>
    </div>
</div>

<script>
    var quotationTable;
    var inspectionTable;
    var starRatingNot = $("#star-rating-outer-not");
    var starRatingHave = $("#star-rating-outer-have");
    $(document).ready(function () {
        drawQuotationTable();
        drawInspectionTable();
    });


    function drawQuotationTable() {
        quotationTable = $('#quotation_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            "ajax": {
                "url": "prepurchase/op/record/quotation/list",
                "type": "get",
                "data": function (data) {
                    data.keyword = $("#keyword").val();
                }
            },
//            "language": {
//                "url": "http://windyeel.oss-cn-shanghai.aliyuncs.com/global/plugins/datatables/cn.txt"
//            },
            "lengthMenu": [[5, 40, 60], [5, 40, 60]],
            "columns": [
                {
                    "data": "shipDetail.shipName",
                },
                {
                    "data": "shipDetail.imo",
                },
                {
                    "data": "shipDetail.shipType",
                },
                {
                    "data": "location",
                },
                {
                    "data": "location",
                },
                {
                    "data": "application",
                    "render": function (data) {
                        if (data != null) {
                            return data.surveyor.firstName + "/" + data.user.name;
                        }
                        return "";
                    }
                },
                {
                    "data": "application",
                    "render": function (data) {
                        if (data != null) {
                            return "$:" + data.totalPrice;
                        }
                        return "";
                    }
                },
                {
                    "data": "publicStatus",
                    "render": function (data) {
                        if (data == 2) {
                            return "<a class='btn btn-sm blue'>已完成</a>";
                        } else if (data == 3) {
                            return "<a class='btn btn-sm yellow'>已取消</a>";
                        }
                    }
                },
            ],
            "columnDefs": [{
                "targets": 4,
                "render": function (data, type, row) {
                    var startDate = new Date(row.startDate).Format("yyyy-MM-dd");
                    var endDate = new Date(row.endDate).Format("yyyy-MM-dd");
                    return startDate + " to " + endDate;
                }
            }],
        });
    }
    function drawInspectionTable() {
        inspectionTable = $('#inspection_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            "ajax": {
                "url": "prepurchase/op/record/inspection/list",
                "type": "get",
                "data": function (data) {
                    data.keyword = $("#keyword").val();
                }
            },
            "lengthMenu": [[5, 40, 60], [5, 40, 60]],
            "columns": [
                {
                    "data": "shipDetail.shipName",
                },
                {
                    "data": "shipDetail.imo",
                },
                {
                    "data": "shipDetail.shipType",
                },
                {
                    "data": "purchaseQuotation.location",
                },
                {
                    "data": "",
                },
                {
                    "data": "purchaseQuotation.totalPrice",
                    "render": function (data) {
                        return "$:" + data;
                    }
                },
                {
                    "data": "",
                },
                {
                    "data": "inspectionReportId",
                    "render": function (data) {
                        return '<a data-target="navTab" href="prepurchase/op/reportInfo?reportId=' + data + '" >View</a> <li class="fa fa-link"></li>'

                    }
                },
            ],
            "columnDefs": [{
                "targets": 4,
                "render": function (data, type, row) {
                    var startDate = new Date(row.purchaseQuotation.startDate).Format("yyyy-MM-dd");
                    var endDate = new Date(row.purchaseQuotation.endDate).Format("yyyy-MM-dd");
                    return startDate + " to " + endDate;
                }
            }],
            "initComplete": function (settings, json) {
                var rows = $('#inspection_table').find("tbody tr");
                rows.each(function (i, e) {
                    var row = inspectionTable.row($(this));
                    row.child(moreInfo(row.data())).show();
                })
            }
        });
    }


    function moreInfo(data) {
        var html = "";
        var surveyorInfo = data.surveyorInfo;
        var comment = data.comment;
        var opGrade = comment.opGrade;

        if (opGrade == null || opGrade == "") {
            var commentDom = starRatingNot.clone();
            commentDom.find(".op-point-div input[type='radio']").attr("name", "opGrade")
            commentDom.find(".comment-btn").attr("data-id", comment.id);
            commentDom.find(".comment-btn").attr("data-surveyor-id", comment.surveyorId)
            html += commentDom.html();
        } else {
            var commentDom = starRatingHave.clone();
            commentDom.find(".op-point-div input[value='" + opGrade + "']").attr("checked", true);
            commentDom.find(".op-comment-div").html(comment.opComment);
            html += commentDom.html();
        }
        var surveyorGrade = comment.surveyorGrade;
        if (surveyorGrade != null && surveyorGrade != "") {
            var commentDom = starRatingHave.clone();
            commentDom.find(".comment-label-div").html("Surveyor's/Company : " + data.surveyor.firstName + "/" + data.company.name);
            commentDom.find(".op-point-div input[value='" + surveyorGrade + "']").attr("checked", true);
            commentDom.find(".op-comment-div").html(comment.surveyorComment);
            html += commentDom.html();
        }
        return html;
    }

    function starLight(obj) {
        $(obj).prev().click();
    }


    function submitComment(obj) {
        var btn = $(obj);
        var div = btn.parents(".comment-submit-div");
        var id = btn.attr("data-id");
        var surveyorId = btn.attr("data-surveyor-id");
        var point = 0;

        var radio = div.find("input[type='radio']");
        radio.each(function () {
            if (this.checked) {
                point = this.value;
                return false;
            }
        })
        if (point == 0) {
            div.find(".marked-label").tips({
                side: 1,
                msg: "请打分",
                bg: '#FF5080',
                time: 3,
            });
            return;
        }

        var commentInput = div.find("input[type='text']");
        var comment = commentInput.val();
        if (comment.trim() == "") {
            commentInput.tips({
                side: 1,
                msg: "请评价",
                bg: '#FF5080',
                time: 3,
            });
            return;
        }


        $.ajax({
            url: "comment/editComment",
            type: "post",
            data: {id: id, opGrade: point, opComment: comment, surveyorId: surveyorId},
            success: function (data) {
                if (data.success) {
                    var newComment = starRatingHave.find(".row").clone();
                    newComment.find(".op-point-div input[value='" + point + "']").attr("checked", true);
                    newComment.find(".op-comment-div").html(comment);
                    div.html(newComment.html());
                } else {
                    alert("failure");
                }
            },
            error: function () {
                alert("error");
            }
        })
    }
</script>