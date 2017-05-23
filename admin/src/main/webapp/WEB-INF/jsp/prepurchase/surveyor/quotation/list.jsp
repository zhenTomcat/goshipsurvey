<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    table th, td {
        text-align: center;
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
                                        <span class="caption-subject font-blue-soft bold uppercase">Available vessels</span>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="caption col-md-8 margin-bottom-15">
                                        <span class="caption-subject font-blue-soft bold uppercase">Applied</span>
                                    </div>
                                    <div class="tab-pane fade active in" id="tab_1_1">
                                        <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                               id="quotation_table">
                                            <thead>
                                            <tr>
                                                <th width="9%">Public date</th>
                                                <th width="9%">Ship name</th>
                                                <th width="9%">IMO</th>
                                                <th width="9%">Ship Type</th>
                                                <th width="9%">Inspection port</th>
                                                <th width="9%">Inspection date(LMT)</th>
                                                <th width="9%">Consignor</th>
                                                <th width="9%">Price</th>
                                                <th width="9%">Surveyor</th>
                                                <th width="9%">Apply</th>
                                                <th width="9%">More detail</th>
                                            </tr>
                                            <tbody></tbody>
                                            </thead>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    var quotationTable = $("#quotation_table");//已申请的quotation表格
    $(document).ready(function () {
        drawTable();
    })

    //绘制页面表格
    function drawTable() {
        quotationTable = $('#quotation_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            "ajax": {
                "url": "prepurchase/surveyor/quotation/list",
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
                    "data": "createDate",
                    "render": function (data) {
                        return new Date(data).Format("yyyy-MM-dd");
                    }
                },
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
                    "data": "startDate",
                },
                {
                    "data": "createBy",
                },
                {
                    "data": "application.price",
                },
                {
                    "data": "application.surveyor.lastName"
                },
            ],
            "columnDefs": [{
                "targets": 5,
                "render": function (data, type, row) {
                    var startDate = new Date(row.startDate).Format("yyyy-MM-dd");
                    var endDate = new Date(row.endDate).Format("yyyy-MM-dd");
                    return startDate + " to " + endDate;
                }
            }, {
                "targets": 9,
                "render": function (data, type, row) {
                    var application = row.application;
                    console.log("ooo" + application);
                    if (application == null) {
                        console.log("aaa")
                        return "<button class='btn green'>apply</button>";
                    }
                    return "";
                }
            }, {
                "targets": 10,
                "class": "details-control",
                "render": function (data, type, row) {
                    return "<a href='javascript:void(0)'>VIEW</a>"
                }
            }
            ],
        });

        quotationTable.on('click', 'td.details-control', function () {
            var tr = $(this).closest('tr');
            var row = quotationTable.row(tr);
            if (row.child.isShown()) {
                row.child.hide();
//                tr.removeClass('shown');
            }
            else {
                row.child(moreInfo(row.data())).show();
//                tr.addClass('shown');
            }
        });
    }

    function moreInfo(data) {
        var html = '';
        var shipDetail = data.shipDetail;
        html += '<div class="col-md-3">';
        html += '<label class="col-md-6 text-right">Ship name:</label><label class="col-md-6 text-left">' + shipDetail.shipName + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">IMO:</label><label class="col-md-6 text-left">' + shipDetail.imo + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Type:</label><label class="col-md-6 text-left">' + shipDetail.shipType + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">ex.Name:</label><label class="col-md-6 text-left">' + shipDetail.exName + '&nbsp;</label>';
        html += '<label class="col-md-6 text-right">Class:</label><label class="col-md-6 text-left">' + shipDetail.shipClass + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Flag:</label><label class="col-md-6 text-left">' + shipDetail.flag + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Build Year:</label><label class="col-md-6 text-left">' + shipDetail.buildYear + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Builder:</label><label class="col-md-6 text-left">' + shipDetail.builder + '&nbsp</label>';
        html += "</div>";
        html += '<div class="col-md-3">';
        html += '<label class="col-md-6 text-right">LOA(m):</label><label class="col-md-6 text-left">' + shipDetail.loa + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Beam(m):</label><label class="col-md-6 text-left">' + shipDetail.beam + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Dwt(ton):</label><label class="col-md-6 text-left">' + shipDetail.dwt + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Draft(m):</label><label class="col-md-6 text-left">' + shipDetail.draft + '&nbsp;</label>';
        html += '<label class="col-md-6 text-right">GT:</label><label class="col-md-6 text-left">' + shipDetail.ggt + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">LDT(ton):</label><label class="col-md-6 text-left">' + shipDetail.ldt + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Call Sign:</label><label class="col-md-6 text-left">' + shipDetail.callSign + '&nbsp</label>';
        html += "</div>";
        html += '<div class="col-md-3">';
        html += '<label class="col-md-12 text-left">Agency details:</label>';
        html += '<div class="col-md-12 text-left" style="padding-left:30px; ">' + data.agencyDetail + '</div>';
        var agencyUrl = data.agencyUrl;
        if (agencyUrl != null && agencyUrl != "") {
            html += '<a target="_blank" style="float: right" href="' + agencyUrl + '" class="btn green">View</a>';
        }
        html += "</div>";
        html += '<div class="col-md-3">';
        html += '<label class="col-md-12 text-left">Our price & surveyor:</label>';
        html += '<div class="col-md-12 form-group form-md-line-input "><label class="control-label col-md-5">Price:</label> <div class="input-group col-md-7"> <input type="text" class="form-control" id="shipName" name="shipName"> </div></div>';
        html += '<div class="col-md-12 form-group form-md-line-input "><label class="control-label col-md-5 " style="padding-top: 5px">Surveyor:</label> <div class="input-group col-md-7"> <select  class="form-control surveyor-select"><option>1</option></select> </div></div>';
        html += '<div class="col-md-12 form-group form-md-line-input "><label class="control-label col-md-5 " style="padding-top: 5px">SurveyorCV:</label>  <a class="col-md-3" href="" style="padding-top: 8px; vertical-align: middle">VIEW</a></div>';

        html += "</div>";

        return html;
    }

    //提交申请
    function addApplication(obj, quotationId) {
        var priceInput = $(obj).parents("tr").find(".price-input");
        var totalPrice = priceInput.val();
        if (totalPrice == null || (totalPrice.trim() == "") || (isNaN(totalPrice)) || totalPrice < 0) {
            priceInput.tips({
                side: 1,
                msg: "请输入正确的金额",
                bg: '#FF5080',
                time: 5,
            });
            return;
        }
        $.ajax({
            url: "surveyor/quotationApplication/add",
            type: "post",
            data: {quotationId: quotationId, totalPrice: totalPrice},
            success: function (data) {
                if (data.success) {
                    drawTable();
                } else {
                    alert("addApplication error");

                }
            },
            error: function () {
                alert("addApplication error");
            },
        })
    }
</script>




