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
                                                    <th>Ship name</th>
                                                    <th>imo</th>
                                                    <th>Ship type</th>
                                                    <th>Inspection type</th>
                                                    <th>Inspection port</th>
                                                    <th>Inspection date(LMT)</th>
                                                    <th>Total price</th>
                                                    <th>Status</th>
                                                </tr>
                                                </thead>
                                            </table>
                                        </div>
                                        <div class="tab-pane fade" id="tab_1_2">
                                            <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                                   id="inspection_table">
                                                <thead>
                                                <tr>
                                                    <th>Ship name</th>
                                                    <th>imo</th>
                                                    <th>Ship type</th>
                                                    <th>Inspection type</th>
                                                    <th>Inspection port</th>
                                                    <th>Inspection date(LMT)</th>
                                                    <th>Total price</th>
                                                    <th>Surveyors/Company</th>
                                                    <th>Inspection report</th>
                                                    <th></th>
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
    var shipType = ["", "Bulker", "Tanker", "Gas", "Chemical", "Container", "Multi_purpose", "Ro-Ro/PCC", "Reefer"];
    var inspectionType = ["", "on hire", "off hire", "condition"];
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
                "url": "op/record/list/quotation",
                "type": "post",
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
                    "data": "shipName",
                },
                {
                    "data": "imo",
                },
                {
                    "data": "shipType",
                    "render": function (data) {
                        return shipType[data];
                    }
                },
                {
                    "data": "inspectionType",
                    "render": function (data) {
                        return inspectionType[data];
                    }
                },
                {
                    "data": "portName",
                },
                {
                    "data": "imo",
                },
                {
                    "data": "totalPrice",
                    "render": function (data) {
                        return "$:" + data;
                    }
                },
                {
                    "data": "quotationStatus",
                    "render": function (data) {
                        if (data == 2) {
                            return "<a class='btn btn-sm blue'>已完成</a>";
                        } else if (data == 3) {
                            return "<a class='btn btn-sm blue'>已取消</a>";
                        }
                    }
                },
            ],
            "columnDefs": [{
                "targets": 5,
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
                "url": "op/record/list/inspection",
                "type": "post",
                "data": function (data) {
                    data.keyword = $("#keyword").val();
                }
            },
            "lengthMenu": [[5, 40, 60], [5, 40, 60]],
            "columns": [
                {
                    "data": "quotation.shipName",
                },
                {
                    "data": "quotation.imo",
                },
                {
                    "data": "quotation.shipType",
                    "render": function (data) {
                        return shipType[data];
                    }
                },
                {
                    "data": "inspectionType",
                    "render": function (data) {
                        return inspectionType[data];
                    }
                },
                {
                    "data": "quotation.portName",
                },
                {
                    "data": "",
                },
                {
                    "data": "quotation.totalPrice",
                    "render": function (data) {
                        return "$:" + data;
                    }
                },
                {
                    "data": "surveyorInfo.name",
                },
                {
                    "data": "surveyorInfo.reportUrl",
                    "render": function (data) {
                        return "<a class='btn btn-sm green' target='_blank' href='" + data + "'>VIEW</a>";
                    }
                },
                {
                    "data": "",
                    "class": "details-control",
                    "render": function () {
                        return "<i class='fa fa-info' title='View Comment'></i>";
                    }
                },
            ],
            "columnDefs": [{
                "targets": 5,
                "render": function (data, type, row) {
                    var startDate = new Date(row.quotation.startDate).Format("yyyy-MM-dd");
                    var endDate = new Date(row.quotation.endDate).Format("yyyy-MM-dd");
                    return startDate + " to " + endDate;
                }
            }],
        });

        inspectionTable.on('click', 'td.details-control', function () {
            var tr = $(this).closest('tr');
            var row = inspectionTable.row(tr);
            if (row.child.isShown()) {
                row.child.hide();
                tr.removeClass('shown');
            }
            else {
                row.child(moreInfo(row.data())).show();
                tr.addClass('shown');
            }
        });
    }


    function moreInfo(data) {
        var html = "";
        var surveyorInfo = data.surveyorInfo;
        var opPoint = data.opPoint;
        if (opPoint == null || opPoint == "") {
            var comment = starRatingNot.clone();
            comment.find(".op-point-div input[type='radio']").attr("name", "opPoint")
            comment.find(".comment-btn").attr("data-id", data.id)
            html += comment.html();
        } else {
            var comment = starRatingHave.clone();
            comment.find(".op-point-div input[value='" + opPoint + "']").attr("checked", true);
            comment.find(".op-comment-div").html(data.opComment);
            html += comment.html();
        }
        var surveyorPoint = data.surveyorPoint;
        if (surveyorPoint != null && surveyorPoint != "") {
            var comment = starRatingHave.clone();
            comment.find(".comment-label-div").html("Surveyor's comment");
            comment.find(".op-point-div input[value='" + surveyorPoint + "']").attr("checked", true);
            comment.find(".op-comment-div").html(data.surveyorComment);
            html += comment.html();
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
            url: "op/inspection/addPoint",
            type: "post",
            data: {id: id, opPoint: point, opComment: comment},
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