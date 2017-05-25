<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<style>
    .timeline .timeline-badge {
        float: none;
    }

    .timeline .timeline-icon {
        background-color: #e1e5ec;
        display: table;
        padding-top: 0px;
        padding-left: 0px;
        vertical-align: middle;
        align-content: center;
        text-align: center;
    }

    .timeline:before {
        background: #e1e5ec;
    }

    .timeline-content {
        display: table-cell;
        vertical-align: middle;
        width: 100%;
        text-align: center;
    }

    .timeline-icon.selected {
        background-color: #32c5d2;
        color: white
    }

    .search-input :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
        color: white !important;
    }

    .search-input ::-moz-placeholder { /* Mozilla Firefox 19+ */
        color: white !important;
    }

    .search-input:-ms-input-placeholder {
        color: white !important;
    }

    .search-input::-webkit-input-placeholder {
        color: white !important;
    }

    .quotation-content {
        margin-top: 15px
    }

    .btn-back {
        float: left;
        margin-left: 20px;
    }

    table, th, td {
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

    .head-set {
        padding-right: 3px;
        padding-left: 3px;
    }


</style>
<h1 style="text-align: center;background-color: #3598dc;color: white;margin-top: 0">Surveyor management</h1>
<div class="row">
    <div class="col-md-12">
        <form class="form-horizontal" action="op/quotation/add" method="post" id="quotation-add-form">
            <div class="form-group col-md-3">
                <label class="col-md-6 control-label head-set">Surveyor name</label>
                <div class="col-md-6">
                    <input id="name" type="text"
                           class="form-control required head-set">
                </div>
            </div>
            <div class="form-group col-md-5">
                <label class="control-label col-sm-3 head-set">Available time </label>
                <div class="col-sm-9" style="padding-left: 7.5px">
                    <div class="input-group input-large date-picker input-daterange">
                        <input id="startDate" type="text" class="form-control required head-set">
                        <span class="input-group-addon"> to </span>
                        <input id="endDate" type="text" class="form-control required head-set">
                    </div>
                </div>
            </div>
            <div class="form-group col-md-3">
                <label class="col-sm-6 control-label">Available port</label>
                <div class="col-sm-6">
                    <input id="port" type="text"
                           class="form-control ">
                </div>
            </div>
            <div class="form-group col-md-2" style="text-align: center">
                <button type="button" class="btn" onclick="refreshTable(true)">Search</button>
                <button type="reset" class="btn">Clean</button>
            </div>
        </form>
    </div>
    <hr style="width: 95%;margin: auto;margin-bottom:10px">
    <div class="col-md-12">
        <div style="margin-bottom: 10px;margin-left: 20px;">
            <a type="button" class="btn btn-circle green" data-target="navTab" href="surveyor/add">+ Add new
                surveyor</a>
            <button data-url="surveyor/batchDelete" data-msg="确定批量删除吗？" data-model="ajaxToDo"
                    class="btn  btn-circle  green"
                    data-checkbox-name="chx_default" data-callback="refreshTable">Delete
                <i class="fa fa-times"></i>
            </button>
        </div>
        <table class="table  table-checkable table-bordered"
               id="surveyor_table">
            <thead>
            <tr>
                <th width="10%">
                    <input type='checkbox' id="defaultCheck"/>
                </th>
                <th width="20%">Surveyor name</th>
                <th width="40%">Available port</th>
                <th width="30%">Available time</th>
            </tr>
            <tbody></tbody>
            </thead>
        </table>
    </div>
</div>

<script>
    $('.date-picker').datepicker({autoclose: true, todayHighlight: true, format: 'yyyy-mm-dd'});

    if (jQuery().datepicker) {
        $('.date-picker').datepicker({
            rtl: App.isRTL(),
            orientation: "left",
            autoclose: true,
            startDate: new Date(),
            format: 'yyyy-mm-dd'
        });
        $('body').removeClass("modal-open"); // fix bug when inline picker is used in modal
    }


    var surveyorTable;
    $(document).ready(function () {
        surveyorTable = $('#surveyor_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "autoWidth": false,
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": "surveyor/list",
                "type": "get",
                "data": function (data) {
                    data.name = $("#name").val();
                    data.startDate = $("#startDate").val();
                    data.endDate = $("#endDate").val();
                    data.port = $("#port").val();
                }
            },
            "language": {
                "url": "http://windyeel.oss-cn-shanghai.aliyuncs.com/global/plugins/datatables/cn.txt"
            },
            "createdRow": function (row, data, index) {
                $('td:eq(0)', row).html("<input type='checkbox' name='chx_default' value='" + data.id + "'/>");
            },
            "lengthMenu": [[5, 40, 60], [5, 40, 60]],
            "columns": [
                {"data": "id", "orderable": false},
                {"data": "lastName"},
                {"data": "firstName"},
            ],
            "columnDefs": [{
                "targets": 1,
                "render": function (data, type, row) {
                    return '<a data-target="navTab" href="surveyor/edit?id=' + row.id + '">' + row.firstName + '</a>';
                }
            }, {
                "targets": 3,
                "render": function (data, type, row) {
                    var surveyTimeStart = new Date(row.surveyTimeStart).Format("yyyy-MM-dd");
                    var surveyTimeEnd = new Date(row.surveyTimeEnd).Format("yyyy-MM-dd");
                    return surveyTimeStart + " to " + surveyTimeEnd;
                }
            }],
            "drawCallback": function (settings) {
                drawICheck('defaultCheck', 'chx_default');
            },
        });
    });

    function refreshTable(toFirst) {
        if (toFirst) {//表格重绘，并跳转到第一页
            surveyorTable.draw();
        } else {//表格重绘，保持在当前页
            surveyorTable.draw(false);
        }
    }
</script>
