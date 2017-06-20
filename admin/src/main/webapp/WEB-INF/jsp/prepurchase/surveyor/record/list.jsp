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
                                        <span class="caption-subject font-blue-soft bold uppercase">My inspection record</span>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <%--<ul class="nav nav-tabs">--%>
                                    <%--<li>--%>
                                    <%--<a href="#tab_1_2" data-toggle="tab"> Last inspections </a>--%>
                                    <%--</li>--%>
                                    <%--</ul>--%>
                                    <div class="tab-content">
                                        <div class="tab-pane fade active in" id="tab_1_2">
                                            <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                                   id="inspection_table">
                                                <thead>
                                                <tr>
                                                    <th style="width: 15%">Ship name</th>
                                                    <th style="width: 10%">imo</th>
                                                    <th style="width: 7%">Ship type</th>
                                                    <th style="width: 12%">Inspection port</th>
                                                    <th style="width: 18%">Inspection date(LMT)</th>
                                                    <th style="width: 7%">Total price</th>
                                                    <th style="width: 8%">Grading</th>
                                                    <th style="width: 8%">Surveyor</th>
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
        <shiro:hasPermission
                name="surveyor/inspection/addPoint">
            <div class="form-group col-md-6">
                <div class="input-group col-sm-12">
                    <input type="text" class="form-control">
                    <span class="input-group-btn">
                    <button class="btn blue comment-btn" type="button" onclick="submitComment(this)"
                            style="height: 24px;padding: 1px 8px">Submit</button>
                </span>
                </div>
            </div>
        </shiro:hasPermission>
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
    var inspectionTable;
    var starRatingNot = $("#star-rating-outer-not");
    var starRatingHave = $("#star-rating-outer-have");
    $(document).ready(function () {
        inspectionTable = $('#inspection_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            "ajax": {
                "url": "prepurchase/surveyor/record/inspection/list",
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
                    "data": "surveyor",
                    "render": function (data) {
                        return data.firstName + " " + data.lastName;
                    }
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
            "drawCallback": function (settings, json) {
                var rows = $('#inspection_table').find("tbody tr");
                rows.each(function (i, e) {
                    var row = inspectionTable.row($(this));
                    var data = row.data();
                    if (data != null) {
                        row.child(moreInfo(data)).show();
                    }
                })
            }
        });

    });

    function moreInfo(data) {
        var html = "";
        var surveyor = data.surveyor.firstName;
        var comment = data.comment;
        var surveyorGrade = comment.surveyorGrade;
        if (surveyorGrade == null || surveyorGrade == "") {
            var commentDom = starRatingNot.clone();
            commentDom.find(".op-point-div input[type='radio']").attr("name", "surveyorGrade")
            commentDom.find(".comment-btn").attr("data-id", comment.id)
            html += commentDom.html();
        } else {
            var commentDom = starRatingHave.clone();
            commentDom.find(".op-point-div input[value='" + surveyorGrade + "']").attr("checked", true);
            commentDom.find(".op-comment-div").html(comment.surveyorComment);
            html += commentDom.html();
        }
        var opGrade = comment.opGrade;
        if (opGrade != null && opGrade != "") {
            var commentDom = starRatingHave.clone();
            commentDom.find(".comment-label-div").html("Consignor : " + data.op.name);
            commentDom.find(".op-point-div input[value='" + opGrade + "']").attr("checked", true);
            commentDom.find(".op-comment-div").html(comment.opComment);
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
            data: {id: id, surveyorGrade: point, surveyorComment: comment},
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