<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<style>
    table th, td {
        text-align: center;
    }

</style>
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title" >
                <center><div class="caption"><h3>Inspections</h3></div></center>
            </div>
            <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover table-checkable order-column" id="pre_op_inspection_table">
                        <thead>
                        <tr>
                            <th style="width: 15%"> Ship name </th>
                            <th> IMO </th>
                            <th> ship type </th>
                            <th> Inspection port </th>
                            <th> Inspection dates(LMT)</th>

                            <th> Surveyor/Company </th>
                            <th> Passport </th>
                            <th> LOI </th>

                            <th> Price </th>
                            <th> Grading </th>
                            <th> Link to report </th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
</div>
<script>
    var inspectionTable = null;

    $(document).ready(function () {
        drawTable();
    })

    function drawTable() {
        inspectionTable = $('#pre_op_inspection_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            'bStateSave': true,
            "ajax": {
                "url": "prepurchase/op/inspection/list",
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
                    "data": "purchaseQuotation.location",
                },
                {
                    "data": "startDate",
                },
                {
                    "data": "",
                },
                {
                    "data": "passport",
                },
                {
                    "data": "loi",
                },
                {
                    "data": "purchaseQuotation.totalPrice",
                },
                {
                    "data": "totalGrade",
                },
                {
                    "data": "",
                }
            ],
            "columnDefs": [
                {
                    "targets": 4,
                    "render": function (data, type, row) {
                        var startDate = new Date(row.purchaseQuotation.startDate).Format("dd/MM/yyyy");
                        var endDate = new Date(row.purchaseQuotation.endDate).Format("dd/MM/yyyy");
                        return startDate + " - " + endDate;
                    }
                },{
                    "targets": 5,
                    "render": function (data, type, row) {
                        var td='<a data-model="dialog" href="surveyor/info?id='+row.surveyor.id+'">'+row.surveyor.firstName+' '+row.surveyor.lastName+'</a>/';
                           td+='<a data-model="dialog" href="user/companyInfo?id='+row.companyId+'">'+row.op.name+'</a>';
                        return td;
                    }
                },{
                    "targets": 6,
                    "render": function (data, type, row) {
                            return '<a download="'+row.passport+'" href="'+row.passportUrl+'">'+row.passport+'</a>';
                    }
                },{
                    "targets": 7,
                    "render": function (data, type, row) {
                            return '<a download="'+row.loi+'" href="'+row.loiUrl+'">'+row.loi+'</a>';
                    }
                },{
                    "targets": 9,
                    "render": function (data, type, row) {
                        if(row.submitStatus==1){
                            return row.totalGrade;
                        }
                        return "";
                    }
                },{
                    "targets": 10,
                    "render": function (data, type, row) {
                        if(row.submitStatus==1){
                            return '<a class="ajaxify"  data-target="navTab" href="prepurchase/op/reportInfo?reportId='+row.inspectionReportId+'" >View</a> <li class="fa fa-link"></li>';
                        }
                        return "";
                    }
                }
            ]
        });
    }


</script>

