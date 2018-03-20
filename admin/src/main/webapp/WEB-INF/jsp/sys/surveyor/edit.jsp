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
                                <form id="add-surveyor-form" action="surveyor/editComplete" method="post">
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
                                                        <input name="id" value="${surveyor.id}" type="hidden">
                                                        <input name="pastEvaluation" value="${surveyor.pastEvaluation}" type="hidden">
                                                        <input name="portraitUrl" id="portraitUrl" type="hidden">
                                                        <input name="companyId" value="${surveyor.companyId}" type="hidden">
                                                        <input name="createBy" value="${surveyor.createBy}" type="hidden">
                                                        <input name="createDate"
                                                               value=" <fmt:formatDate value="${surveyor.createDate}" pattern="yyyy-MM-dd"></fmt:formatDate>  "
                                                               type="hidden">
                                                        <input name="delFlag" value="${surveyor.delFlag}" type="hidden">
                                                        <div class="form-group col-md-6">
                                                            <label class="control-label">姓名</label>
                                                            <input type="text" class="form-control" name="firstName" value="${surveyor.firstName}" id="name"/>
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                            <label class="control-label">姓别</label>
                                                            <input type="text" class="form-control" name="sex" value="${surveyor.sex}"/>
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                            <label class="control-label">名族</label>
                                                            <input type="text" class="form-control" name="nation" value="${surveyor.nation}"/>
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                            <label class="control-label">户籍</label>
                                                            <input type="text" class="form-control" name="censusRegister" value="${surveyor.censusRegister}"/>
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                            <label class="control-label">出生年月</label>
                                                            <input type="text" class="form-control date-picker" name="birthTime" value="${surveyor.birthTime}"/>
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                            <label class="control-label">婚姻状况</label>
                                                            <input type="text" class="form-control" name="maritalStatus" value="${surveyor.maritalStatus}"/>
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                            <label class="control-label">毕业院校</label>
                                                            <input type="text" class="form-control" name="graduateSchool" value="${surveyor.graduateSchool}"/>
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                            <label class="control-label">学历</label>
                                                            <input type="text" class="form-control" name="education" value="${surveyor.education}"/>
                                                        </div>
                                                        <div class="form-group col-md-3">
                                                            <label class="control-label">专业</label>
                                                            <input type="text" class="form-control" name="professional" value="${surveyor.professional}"/>
                                                        </div>
                                                        <div class="form-group col-md-3">
                                                            <label class="control-label">常住地</label>
                                                            <input type="text" class="form-control" name="permanentResidence" value="${surveyor.permanentResidence}"/>
                                                        </div>
                                                        <div class="form-group col-md-3">
                                                            <label class="control-label">现从事工作</label>
                                                            <input type="text" class="form-control" name="work" value="${surveyor.work}"/>
                                                        </div>
                                                        <div class="form-group col-md-3">
                                                            <label class="control-label">职务</label>
                                                            <input type="text" class="form-control" name="position" value="${surveyor.position}"/>
                                                        </div>
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
                                                        <input type="text" class="form-control" name="foreignLanguages" value="${surveyor.foreignLanguages}"/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label">外语水平</label>
                                                        <input type="text" class="form-control" name="foreignLanguageLevel" value="${surveyor.foreignLanguageLevel}"/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label">相关工作经验</label>
                                                        <input type="text" class="form-control" name="relatedWorkExperience" value="${surveyor.relatedWorkExperience}"/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label">计算机能力</label>
                                                        <input type="text" class="form-control" name="computerPower" value="${surveyor.computerPower}"/>
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
                                                        <textarea  class="form-control" name="certificateEducation" rows="5" >${surveyor.certificateEducation}</textarea>
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
                                                                <c:forEach items="${experienceList}" var="e">
                                                            <tr>
                                                                <td><input type="text" class="date-picker form-control"
                                                                           value="<fmt:formatDate value="${e.startDate}" pattern="yyyy-MM-dd"/>"
                                                                           style="width:45%;display: inline-block">
                                                                    to
                                                                    <input value="<fmt:formatDate value="${e.endDate}" pattern="yyyy-MM-dd"/>"
                                                                           type="text" class="form-control date-picker"
                                                                           style="width:45%;display: inline-block"></td>
                                                                <td><input value="${e.workContent}" type="text"
                                                                           class=" form-control"></td>
                                                                <td><input value="${e.shipType}" type="text"
                                                                           class=" form-control"></td>
                                                                <td>
                                                                    <button onclick="TableDeal.deleteRow(this)" type="button"
                                                                            class="btn red">Delete
                                                                    </button>
                                                                </td>
                                                                <input type="hidden" value="${e.id}">
                                                                <input type="hidden" value="${e.delFlag}"
                                                                       class="del-flag-class">
                                                            </tr>
                                                            </c:forEach>
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
                                                        <textarea  class="form-control" name="shipInspectionExperience" rows="5">${surveyor.shipInspectionExperience}</textarea>
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
                                                        <input type="text" class="form-control" name="tel" value="${surveyor.tel}"/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label">E-Mail</label>
                                                        <input type="text" class="form-control" name="email" value="${surveyor.email}"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="margiv-top-10 col-md-12">
                                            <button type="button" onclick="editSurveyor(this)" class="btn green"> Save
                                                Changes
                                            </button>
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

    function editSurveyor(obj) {
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
                msg: '姓名不能为空',/*船名不能为空*/
                bg: '#AE81FF',
                time: 3
            });
            $("#name").focus();
            return false;
        } else {
            $("#name").val(jQuery.trim($('#name').val()));
        }
        return true;
    }




    var experienceTable = $("#experience_table");
    var TableDeal = function () {
        var row = '<tr><td><input type="text" class="date-picker form-control"  style="width:45%;display: inline-block">to' +
                '<input type="text" class="form-control date-picker" style="width:45%;display: inline-block"></td>' +
                ' <td><input type="text" class=" form-control"></td>  ' +
                '<td><input type="text" class="form-control"></td> ' +
                '<td> <button onclick="TableDeal.deleteRow(this)" type="button" class="btn red">Delete</button> ' +
                '</td><input type="hidden" >' +
                ' <input type="hidden" value="0" class="del-flag-class"></tr>'
        return {
            addRow: function () {
                experienceTable.append(row);
                $('.date-picker').datepicker({autoclose: true, todayHighlight: true, format: 'yyyy-mm-dd'});
            },
            deleteRow: function (obj) {
                var tr = $(obj).closest("tr");
                tr.css("display", "none");
                tr.find(".del-flag-class").val(1);
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
                    surveyorExperience.id = $(inputs[4]).val();
                    surveyorExperience.delFlag = $(inputs[5]).val();
                    experienceList.push(surveyorExperience);
                })
                return experienceList;
            }
        }
    }();


</script>
