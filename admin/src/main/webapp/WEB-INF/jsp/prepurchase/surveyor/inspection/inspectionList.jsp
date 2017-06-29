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
    .text-right {
        text-align: right;
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
                <table class="table table-striped table-bordered table-hover table-checkable order-column" id="inspection_table">
                        <thead>
                        <tr>
                            <th> Public date </th>
                            <th> Ship name </th>
                            <th> IMO </th>
                            <th> ship type </th>
                            <th> Inspection port </th>
                            <th> Inspection dates(LMT)</th>
                            <th> Consignor </th>
                            <th> Price </th>
                            <th> Surveyor </th>
                            <th> More details </th>
                            <th> Link to report </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr style="display: none">
                            <td colspan="12">

                            </td>
                        </tr>
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
        inspectionTable = $('#inspection_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,

            "ajax": {
                "url": "prepurchase/surveyor/inspection/list",
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
                    "data": "purchaseQuotation.location",
                },
                {
                    "data": "startDate",
                },
                {
                    "data": "op.name",
                },
                {
                    "data": "purchaseQuotation.totalPrice",
                },
                {
                    "data": "surveyor.firstName",
                },
                {
                    "data": "",
                },
                {
                    "data": "",
                },
            ],
            "columnDefs": [
                    {
                    "targets": 0,
                    "render": function (data, type, row) {
                        var publicDate = new Date(row.createDate).Format("dd/MM/yyyy");
                        return publicDate;
                    }
                },{
                    "targets": 5,
                    "render": function (data, type, row) {
                        var startDate = new Date(row.purchaseQuotation.startDate).Format("dd/MM/yyyy");
                        var endDate = new Date(row.purchaseQuotation.endDate).Format("dd/MM/yyyy");
                        return startDate + " - " + endDate;
                    }
                },{
                    "targets": 8,
                    "render": function (data, type, row) {
                        return row.surveyor.firstName + " " + row.surveyor.lastName;
                    }
                },{
                    "targets": 9,
                    "render": function (data, type, row) {
                        return '<a href="javascript:;" onclick="unfold(this)">View</a>&nbsp;<li class="fa fa-sort-desc"/>';
                    }
                },{
                "targets": 10,
                "render": function (data, type, row) {
                    var status = row.submitStatus;
                    if (status == 1) {
                        return '<a data-target="navTab" href="prepurchase/surveyor/reportEdit?inspectionId='+row.id+'" >View</a> <li class="fa fa-link"></li>';
                    }
                    if (status == 0) {
                        return '<a data-target="navTab" href="prepurchase/surveyor/reportEdit?inspectionId='+row.id+'" >Edit</a> <li class="fa fa-edit"></li>';
                    }
                    return ""
                }
                }
            ],
            "fnDrawCallback": function (settings, json) {
                var count =0;
                var rows = $('#inspection_table').find("tbody tr");
                rows.each(function (i, e) {
                    count++;
                    var row = inspectionTable.row($(this));
                    if(row.data()!=null){
                        $(this).after(moreInfo(row.data(),count))
                    }
                })
            },
            "initComplete": function () {
                $(".loi_button").each(function () {
                    initUploaders_surveyor_loi($(this).attr("id"), "shipinfo", "${staticPath}/",$(this));
                });
                $(".passport_button").each(function () {
                    initUploaders_surveyor_passport($(this).attr("id"), "shipinfo", "${staticPath}/",$(this));
                });
            },
            "oLanguage": { //国际化配置  
                "sProcessing" : "正在获取数据，请稍后...",
                "sLengthMenu" : "显示 _MENU_ 条",
                "sZeroRecords" : "没有您要搜索的内容",
                "sInfo" : "从 _START_ 到  _END_ 条记录 总记录数为 _TOTAL_ 条",
                "sInfoEmpty" : "记录数为0",
                "sInfoFiltered" : "(全部记录数 _MAX_ item)",
                "sInfoPostFix" : "",
                "sSearch" : "搜索",
                "sUrl" : "",
                "oPaginate": {
                    "sFirst" : "第一页",
                    "sPrevious" : "上一页",
                    "sNext" : "下一页",
                    "sLast" : "最后一页"
                }
            },
        });
    }
    function moreInfo(data,count) {
        var html='<tr style="display:none "><td colspan="11">';
        html += ' <div class="col-md-12" style="background-color: rgba(223, 222, 144, 0.58)">';
        html += '<div class="col-md-3" >';
        html += '<div class="col-md-12">';
        html += '<label class="control-label label-top">Ship Name：</label>';
        html += '<label style="width: auto;padding-left: 0px;" class="control-label label-top">'+data.shipDetail.shipName+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">IMO：</label>';
        html += '<label class="control-label">'+data.shipDetail.imo+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">ShipType：</label>';
        html += '<label class="control-label">'+data.shipDetail.shipType+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">Class：</label>';
        html += '<label class="control-label">'+data.shipDetail.shipClass+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">Flag：</label>';
        html += '<label class="control-label">'+data.shipDetail.flag+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">Build Year：</label>';
        html += '<label class="control-label">'+data.shipDetail.buildYear+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">Builder：</label>';
        html += '<label class="control-label">'+data.shipDetail.builder+'</label>';
        html += '</div>';
        html += '</div>';
        html += '<div class="col-md-3">';
        html += '<div class="col-md-12">';
        html += '<label class="control-label label-top">LOA(m)：</label>';
        html += '<label style="width: auto;padding-left: 0px;" class="control-label label-top">'+data.shipDetail.loa+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">Beam(m)：</label>';
        html += '<label class="control-label">'+data.shipDetail.beam+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">Dwt(ton)：</label>';
        html += '<label class="control-label">'+data.shipDetail.dwt+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">draft(m)：</label>';
        html += '<label class="control-label">'+data.shipDetail.draft+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">GT：</label>';
        html += '<label class="control-label">'+data.shipDetail.ggt+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">ex.Name：</label>';
        html += '<label class="control-label">'+data.shipDetail.exName+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">Call Sign：</label>';
        html += '<label class="control-label">'+data.shipDetail.callSign+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">LDT(ton)：</label>';
        html += '<label class="control-label">'+data.shipDetail.ldt+'</label>';
        html += '</div>';
        html += '</div>';
        html += '<div class="col-md-3">';
        html += '<div  class="col-md-6">';
        html += '<label class="control-label">Agency details:</label>';
        html += '</div>';
        html += '<div  class="col-md-12" style="margin-left: 10px">';
        html += '<label class="control-label">'+data.purchaseQuotation.agencyDetail+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">LOI：</label>';
        html += '<label class="control-label">';
        if(data.purchaseQuotation.loiUrl!=null && data.purchaseQuotation.loiUrl!=""){
            html +=  '<a download="download" class="btn btn-circle purple-sharp" href="'+data.purchaseQuotation.loiUrl+'">';
            html += '<li class="fa fa-download"></li>Download</a>';
        }

        html += '</label>';
        html += '</div>';
        html += '</div>';
        html += '<div class="col-md-3">';

        html +='<div  class="col-md-9">';
        html += '<label class="control-label">Our price & surveyour:</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">Price：</label>';
        html += '<label class="control-label">'+data.purchaseQuotation.totalPrice+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">Surveyor：</label>';
        html += '<label class="control-label">'+data.surveyor.firstName +''+data.surveyor.lastName+'</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">Surveyor CV：</label>';
        html += '<label class="control-label"><a data-model="dialog" href="surveyor/info?id='+data.surveyor.id+'">View</a></label>';
        html += '</div>';
        html += '<form method="post" action="prepurchase/surveyor/saveLoiPassport" >';
        html += '<input type="hidden" value="'+data.id+'" name="id"/>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">Passport：</label>';
        html += '<label class="control-label passport"><a  href="'+data.passportUrl+'" target="_blank">'+data.passport+'</a></label>';
        html += '<label class="control-label">';
        if(data.loi==null || data.loi==''){
            html += '<button id="passport_button'+count+'" type="button" class="btn btn-sm blue passport_button">';
            html += '<li class="fa fa-upload"></li>Browse';
            html += '</button>';
        }

        html += '</label>';
        html += '</div>';
        html += '<div class="col-md-12">';
        html += '<label class="control-label">LOI：</label>';
        html += '<label class="control-label loi"><a target="_blank" href="'+data.loiUrl+'">'+data.loi+'</a></label>';
        html += '<label class="control-label">';
        if(data.loi==null || data.loi==''){
            html +=  '<button id="loi'+count+'"  type="button" class="btn btn-sm blue loi_button">';
            html +=  '<li class="fa fa-upload"></li>Browse';
            html +=  '</button>';
        }
        html +=     '</label>';
        html +=     '</div>';
        html +=     '<div class="col-md-12">';
        html +=     '<div style="float: right">';
        html +=     '<label class="control-label">';
        if(data.loi==null || data.loi=='') {

            html += '<button type="button" class="btn green" onclick="submitLoiAndPassport(this)">Submit</button>';
        }
        html += '</label>';
        html += '</div>';
        html += '</div>';
        html += '</form>';
        html += '</div>';
        html += '</div></td></tr>';

        return html;
    }


