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
<div class="row">
    <div class="col-md-12">
        <div class="portlet light bordered">
            <div class="portlet-body">
                <div class="table-toolbar">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet light">
                                <div class="portlet-title">
                                    <div class="caption col-md-4">
                                        <i class="icon-social-dribbble font-blue-soft"></i>
                                        <span class="caption-subject font-blue-soft bold uppercase">Surveyor</span>
                                    </div>
                                    <div class="col-md-4">
                                        <input id="name"  type="text"
                                               class="form-control" name="name"
                                               placeholder="请输入验船师名称" style="width: 180px"/>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="btn-group">
                                            <a type="button" class="btn green" data-target="navTab" href="surveyor/add">+ Add new
                                                surveyor</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="tab-content">
                                        <div class="tab-pane fade active in" id="tab_1_1">
                                            <table class="table  table-checkable table-bordered"
                                                   id="surveyor_table">
                                                <thead>
                                                <tr>
                                                    <th width="5%">
                                                        <input type='checkbox' id="defaultCheck"/>
                                                    </th>
                                                    <th width="15%">验船师名称</th>
                                                    <th width="20%">职位</th>
                                                    <th width="20%">电话</th>
                                                    <th width="30%">邮箱</th>
                                                    <th width="35%">微信是否绑定</th>
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
    $('.date-picker').datepicker({autoclose: true, todayHighlight: true, format: 'yyyy-mm-dd'});

    var surveyorTable;
    $(document).ready(function () {
        drawTable();
    });

    function drawTable() {
        surveyorTable = $('#surveyor_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "autoWidth": false,
            "processing": true,
            "serverSide": true,
            'bStateSave': true,
            "ajax": {
                "url": "surveyor/list",
                "type": "get",
                "data": function (data) {
                    data.name = $("#name").val();
                   /* data.startDate = $("#startDate").val();
                    data.endDate = $("#endDate").val();
                    data.port = $("#port").val();*/
                }
            },
            "language": {
                "url": "https://windyeel.oss-cn-shanghai.aliyuncs.com/global/plugins/datatables/cn.txt"
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
                        return '<a data-target="navTab" href="surveyor/edit?id=' + row.id + '">' + row.firstName + '</a>';
                    }
                },
                {
                    "targets": 2,
                    "render": function (data, type, row) {
                        return row.position;
                    }
                },
                {
                    "targets": 3,
                    "render": function (data, type, row) {
                        return row.tel;
                    }
                },
                {
                    "targets": 4,
                    "render": function (data, type, row) {
                        return row.email;
                    }
                },{
                    "targets": 5,
                    "render": function (data, type, row) {
                        if(row.user==null){
                            return '未绑定';
                        }
                        return '已绑定';
                    }
                }],
            "drawCallback": function (settings) {
                drawICheck('defaultCheck', 'chx_default');
            },
        });
    }

    function refreshTable(toFirst) {
        if (toFirst) {//表格重绘，并跳转到第一页
            surveyorTable.draw();
        } else {//表格重绘，保持在当前页
            surveyorTable.draw(false);
        }
    }

    $("#name").change(function () {
        refreshTable(false)
    });

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

</script>
<jsp:include page="editTime.jsp"/>