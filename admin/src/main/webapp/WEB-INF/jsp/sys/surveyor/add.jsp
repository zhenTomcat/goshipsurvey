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
                                <form id="add-surveyor-form" action="surveyor/addComplete" method="post">
                                    <div class="tab-pane active col-md-10">
                                    <!-- BEGIN Portlet PORTLET-->
                                    <div class="portlet box green">
                                        <div class="portlet-title">
                                            <div class="caption">
                                                <i class="fa fa-gift"></i>个人基本信息 </div>
                                            <div class="tools">
                                                <a href="javascript:;" class="collapse"> </a>
                                            </div>
                                        </div>
                                        <div class="portlet-body">
                                            <div class="scroller" >
                                                <form id="add-surveyor" action="surveyor/addComplete" method="post">
                                                    <input type="hidden" name="portraitUrl" id="portraitUrl">
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label">姓名</label>
                                                        <input type="text" class="form-control" name="firstName" id="name"/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label">姓别</label>
                                                        <input type="text" class="form-control" name="sex"/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label">名族</label>
                                                        <input type="text" class="form-control" name="nation"/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label">户籍</label>
                                                        <input type="text" class="form-control" name="censusRegister"/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label">出生年月</label>
                                                        <input type="text" class="form-control date-picker" name="birthTime"/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label">婚姻状况</label>
                                                        <input type="text" class="form-control" name="maritalStatus"/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label">毕业院校</label>
                                                        <input type="text" class="form-control" name="graduateSchool"/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label">学历</label>
                                                        <input type="text" class="form-control" name="education"/>
                                                    </div>
                                                    <div class="form-group col-md-3">
                                                        <label class="control-label">专业</label>
                                                        <input type="text" class="form-control" name="professional"/>
                                                    </div>
                                                    <div class="form-group col-md-3">
                                                        <label class="control-label">常住地</label>
                                                        <input type="text" class="form-control" name="permanentResidence"/>
                                                    </div>
                                                    <div class="form-group col-md-3">
                                                        <label class="control-label">现从事工作</label>
                                                        <input type="text" class="form-control" name="work"/>
                                                    </div>
                                                    <div class="form-group col-md-3">
                                                        <label class="control-label">职务</label>
                                                        <input type="text" class="form-control" name="position"/>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="portlet box blue-hoki">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-gift"></i>相关工作经验及特长 </div>
                                        <div class="tools">
                                            <a href="javascript:;" class="collapse"> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="scroller" >
                                            <div class="form-group col-md-6">
                                                <label class="control-label">外语语种</label>
                                                <input type="text" class="form-control" name="foreignLanguages"/>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label class="control-label">外语水平</label>
                                                <input type="text" class="form-control" name="foreignLanguageLevel"/>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label class="control-label">相关工作经验</label>
                                                <input type="text" class="form-control" name="relatedWorkExperience"/>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label class="control-label">计算机能力</label>
                                                <input type="text" class="form-control" name="computerPower"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                    <div class="portlet box blue-hoki">
                                        <div class="portlet-title">
                                            <div class="caption">
                                                <i class="fa fa-gift"></i>教育/培训经历及所获证书 </div>
                                            <div class="tools">
                                                <a href="javascript:;" class="collapse"> </a>
                                            </div>
                                        </div>
                                        <div class="portlet-body">
                                            <div class="scroller" >
                                                <div class="form-group col-md-12">
                                                    <textarea  class="form-control" name="certificateEducation" rows="5"></textarea>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="portlet box blue-hoki">
                                        <div class="portlet-title">
                                            <div class="caption">
                                                <i class="fa fa-gift"></i>主要工作经验 </div>

                                            <div class="tools">
                                                <button id="add-row-btn" type="button" class="btn btn-sm green"
                                                        style="padding: 2px 5px" onclick="TableDeal.addRow()">+ Add new
                                                </button>
                                            </div>
                                        </div>
                                        <div class="portlet-body">
                                            <div class="scroller" >
                                                <div class="form-group col-md-12">

                                                    <table class="table  table-checkable table-bordered"
                                                           id="experience_table">
                                                        <thead>
                                                        <tr>
                                                            <th width="25%">Time</th>
                                                            <th width="55%">Work content</th>
                                                            <th width="15%">Ship type</th>
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
                                                            <td>
                                                                <button onclick="" type="button" class="btn red">Delete</button>
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                        </thead>
                                                    </table>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="portlet box blue-hoki">
                                        <div class="portlet-title">
                                            <div class="caption">
                                                <i class="fa fa-gift"></i>船舶检验经历 </div>
                                            <div class="tools">
                                                <a href="javascript:;" class="collapse"> </a>
                                            </div>
                                        </div>
                                        <div class="portlet-body">
                                            <div class="scroller" >
                                                <div class="form-group col-md-12">
                                                    <textarea  class="form-control" name="shipInspectionExperience" rows="5"></textarea>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="portlet box blue-hoki">
                                        <div class="portlet-title">
                                            <div class="caption">
                                                <i class="fa fa-gift"></i>个人联系方式 </div>
                                            <div class="tools">
                                                <a href="javascript:;" class="collapse"> </a>
                                            </div>
                                        </div>
                                        <div class="portlet-body">
                                            <div class="scroller" >
                                                <div class="form-group col-md-6">
                                                    <label class="control-label">联系电话</label>
                                                    <input type="text" class="form-control" id="tel" name="tel"/>
                                                </div>
                                                <div class="form-group col-md-6">
                                                    <label class="control-label">E-Mail</label>
                                                    <input type="text" class="form-control" id="email" name="email"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="margiv-top-10 col-md-12">
                                        <button type="button" onclick="addSurveyor(this)" class="btn green"> Save</button>
                                    </div>
                                        <!-- END Portlet PORTLET-->
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

