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
    .timeline .timeline-icon {
        padding: 0;
        text-align: center;
        line-height: 80px;
        background-color: #E9EDEF;
    }

    .timeline .timeline-body {
        background-color: #E9EDEF;
    }

    .red {
        color: red;
    }

    .col-sm-3.control-label {
        padding-left: 5px;
        padding-right: 5px;
    }

    #shipList {
        border: 1px solid;
        width: 400px;
        background-color: #E9EDEF;
    }

    #shipList li {
        padding: 2px;
    }
</style>
<go:navigater path="ship"></go:navigater>
<form class="form-horizontal" action="ship/add" method="post"
      id="defForm" callfn="refreshTable">
    <div class="row">
        <div class="col-md-12">
            <div class="portlet light portlet-fit bordered">
                <div class="portlet-title tabbable-line">
                    <div id="bootstrap_alerts_demo"></div>
                    <div class="caption caption-md">
                        <div style="display: inline-block">
                            <i class="icon-microphone font-green"></i>
                            <span class="caption-subject bold font-green uppercase"> <fmt:message key="ship_addInfo"/></span><%--新增船舶信息--%>
                        </div>

                        <%--<select id="shipId" name="shipId" class="form-control select2">--%>
                        <%--<option value="0">请输入船舶名称或IMO号</option>--%>
                        <%--</select>--%>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="timeline">
                        <div class="timeline-item">
                            <div class="timeline-badge">
                                <div class="timeline-icon" style="">
                                    <fmt:message key="ship_outline_info"/><%--概要信息--%>
                                </div>
                            </div>
                            <div class="timeline-body">
                                <div class="timeline-body-arrow"></div>
                                <span> 搜索船舶</span>
                                <div style="display: inline-block">
                                    <input style="width:300px;" id="keyword" type="text" placeholder="<fmt:message key='ship_name_IMO_callsign_input'/>"<%--请输入船舶名称/imo/船舶呼号--%>
                                           autocomplete="off" disableautocomplete/>
                                    <div id="div1" style="display:none;position:absolute;z-index: 1000">
                                        <ul id="shipList" style=" margin:0px;padding:0px;list-style-type:none;">
                                        </ul>
                                    </div>
                                </div>
                                <div class="timeline-body-content">

                                    <div class="form-group col-md-6">
                                        <label for="name" class="col-sm-3 control-label"><fmt:message key="ship_name"/><%--船舶名称--%>
                                            <span class="red">* </span></label>
                                        <div class="col-sm-6">
                                            <input id="name" name="name" type="text" maxlength="32"
                                                   class="form-control required"
                                                   placeholder="<fmt:message key='ship_name_input'/>"><%--请填写船舶名称--%>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="builder" class="col-sm-3 control-label"><fmt:message key='ship_builder'/></label><%--建造船厂--%>
                                        <div class="col-sm-6">
                                            <input id="builder" name="builder" type="text" maxlength="32"
                                                   class="form-control "
                                                   placeholder="<fmt:message key='ship_builder_input'/>"><%--请填写建造船厂--%>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="imo" class="col-sm-3 control-label">IMO<span
                                                class="red">* </span></label>
                                        <div class="col-sm-6">
                                            <input id="imo" name="imo" type="text" maxlength="32"
                                                   class="form-control required"
                                                   placeholder="<fmt:message key='ship_imo_input'/>"><%--请填写IMO--%>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="buildYear" class="col-sm-3 control-label"><fmt:message key='ship_built_year'/></label><%--建造日期--%>
                                        <div class="col-sm-6">
                                            <div class="input-group">
                                                <input id="buildYear" name="buildYear" type="text"
                                                       class="form-control date-picker"
                                                       placeholder="<fmt:message key='ship_date_input'/>"><%--请选择建造日期--%>
                                                <span class="input-group-addon">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </span></div>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="shipClass" class="col-sm-3 control-label"><fmt:message key='ship_association'/><%--船级社--%><span
                                                class="red">* </span></label>
                                        <div class="col-sm-6">
                                            <input id="shipClass" name="shipClass" type="text" maxlength="32"
                                                   class="form-control required"
                                                   placeholder="<fmt:message key='ship_class_input'/>"><%--请选择船级社--%>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="callSign" class="col-sm-3 control-label"><fmt:message key='ship_call_sign'/></label><%--船舶呼号--%>
                                        <div class="col-sm-6">
                                            <input id="callSign" name="callSign" type="text" maxlength="32"
                                                   class="form-control "
                                                   placeholder="<fmt:message key='ship_call_sign_input'/>"><%--请填写船舶呼号--%>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="type" class="col-sm-3 control-label"><fmt:message key='ship_type'/><%--船舶类型--%>
                                            <span class="red">* </span></label>
                                        <div class="col-sm-6">
                                            <input id="type" name="type" type="text" maxlength="32"
                                                   class="form-control required"
                                                   placeholder="<fmt:message key='ship_type_input'/>"><%--请选择船舶类型--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="timeline-badge">
                                    <div class="timeline-icon">
                                        <fmt:message key="ship_hull_info"/> <%--船体信息--%>
                                    </div>
                                </div>
                                <div class="timeline-body">
                                    <div class="timeline-body-arrow"></div>
                                    <div class="timeline-body-content">
                                        <div class="form-group col-md-6">
                                            <label for="loa" class="col-sm-3 control-label"><fmt:message key="ship_loa"/><%--船长--%><%--<span
                                                    class="red">* </span>--%></label>
                                            <div class="col-sm-6">
                                                <input id="loa" name="loa" type="text" maxlength="32"
                                                       class="form-control required"
                                                       placeholder="<fmt:message key="ship_loa_input"/>"><%--请填写船长--%>
                                            </div>
                                            <label class="col-sm-3 control-label"><fmt:message key="ship_unit_m"/> </label><%--(单位:米)--%>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="draft" class="col-sm-3 control-label"><fmt:message key="ship_draft"/><%--吃水--%>
                                                <%--<span class="red">* </span>--%></label>
                                            <div class="col-sm-6">
                                                <input id="draft" name="draft" type="text" maxlength="32"
                                                       class="form-control required"
                                                       placeholder="<fmt:message key='ship_draft_input'/>"><%--请填写吃水深度--%>
                                            </div>
                                            <label class="col-sm-3 control-label"><fmt:message key="ship_unit_m"/> </label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="beam" class="col-sm-3 control-label"><fmt:message key="ship_beam"/><%--船宽--%>
                                                <%--<span class="red">* </span>--%></label>
                                            <div class="col-sm-6">
                                                <input id="beam" name="beam" type="text" maxlength="32"
                                                       class="form-control required"
                                                       placeholder="<fmt:message key='ship_beam_input'/>"><%--请填写船宽长度--%>
                                            </div>
                                            <label class="col-sm-3 control-label"><fmt:message key="ship_unit_m"/><%--(单位:米)--%></label>

                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="dwt" class="col-sm-3 control-label"><fmt:message key="ship_dwt"/><%--载重吨--%></label>
                                            <div class="col-sm-6">
                                                <input id="dwt" name="dwt" type="text" maxlength="32"
                                                       class="form-control "
                                                       placeholder="<fmt:message key='ship_dwt_input'/> "><%--请填写载重吨--%>
                                            </div>
                                            <label class="col-sm-3 control-label"><fmt:message key="ship_unit_ton"/> <%--(单位:吨)--%></label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="depth" class="col-sm-3 control-label"><fmt:message key="ship_high"/> <%--型深--%></label>
                                            <div class="col-sm-6">
                                                <input id="depth" name="depth" type="text" maxlength="32"
                                                       class="form-control "
                                                       placeholder="<fmt:message key='ship_high_input'/> "><%--请填写型深--%>
                                            </div>
                                            <label class="col-sm-3 control-label"><fmt:message key="ship_unit_m"/> <%--(单位:米)--%></label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="grt" class="col-sm-3 control-label"><fmt:message key="ship_gt"/> <%--注册总吨--%></label>
                                            <div class="col-sm-6">
                                                <input id="grt" name="grt" type="text" maxlength="32"
                                                       class="form-control "
                                                       placeholder="<fmt:message key='ship_gt_input'/>"><%--请填写注册总吨--%>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="dd" class="col-sm-3 control-label"><fmt:message key="ship_dd"/> <%--坞检--%></label>
                                            <div class="col-sm-6">
                                                <div class="input-group">
                                                    <input id="dd" name="dd" type="text"
                                                           class="form-control date-picker"
                                                           placeholder="<fmt:message key='ship_dd_input'/>"><%--请选择坞检日期--%>
                                                    <span class="input-group-addon">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </span></div>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="ss" class="col-sm-3 control-label"><fmt:message key="ship_ss"/> <%--特检--%></label>
                                            <div class="col-sm-6">
                                                <div class="input-group">
                                                    <input id="ss" name="ss" type="text"
                                                           class="form-control date-picker"
                                                           placeholder="<fmt:message key='ship_ss_input'/> "><%--请选择特检日期--%>
                                                    <span class="input-group-addon">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="timeline-badge">
                                    <div class="timeline-icon">
                                        <fmt:message key="ship_faci_info"/> <%--设备信息--%>
                                    </div>
                                </div>
                                <div class="timeline-body">
                                    <div class="timeline-body-arrow"></div>
                                    <div class="timeline-body-head">
                                        <div class="timeline-body-head-caption">
                                            <span class="timeline-body-alerttitle font-green-haze"><fmt:message key="ship_me"/> <%--主机--%></span>
                                        </div>
                                    </div>
                                    <div class="timeline-body-content">
                                        <div class="form-group col-md-6">
                                            <label for="meMaker" class="col-sm-3 control-label"><fmt:message key="ship_faci_maker"/> </label>
                                            <div class="col-sm-6">
                                                <input id="meMaker" name="meMaker" type="text" maxlength="32"
                                                       class="form-control ">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="meType" class="col-sm-3 control-label"><fmt:message key="ship_faci_type"/> <%--型号--%></label>
                                            <div class="col-sm-6">
                                                <input id="meType" name="meType" type="text" maxlength="32"
                                                       class="form-control ">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="meBhpRpm" class="col-sm-3 control-label"><fmt:message key="ship_me_bhp_rpm"/> <%--马力/转速--%></label>
                                            <div class="col-sm-6">
                                                <input id="meBhpRpm" name="meBhpRpm" type="text" maxlength="32"
                                                       class="form-control ">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="meQty" class="col-sm-3 control-label"><fmt:message key="ship_faci_qty"/> <%--数量--%></label>
                                            <div class="col-sm-6">
                                                <input id="meQty" name="meQty" type="text" maxlength="32"
                                                       class="form-control ">
                                            </div>
                                            <label class="col-sm-3 control-label"><fmt:message key="ship_unit_set"/> <%--(单位:台)--%></label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="meCylBore" class="col-sm-3 control-label"><fmt:message key="ship_faci_cyl_bore"/> <%--缸径--%></label>
                                            <div class="col-sm-6">
                                                <input id="meCylBore" name="meCylBore" type="text" maxlength="32"
                                                       class="form-control ">
                                            </div>
                                            <label class="col-sm-3 control-label"><fmt:message key="ship_unit_mm"/> <%--(单位:毫米)--%></label>
                                        </div>
                                    </div>
                                </div>

                                <div class="timeline-body">
                                    <div class="timeline-body-arrow"></div>
                                    <div class="timeline-body-head">
                                        <div class="timeline-body-head-caption">
                                            <span class="timeline-body-alerttitle font-green-haze"><fmt:message key="ship_aux"/> <%--辅机--%></span>
                                        </div>
                                    </div>
                                    <div class="timeline-body-content">
                                        <div class="form-group col-md-6">
                                            <label for="auxMaker" class="col-sm-3 control-label"><fmt:message key="ship_faci_maker"/> </label>
                                            <div class="col-sm-6">
                                                <input id="auxMaker" name="auxMaker" type="text" maxlength="32"
                                                       class="form-control ">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="auxType" class="col-sm-3 control-label"><fmt:message key="ship_faci_type"/> <%--型号--%></label>
                                            <div class="col-sm-6">
                                                <input id="auxType" name="auxType" type="text" maxlength="32"
                                                       class="form-control ">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="auxRatedOr" class="col-sm-3 control-label"><fmt:message key="ship_aux_rated_or"/> <%--额定功率--%></label>
                                            <div class="col-sm-6">
                                                <input id="auxRatedOr" name="auxRatedOr" type="text" maxlength="32"
                                                       class="form-control ">
                                            </div>
                                            <label class="col-sm-3 control-label"><fmt:message key="ship_unit_kw"/> <%--(单位:千瓦)--%></label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="auxQty" class="col-sm-3 control-label"><fmt:message key="ship_faci_qty"/> <%--数量--%></label>
                                            <div class="col-sm-6">
                                                <input id="auxQty" name="auxQty" type="text" maxlength="32"
                                                       class="form-control ">
                                            </div>
                                            <label class="col-sm-3 control-label"><fmt:message key="ship_unit_set"/> <%--(单位:台)--%></label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="auxCylBore" class="col-sm-3 control-label"><fmt:message key="ship_faci_cyl_bore"/> <%--缸径--%></label>
                                            <div class="col-sm-6">
                                                <input id="auxCylBore" name="auxCylBore" type="text" maxlength="32"
                                                       class="form-control ">
                                            </div>
                                            <label class="col-sm-3 control-label"><fmt:message key="ship_unit_mm"/> <%--(单位:毫米)--%></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="timeline-body">
                                    <div class="timeline-body-arrow"></div>
                                    <div class="timeline-body-head">
                                        <div class="timeline-body-head-caption">
                                            <span class="timeline-body-alerttitle font-green-haze"><fmt:message key="ship_boiler"/> <%--锅炉--%></span>
                                        </div>
                                    </div>
                                    <div class="timeline-body-content">
                                        <div class="form-group col-md-6">
                                            <label for="boilerMaker" class="col-sm-3 control-label"><fmt:message key="ship_faci_maker"/> <%--厂家--%></label>
                                            <div class="col-sm-6">
                                                <input id="boilerMaker" name="boilerMaker" type="text" maxlength="32"
                                                       class="form-control ">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="boilerType" class="col-sm-3 control-label"><fmt:message key="ship_faci_type"/><%--型号--%></label>
                                            <div class="col-sm-6">
                                                <input id="boilerType" name="boilerType" type="text" maxlength="32"
                                                       class="form-control ">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="boilerPressure" class="col-sm-3 control-label"><fmt:message key="ship_boiler_pressure"/> <%--工作压力--%></label>
                                            <div class="col-sm-6">
                                                <input id="boilerPressure" name="boilerPressure" type="text"
                                                       maxlength="32"
                                                       class="form-control ">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="boilerQty" class="col-sm-3 control-label"><fmt:message key="ship_faci_qty"/> <%--数量--%></label>
                                            <div class="col-sm-6">
                                                <input id="boilerQty" name="boilerQty" type="text" maxlength="32"
                                                       class="form-control ">
                                            </div>
                                            <label class="col-sm-3 control-label"><fmt:message key="ship_unit_set"/> <%--(单位:台)--%></label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="boilerHeatingArea" class="col-sm-3 control-label"><fmt:message key="ship_boiler_heating_area"/> <%--热交换面积--%></label>
                                            <div class="col-sm-6">
                                                <input id="boilerHeatingArea" name="boilerHeatingArea" type="text"
                                                       maxlength="32"
                                                       class="form-control ">
                                            </div>
                                            <label class="col-sm-3 control-label"><fmt:message key="ship_unit_m2"/> <%--(单位:平方米)--%></label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="boilerEvaporation" class="col-sm-3 control-label"><fmt:message key="ship_boiler_evaporation"/><%--蒸发量--%></label>
                                            <div class="col-sm-6">
                                                <input id="boilerEvaporation" name="boilerEvaporation" type="text"
                                                       maxlength="32"
                                                       class="form-control ">
                                            </div>
                                            <label class="col-sm-3 control-label"><fmt:message key="ship_unit_ton_H"/> <%--(单位:吨/时)--%></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="timeline-badge">
                                    <div class="timeline-icon">
                                        <fmt:message key="ship_complete"/> <%--完成--%>
                                    </div>
                                </div>
                                <div class="timeline-body">
                                    <div class="timeline-body-arrow"></div>
                                    <div class="timeline-body-head">
                                        <div class="timeline-body-head-caption">
                                            <shiro:hasPermission name="ship/add">
                                                <button type="button" onclick="severCheck()" class="btn btn-primary">
                                                    <fmt:message key="ship_submit"/> <%--提交--%>
                                                </button>
                                            </shiro:hasPermission>
                                            <button id="reset-btn" type="reset" class="btn blue"><fmt:message key="ship_reset"/> <%--清空--%></button>
                                            <a href="ship" type="button" class="btn btn-default" data-target="navTab"><fmt:message key="ship_cancel"/> <%--取消--%>
                                            </a>
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
    </div>
    <!-- END CONTENT BODY -->
    </div>
    <!-- END CONTENT -->
    <!-- BEGIN QUICK SIDEBAR -->