</script>
<script>

    //展开
    function unfold(obj,loi) {

        $(obj).closest("tr").next().show();
        $(obj).closest("tr").css("background-color","yellow");
        $(obj).parent().html('<a href="javascript:;" onclick="merge(this)">View</a>&nbsp;<li class="fa fa-sort-up"></li>');
    }

    //合并
    function merge(obj) {
        $(obj).closest("tr").css("background-color","white");
        $(obj).parent().parent().next().hide();
        $(obj).parent().html('<a href="javascript:;" onclick="unfold(this)">View</a>&nbsp;<li class="fa fa-sort-desc"></li>');
    }

    function submitLoiAndPassport(obj) {
        if(check(obj)){
            $(obj).closest('form').ajaxSubmit({
                success:function (data) {
                    alert("提交成功");
                    $(obj).parent().parent().parent().prev().find("button").parent().html("");
                    $(obj).parent().parent().parent().prev().prev().find("button").parent().html("");
                    $(obj).parent().html("");

                },
                error:function () {

                }
            });
        }

    }
    function check(obj) {
        var loi=$(obj).parent().parent().parent().prev().find(".loi").find("a").html();
        var passport=$(obj).parent().parent().parent().prev().prev().find(".passport").find("a").html();
        if(loi=='' || passport==''){
            alert("请将信息上传完整");
            return false;
        }
        return true;
    }

</script>