<script>
    $('.date-picker').datepicker({autoclose: true, todayHighlight: true, format: 'yyyy-mm-dd'});
    initUploaders_surveyor_head_img("change-head-img-btn", "shipinfo", "${staticPath}/");

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
        if ($("#name").val() == "") {
            $("#name").tips({
                side: 2,
                msg: '姓名不能为空',
                bg: '#AE81FF',
                time: 3
            });
            $("#name").focus();
            return false;
        } else {
            $("#name").val(jQuery.trim($('#name').val()));
        }
        if ($("#tel").val() == "") {
            $("#tel").tips({
                side: 2,
                msg: '号码不能为空',
                bg: '#AE81FF',
                time: 3
            });
            $("#tel").focus();
            return false;
        } else {
            $("#tel").val(jQuery.trim($('#tel').val()));
        }
        if ($("#email").val() == "") {
            $("#email").tips({
                side: 2,
                msg: '邮箱不能为空',
                bg: '#AE81FF',
                time: 3
            });
            $("#email").focus();
            return false;
        } else {
            $("#email").val(jQuery.trim($('#email').val()));
        }
        return true;
    }



    var experienceTable = $("#experience_table");
    var TableDeal = function () {

        var row = '<tr><td><input type="text" class="date-picker form-control"  style="width:45%;display: inline-block">to' +
                '<input type="text" class="form-control date-picker" style="width:45%;display: inline-block"></td>' +
                '<td><input type="text" class=" form-control"></td> <td><input type="text" class="form-control"></td> ' +
                '<td> <button onclick="TableDeal.deleteRow(this)" type="button" class="btn red">Delete</button> </td> </tr>'
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
                    surveyorExperience.workContent = $(inputs[2]).val();
                    surveyorExperience.shipType = $(inputs[3]).val();

                    surveyorExperience.delFlag = 0;
                    experienceList.push(surveyorExperience);
                })
                return experienceList;
            }
        }

    }();


</script>

