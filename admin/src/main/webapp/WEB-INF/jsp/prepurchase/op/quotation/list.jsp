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

    .text-left {
        text-align: left;
    }

    .text-right {
        text-align: right;
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
                                        <span class="caption-subject font-blue-soft bold uppercase">Quotations</span>
                                    </div>
                                    <shiro:hasPermission name="op/quotation/add">
                                        <div class="col-md-4">
                                            <div class="btn-group">
                                                <a href="prepurchase/op/quotation/add" data-target="navTab"
                                                   class="btn blue"><i class="fa fa-plus"></i> New quotation
                                                </a>
                                            </div>
                                        </div>
                                    </shiro:hasPermission>
                                </div>
                                <div class="portlet-body">
                                    <div class="tab-content">
                                        <div class="tab-pane fade active in" id="tab_1_1">
                                            <table class="table  table-checkable table-bordered"
                                                   id="quotation_table">
                                                <thead>
                                                <tr>
                                                    <th width="15%">Ship name</th>
                                                    <th width="10%">imo</th>
                                                    <th width="10%">Ship type</th>
                                                    <th width="15%">Inspection port</th>
                                                    <th width="25%">Inspection date(LMT)</th>
                                                    <th width="10%">Available surveyors</th>
                                                    <th width="10%">Status</th>
                                                    <th width="10%">More Detail</th>
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
<script>
    var quotationTable = $("#quotation_table");
    $(document).ready(function () {
        drawTable();
    })

    function drawTable() {
        quotationTable = $('#quotation_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            "ajax": {
                "url": "prepurchase/op/quotation/list",
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
                    "data": "applicationCount",
                },
                {
                    "data": "publicStatus",
                },
                {
                    "data": "quotationStatus"
                },
            ],
            "columnDefs": [{
                "targets": 4,
                "render": function (data, type, row) {
                    var startDate = new Date(row.startDate).Format("yyyy-MM-dd");
                    var endDate = new Date(row.endDate).Format("yyyy-MM-dd");
                    return startDate + " to " + endDate;
                }
            }, {
                "targets": 6,
                "render": function (data, type, row) {
                    var status = row.publicStatus;
                    if (status == 1) {
                        if (row.applicationCount == 0) {
                            return 'Quotation..';
                        }
                        return '<a data-target="navTab" href="prepurchase/op/quotation/choose?quotationId=' + row.id + '">Go to choose surveyor</a>';
                    }
                    if (status == 2) {
                        return '<a data-target="navTab" href="prepurchase/op/quotation/choose?quotationId=' + row.id + '">Chosen</a>';
                    }
                    if (status == 3) {
                        return 'Cancelled';
                    }
                    return ""
                }
            }, {
                "targets": 7,
                "class": "details-control",
                "render": function (data, type, row) {
                    return '<a  href="javascript:void(0)">VIEW</a>';
                }
            }
            ],
        });

        quotationTable.on('click', 'td.details-control', function () {
            var tr = $(this).closest('tr');
            var row = quotationTable.row(tr);
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
        var html = '';
        var shipDetail = data.shipDetail;
        html += '<div class="col-md-4">';
        html += '<label class="col-md-6 text-right">Ship name:</label><label class="col-md-6 text-left">' + shipDetail.shipName + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">IMO:</label><label class="col-md-6 text-left">' + shipDetail.imo + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Type:</label><label class="col-md-6 text-left">' + shipDetail.shipType + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">ex.Name:</label><label class="col-md-6 text-left">' + shipDetail.exName + '&nbsp;</label>';
        html += '<label class="col-md-6 text-right">Class:</label><label class="col-md-6 text-left">' + shipDetail.shipClass + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Flag:</label><label class="col-md-6 text-left">' + shipDetail.flag + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Build Year:</label><label class="col-md-6 text-left">' + shipDetail.buildYear + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Builder:</label><label class="col-md-6 text-left">' + shipDetail.builder + '&nbsp</label>';
        html += "</div>";
        html += '<div class="col-md-4">';
        html += '<label class="col-md-6 text-right">LOA(m):</label><label class="col-md-6 text-left">' + shipDetail.loa + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Beam(m):</label><label class="col-md-6 text-left">' + shipDetail.beam + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Dwt(ton):</label><label class="col-md-6 text-left">' + shipDetail.dwt + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Draft(m):</label><label class="col-md-6 text-left">' + shipDetail.draft + '&nbsp;</label>';
        html += '<label class="col-md-6 text-right">GT:</label><label class="col-md-6 text-left">' + shipDetail.ggt + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">LDT(ton):</label><label class="col-md-6 text-left">' + shipDetail.ldt + '&nbsp</label>';
        html += '<label class="col-md-6 text-right">Call Sign:</label><label class="col-md-6 text-left">' + shipDetail.callSign + '&nbsp</label>';
        html += "</div>";
        html += '<div class="col-md-4">';
        html += '<label class="col-md-12 text-left">Agency details:</label>';
        html += '<div class="col-md-12 text-left" style="padding-left:30px; ">' + data.agencyDetail + '</div>';
        var agencyUrl = data.agencyUrl;
        if (agencyUrl != null && agencyUrl != "") {
            html += '<a target="_blank" style="float: left;margin-left:10px" href="' + agencyUrl + '" class="btn green">View</a>';
        }
        html += '<label class="col-md-12 text-left margin-top-10">Loi:</label>';
        var loiUrl = data.loiUrl;
        if (loiUrl != null && loiUrl != "") {
            html += '<a target="_blank"  style="float: left;margin-left:10px" href="' + loiUrl + '" class="btn green">View</a>';
        }
        html += "</div>";

        return html;
    }


    function refreshTable(toFirst) {
        if (toFirst) {//表格重绘，并跳转到第一页
            quotationTable.draw();
        } else {//表格重绘，保持在当前页
            quotationTable.draw(false);
        }
    }


</script>




