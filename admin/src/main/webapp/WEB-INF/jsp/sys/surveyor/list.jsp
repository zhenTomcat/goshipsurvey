<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<style>
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
        <form class="form-horizontal">
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
                    <select id="port"
                            name="surveyPort"
                            class="form-control js-data-example-ajax">
                    </select>
                </div>
            </div>
            <div class="form-group col-md-2" style="text-align: center">
                <button type="button" class="btn" onclick="refreshTable(true)">Search</button>
                <button id="reset-btn" type="reset" class="btn">Clean</button>
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
                <th width="5%">
                    <input type='checkbox' id="defaultCheck"/>
                </th>
                <th width="15%">Surveyor name</th>
                <th width="40%">Available port</th>
                <th width="20%">Type of survey</th>
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
                {
                    "data": "surveyPort",
                },
            ],
            "columnDefs": [
                {
                    "targets": 1,
                    "render": function (data, type, row) {
                        return '<a data-target="navTab" href="surveyor/edit?id=' + row.id + '">' + row.firstName + " " + row.lastName + '</a>';
                    }
                },
                {
                    "targets": 2,
                    "render": function (data, type, row) {
                        var text = row.surveyPort || "nothing";
                        return '<a href="surveyor/editPort?id=' + row.id + '" data-model="dialog">' + text + '</a>';
                    }
                },
                {
                    "targets": 3,
                    "render": function (data, type, row) {
                        var text = row.surveyType || "nothing";
                        return '<a href="surveyor/editSurveyType?id=' + row.id + '" data-model="dialog">' + text + '</a>';
                    }
                },
                {
                    "targets": 4,
                    "render": function (data, type, row) {
                        var surveyTimeStart = new Date(row.surveyTimeStart).Format("yyyy-MM-dd");
                        var surveyTimeEnd = new Date(row.surveyTimeEnd).Format("yyyy-MM-dd");
//                    return '<a href="surveyor/editTime?id=' + row.id + '" data-model="dialog">' + surveyTimeStart + ' to ' + surveyTimeEnd + '</a>';
                        return '<a href="#time_modal" data-toggle="modal" onclick="changeEditTimeId(' + row.id + ')">' + surveyTimeStart + ' to ' + surveyTimeEnd + '</a>';
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


    var PortMultiSelect = function () {
        var handleDemo = function () {
            $.fn.select2.defaults.set("theme", "bootstrap");
            var placeholder = "Select a State";
            $(".select2, .select2-multiple").select2({
                placeholder: placeholder,
                width: null
            });
            $(".select2-allow-clear").select2({
                allowClear: true,
                placeholder: placeholder,
                width: null
            });
            function formatRepo(repo) {
                if (repo.loading) return repo.text;
                var markup = repo.portEn;

                return markup;
            }

            function formatRepoSelection(repo) {
                return repo.portEn || repo.text;
            }

            $(".js-data-example-ajax").select2({
                width: "off",
                ajax: {
                    url: "port/searchList",
                    dataType: 'json',
                    delay: 10,
                    data: function (params) {
                        return {
                            keyword: params.term,
                            page: params.page
                        };
                    },
                    processResults: function (data, page) {
                        return {
                            results: data.list
                        };
                    },
                    cache: true
                },
                escapeMarkup: function (markup) {
                    return markup;
                },
                minimumInputLength: 1,
                templateResult: formatRepo,
                templateSelection: formatRepoSelection
            });
            $("button[data-select2-open]").click(function () {
                $("#" + $(this).data("select2-open")).select2("open");
            });
            $(":checkbox").on("click", function () {
                $(this).parent().nextAll("select").prop("disabled", !this.checked);
            });
            $(".select2, .select2-multiple, .select2-allow-clear, .js-data-example-ajax").on("select2:open", function () {
                if ($(this).parents("[class*='has-']").length) {
                    var classNames = $(this).parents("[class*='has-']")[0].className.split(/\s+/);

                    for (var i = 0; i < classNames.length; ++i) {
                        if (classNames[i].match("has-")) {
                            $("body > .select2-container").addClass(classNames[i]);
                        }
                    }
                }
            });
            $(".js-btn-set-scaling-classes").on("click", function () {
                $("#select2-multiple-input-sm, #select2-single-input-sm").next(".select2-container--bootstrap").addClass("input-sm");
                $("#select2-multiple-input-lg, #select2-single-input-lg").next(".select2-container--bootstrap").addClass("input-lg");
                $(this).removeClass("btn-primary btn-outline").prop("disabled", true);
            });
        }
        return {
            init: function () {
                handleDemo();
            }
        };
    }();

    if (App.isAngularJsApp() === false) {
        jQuery(document).ready(function () {
            PortMultiSelect.init();
        });
    }


    function changeEditTimeId(id) {
        $("#edit-time-id").val(id);
    }


    $("#reset-btn").on("click", function () {
        $("#port").html("");
    })

</script>
<jsp:include page="editTime.jsp"/>