</form>
<a id="ship" href="ship" class="btn btn-sm grey-mint" data-target="navTab" style="display: none"></a>'
<script>
    $('.date-picker').datepicker({autoclose: true, todayHighlight: true, format: 'yyyy-mm-dd'});

    //服务器校验
    function severCheck() {
        if (check()) {
            $("#defForm").ajaxSubmit({
                success: function (data) {
                    if (data.success) {
                        $('#reset-btn').click();
                        App.alert({
                            container: "#bootstrap_alerts_demo",
                            close: true,
                            icon: 'fa fa-check',
                            place: "append",
                            message: "success",
                            type: 'success',
                            reset: true,
                            focus: true,
                            closeInSeconds: 10,
                        })
                    } else {
                        App.alert({
                            container: "#bootstrap_alerts_demo",
                            close: true,
                            icon: 'fa fa-warning',
                            place: "append",
                            message: "failure",
                            type: 'danger',
                            reset: true,
                            focus: true,
                            closeInSeconds: 10,
                        })
                    }
                },
                error: function () {
                    App.alert({
                        container: "#bootstrap_alerts_demo",
                        close: true,
                        icon: 'fa fa-warning',
                        place: "append",
                        message: "error",
                        type: 'warning',
                        reset: true,
                        focus: true,
                        closeInSeconds: 10,
                    })
                    return;
                }
            });
        }
    }

    //客户端校验
    function check() {
        if ($("#name").val() == "") {
            $("#name").tips({
                side: 2,
                msg: '<fmt:message key="ship_name_empty"/>',/*船名不能为空*/
                bg: '#AE81FF',
                time: 3
            });
            $("#name").focus();
            return false;
        } else {
            $("#name").val(jQuery.trim($('#name').val()));
        }
        if ($("#imo").val() == "") {
            $("#imo").tips({
                side: 2,
                msg: '<fmt:message key="ship_imo_empty"/> ',/*imo号不能为空*/
                bg: '#AE81FF',
                time: 3
            });
            $("#imo").focus();
            return false;
        } else {
            $("#imo").val(jQuery.trim($('#imo').val()));
        }
        if ($("#shipClass").val() == "") {
            $("#shipClass").tips({
                side: 2,
                msg: '<fmt:message key="ship_class_empty"/> ',/*船级社不能为空*/
                bg: '#AE81FF',
                time: 3
            });
            $("#shipClass").focus();
            return false;
        } else {
            $("#shipClass").val(jQuery.trim($('#shipClass').val()));
        }
        if ($("#type").val() == "") {
            $("#type").tips({
                side: 2,
                msg: '<fmt:message key="ship_type_empty"/>',/*船舶类型不能为空*/
                bg: '#AE81FF',
                time: 3
            });
            $("#type").focus();
            return false;
        } else {
            $("#type").val(jQuery.trim($('#type').val()));
        }

       /* if ($("#loa").val() == "") {
            $("#loa").tips({
                side: 2,
                msg: 'loa不能为空',
                bg: '#AE81FF',
                time: 3
            });
            $("#loa").focus();
            return false;
        } else {
            $("#loa").val(jQuery.trim($('#loa').val()));
        }
        if ($("#draft").val() == "") {
            $("#draft").tips({
                side: 2,
                msg: 'draft不能为空',
                bg: '#AE81FF',
                time: 3
            });
            $("#draft").focus();
            return false;
        } else {
            $("#draft").val(jQuery.trim($('#draft').val()));
        }
        if ($("#beam").val() == "") {
            $("#beam").tips({
                side: 2,
                msg: 'beam不能为空',
                bg: '#AE81FF',
                time: 3
            });
            $("#beam").focus();
            return false;
        } else {
            $("#beam").val(jQuery.trim($('#beam').val()));
        }*/
        return true;
    }

    //    $(document).keyup(function (event) {
    //        if (event.keyCode == 13) {
    //            $("#to-recover").trigger("click");
    //        }
    //    });


    //点击document隐藏下拉层
    $(document).click(function (event) {
        $("#div1").css("display", "none");
    })


    $("#keyword").on("keyup", function () {
        var keyword = $(this).val();
        if (keyword == null || (keyword = keyword.trim()) == "") {
            return;
        }
        $.ajax({
            url: 'publicShip/searchList',
            type: 'GET',
            async: true,
            data: {
                keyword: keyword
            },
            success: function (data) {
                var html = "";
                if (data.list.length == 0) {
                    html += "<li><fmt:message key="ship_info_no"/> </li>";
                } else {
                    $(data.list).each(function () {
                        html += "<li onclick='getInfo(this)' data-id=" + this.id + ">" + this.name + "/" + this.imo + "/" + this.callsign + "</li>";
                    })
                }
                $("#shipList").html(html);
                $("#div1").css("display", "inline-block");
            },
            error: function () {
                console.log(2);
            }
        })
    })

    //点击获取信息
    function getInfo(obj) {
        var id = $(obj).attr("data-id");
        $.ajax({
            url: "publicShip/searchOne",
            type: "POST",
            data: {
                id: id
            },
            success: function (data) {
                if (data.mes) {
                    $("#imo").val(data.mes.imo);
                    $("#name").val(data.mes.name);
                    $("#type").val(data.mes.category);
                    $("#shipClass").val(data.mes.classs);
                    $("#builder").val(data.mes.builder);
                    $("#callSign").val(data.mes.callsign);
                    $("#buildYear").val(formatDate(data.mes.buildyear));
                    $("#draft").val(data.mes.draft);
                    $("#dwt").val(data.mes.dwt);
                    $("#grt").val(data.mes.ggt);
                    /*$("#depth").val(data.mes.);*/
                    $("#beam").val(data.mes.beam);
                    $("#loa").val(data.mes.loa);
                    $("#dd").val(formatDate(data.mes.nextDd));
                    $("#ss").val(formatDate(data.mes.nextSs));
                    $("#meMaker").val(data.mes.engine);
                    /*$("#meType").val(data.mes.mmype);*/
                    $("#meBhpRpm").val(data.mes.mbr);
                    $("#meQty").val(1);
                    $("#auxMaker").val(data.mes.amake);
                    $("#auxType").val(data.mes.atype);
                    $("#auxRatedOr").val(data.mes.arated);
                    $("#auxQty").val(data.mes.aqty);
                    $("#auxCylBore").val(data.mes.acyl);
                    /* $("#boilerMaker").val(data.mes.);*/
                    $("#boilerType").val(data.mes.ctype);
                    /*$("#boilerPressure").val(data.mes.);*/
                    $("#boilerHeatingArea").val(data.mes.baux);
                    $("#boilerEvaporation").val(data.mes.blarge);


                }
            }
        });

    }

    function formatDate(str) {
        if (str != null && str != '') {
            console.log(str);
            var s = str.split("/");
            var length = s.length;
            var date = "";
            if (length == 3) {
                date = s[2] + "-" + s[1] + "-" + s[0]
            }
            if (length == 2) {
                date = s[1] + "-" + s[0] + "-" + 1;

            }
            if (length == 1) {
                date = s[0] + "-" + 1 + "-" + 1;
            }
        }
        return date;
    }
</script>