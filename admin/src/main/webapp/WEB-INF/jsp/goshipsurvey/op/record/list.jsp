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
                                    <div class="caption col-md-8">
                                        <i class="icon-social-dribbble font-blue-soft"></i>
                                        <span class="caption-subject font-blue-soft bold uppercase">My record</span>
                                    </div>
                                    <shiro:hasPermission name="op/quotation/add">
                                        <div class="col-md-4">
                                            <div class="btn-group">
                                                <a onclick="showModelForm(this)" data-url="op/quotation/add"
                                                   class="btn blue"><i class="fa fa-plus"></i> New quotation
                                                </a>
                                            </div>
                                        </div>
                                    </shiro:hasPermission>
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
                                                   id="onoff_op_record_quotation_table">
                                                <thead>
                                                <tr>
                                                    <th style="width: 15%">Ship name</th>
                                                    <th style="width: 10%">imo</th>
                                                    <th style="width: 10%">Ship type</th>
                                                    <th style="width: 15%">Inspection type</th>
                                                    <th style="width: 15%">Inspection port</th>
                                                    <%--<th style="width: 15%">Inspection date(LMT)</th>--%>
                                                    <th style="width: 15%">Estimate Date</th>
                                                    <th style="width: 10%">Total price</th>
                                                    <th style="width: 10%">Status</th>
                                                </tr>
                                                </thead>
                                            </table>
                                        </div>
                                        <div class="tab-pane fade" id="tab_1_2">
                                            <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                                   id="onoff_op_record_inspection_table">
                                                <thead>
                                                <tr>
                                                    <th style="width: 10%">Ship name</th>
                                                    <th style="width: 10%">imo</th>
                                                    <th style="width: 10%">Ship type</th>
                                                    <th style="width: 10%">Inspection type</th>
                                                    <th style="width: 10%">Inspection port</th>
                                                    <th style="width: 10%">Inspection date(LMT)</th>
                                                    <th style="width: 10%">Total price</th>
                                                    <th style="width: 10%">Surveyors/Company</th>
                                                    <th style="width: 10%">Inspection report</th>
                                                    <th style="width: 10%">Comment</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                </tbody>
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
<div id="modal_form" class="modal fade" role="dialog" aria-hidden="true"></div>
<a id="modal_form_switch" data-toggle="modal" href="#modal_form" style="display: none">a</a>
<script>
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


    var quotationTable;
    var inspectionTable;
    var starRatingNot = $("#star-rating-outer-not");
    var starRatingHave = $("#star-rating-outer-have");
    $(document).ready(function () {
        drawQuotationTable();
        drawInspectionTable();
    });

    function drawQuotationTable() {
        quotationTable = $('#onoff_op_record_quotation_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            'bStateSave': true,
            "ajax": {
                "url": "op/record/list/quotation",
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
                    "data": "inspectionType",
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
                    /*var startDate = new Date(row.startDate.replace(/-/g, "/")).Format("yyyy-MM-dd");
                    var endDate = new Date(row.endDate.replace(/-/g, "/")).Format("yyyy-MM-dd");*/
                    var estimateDate = new Date(row.estimateDate.replace(/-/g, "/")).Format("yyyy-MM-dd");
                    return estimateDate;
                }
            }],
        });
    }
    function drawInspectionTable() {
        inspectionTable = $('#onoff_op_record_inspection_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            'bStateSave': true,
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
                },
                {
                    "data": "quotation.inspectionType",
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
                    "data": "",
                },
                {
                    "data": "reportUrl",
                    "render": function (data) {
                        return "<a class='btn btn-sm green' target='_blank' href='" + data + "'>VIEW</a>";
                    }
                },
                {
                    "data": "",
                    "class": "comment-detail",
                    "render": function (data) {
                        return '<a href="javascript:void(0)">COMMENT</a>';
                    }
                },
            ],
            "columnDefs": [
                {
                    "targets": 5,
                    "render": function (data, type, row) {
                        var startDate = new Date(row.quotation.startDate.replace(/-/g, "/")).Format("yyyy-MM-dd");
                        var endDate = new Date(row.quotation.endDate.replace(/-/g, "/")).Format("yyyy-MM-dd");
                        return startDate + " to " + endDate;
                    }
                },
                {
                    "targets": 7,
                    "render": function (data, type, row) {
                        return row.surveyor.firstName + ' ' + row.surveyor.lastName + " / " + row.company.name;
                    }
                },
            ],
        });
        inspectionTable.on('click', 'td.comment-detail', function () {
            var tr = $(this).closest('tr');
            var row = inspectionTable.row(tr);
            var flag = tr.attr("data-not-first");
            if (flag) {
                tr.next().toggle();
            } else {
                row.child(moreInfo(row.data())).show();
                tr.next().addClass("detail-row");
                tr.attr("data-not-first", true);
            }
        });
    }


    function moreInfo(data) {
        var html = "";
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