<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<style>

</style>
<h1 style="text-align: center;background-color: #3598dc;color: white;margin-top: 0">Surveyor management</h1>
<div class="row">
    <div class="col-md-12">
        <form class="form-horizontal" action="op/quotation/add" method="post" id="quotation-add-form">
        </form>
    </div>
    <div class="col-md-12">
        <div style="float:left;margin-bottom: 10px;margin-left: 20px;" class="col-md-3">
            <a type="button" id="back-btn" class="btn btn-circle blue" data-target="navTab" href="surveyor">Back to
                Surveyor list</a>
        </div>
        <label class="col-md-6" style="font-size: 24px;text-align: center">Surveyor Curriculum Vitae</label>
        <hr style="width: 95%;margin: auto;margin-bottom:10px">
    </div>
    <div class="col-md-12">
        <div class="profile-sidebar">
            <div class="portlet light profile-sidebar-portlet ">
                <div class="profile-userpic">
                    <img onerror="nofind(2)" src="${surveyor.portraitUrl}" id="head-img"
                         class="img-responsive" alt=""></div>
                <div class="profile-usertitle">
                    <div class="profile-usertitle-name">
                        <button type="button" id="change-head-img-btn">Change image</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="profile-content">
            <div class="row">
                <div class="col-md-12">
                    <div class="portlet light ">
                        <div class="portlet-body">
                            <div class="tab-content">
                                <div class="tab-pane active">
                                    <form id="add-surveyor-form" action="surveyor/addComplete" method="post">
                                        <div class="form-group col-md-6">
                                            <label class="control-label">First name</label>
                                            <input type="text" class="form-control" name="firstName"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-label">Last name</label>
                                            <input type="text" class="form-control" name="lastName"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-label">Nationality</label>
                                            <input type="text" class="form-control" name="nationality"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-label">Personal Email</label>
                                            <input type="text" class="form-control" name="email"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-label">Mobile number</label>
                                            <input type="text" class="form-control" name="tel"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-labe">Available survey time from</label>
                                            <div class="input-group input-large date-picker input-daterange">
                                                <input type="text" class="form-control required" name="surveyTimeStart">
                                                <span class="input-group-addon"> to </span>
                                                <input type="text" class="form-control required" name="surveyTimeEnd">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label>Available Ship type</label>
                                            <div class="mt-checkbox-inline">
                                                <c:forEach items="${shipType}" var="type">
                                                    <label class="mt-checkbox col-sm-3">
                                                        <input type="checkbox" value="${type.value}" name="shipType">
                                                            ${type.des}
                                                        <span></span>
                                                    </label>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label class=" control-label">Available survey port</label>
                                            <div>
                                                <select id="select2-button-addons-single-input-group-sm"
                                                        name="surveyPort"
                                                        class="form-control js-data-example-ajax" multiple>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label class="control-label">Surveyor's profile</label>
                                            <textarea class="form-control" rows="5"
                                                      name="surveyorProfile"></textarea>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label class="control-label">Surveyor's experience</label>&nbsp;
                                            <button id="add-row-btn" type="button" class="btn btn-sm green"
                                                    style="padding: 2px 5px" onclick="TableDeal.addRow()">+ Add new
                                            </button>
                                            <table class="table  table-checkable table-bordered"
                                                   id="experience_table">
                                                <thead>
                                                <tr>
                                                    <th width="25%">Time</th>
                                                    <th width="15%">Ship type</th>
                                                    <th width="15%">Company</th>
                                                    <th width="40%">Work content</th>
                                                    <th width="5%">Delete</th>
                                                </tr>
                                                <tbody>
                                                <tr>
                                                    <td><input type="text" class="date-picker form-control"
                                                               style="width:45%;display: inline-block">to<input
                                                            type="text"
                                                            class="form-control date-picker"
                                                            style="width:45%;display: inline-block"></td>
                                                    <td><input type="text" class=" form-control"></td>
                                                    <td><input type="text" class=" form-control"></td>
                                                    <td><input type="text" class=" form-control"></td>
                                                    <td>
                                                        <button onclick="" type="button" class="btn red">Delete</button>
                                                    </td>
                                                </tr>
                                                </tbody>
                                                </thead>
                                            </table>
                                        </div>
                                        <div class="margiv-top-10 col-md-12">
                                            <button type="button" onclick="addSurveyor(this)" class="btn green"> Save
                                                Changes
                                            </button>
                                        </div>
                                    </form>
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

    if (jQuery().datepicker) {
        $('.date-picker').datepicker({
            rtl: App.isRTL(),
            orientation: "left",
            autoclose: true,
            startDate: new Date(),
            format: 'yyyy-mm-dd'
        });
    }

    function addSurveyor(obj) {
        var btn = $(obj);
        btn.attr("disabled", true);
        console.log(TableDeal.getData());
        if (check()) {
            $("#add-surveyor-form").ajaxSubmit({
                data: {myList: JSON.stringify(TableDeal.getData())},
                success: function (data) {
                    if (data.success) {
                        alert("success");
                        $("#back-btn").click();
                    } else {
                        alert("failure");
                    }
                },
                error: function () {
                    alert("error");
                    btn.attr("disabled", false);
                }
            })
        } else {
            btn.attr("disabled", false);
        }

    }

    function check() {
        return true;
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


    var experienceTable = $("#experience_table");
    var TableDeal = function () {
        var row = '<tr><td><input type="text" class="date-picker form-control"  style="width:45%;display: inline-block">to<input type="text" class="form-control date-picker" style="width:45%;display: inline-block"></td> <td><input type="text" class=" form-control"></td> <td><input type="text" class=" form-control"></td> <td><input type="text" class="form-control"></td> <td> <button onclick="TableDeal.deleteRow(this)" type="button" class="btn red">Delete</button> </td> </tr>'
        return {
            addRow: function () {
                experienceTable.append(row);
                $('.date-picker').datepicker({autoclose: true, todayHighlight: true, format: 'yyyy-mm-dd'});
            },
            deleteRow: function (obj) {
                $(obj).closest("tr").remove();
            },
            getData: function () {
                var experienceList = [];
                experienceTable.find("tbody tr").each(function (i, e) {
                    var surveyorExperience = {};
                    var inputs = $(e).find("input");
                    surveyorExperience.startDate = $(inputs[0]).val();
                    surveyorExperience.endDate = $(inputs[1]).val();
                    surveyorExperience.shipType = $(inputs[2]).val();
                    surveyorExperience.company = $(inputs[3]).val();
                    surveyorExperience.workContent = $(inputs[4]).val();
                    surveyorExperience.delFlag = 0;
                    experienceList.push(surveyorExperience);
                })
                return experienceList;
            }
        }
    }();


</script>

