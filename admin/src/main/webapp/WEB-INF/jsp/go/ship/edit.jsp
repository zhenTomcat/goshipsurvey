<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
</style>
<go:navigater path="ship"></go:navigater>
<form class="form-horizontal" action="ship/edit" method="post"
      id="defForm" callfn="refreshTable">
    <input id="id" name="id" type="hidden" value="${ship.id}"/>
    <input id="companyId" name="companyId" type="hidden" value="${ship.companyId}"/>
    <input id="companyName" name="companyName" type="hidden" value="${ship.companyName}"/>
    <input id="createDate" name="createDate" type="hidden" value="<fmt:formatDate value='${ship.createDate}'
                        pattern="yyyy-MM-dd"/>"/>
    <input id="createBy" name="createBy" type="hidden" value="${ship.createBy}"/>
    <input id="delFlag" name="delFlag" type="hidden" value="${ship.delFlag}"/>
    <div class="row">
        <div class="col-md-12">
            <div class="portlet light portlet-fit bordered">
                <div class="portlet-title tabbable-line">
                    <div class="caption caption-md">
                        <i class="icon-microphone font-green"></i>
                        <span class="caption-subject bold font-green uppercase"> 编辑船舶信息</span>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="timeline">
                        <div class="timeline-item">
                            <div class="timeline-badge">
                                <div class="timeline-icon" style="">
                                    概要信息
                                </div>
                            </div>
                            <div class="timeline-body">
                                <div class="timeline-body-arrow"></div>
                                <div class="timeline-body-content">
                                    <div class="form-group col-md-6">
                                        <label for="name" class="col-sm-3 control-label">船舶名称<span class="red">* </span></label>
                                        <div class="col-sm-6">
                                            <input id="name" name="name" type="text" maxlength="32"
                                                   class="form-control required" value="${ship.name}"
                                                   placeholder="请填写船舶名称">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="builder" class="col-sm-3 control-label">建造船厂</label>
                                        <div class="col-sm-6">
                                            <input id="builder" name="builder" type="text" maxlength="32"
                                                   class="form-control" value="${ship.builder}"
                                                   placeholder="请填写建造船厂">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="imo" class="col-sm-3 control-label">IMO<span
                                                class="red">* </span></label>
                                        <div class="col-sm-6">
                                            <input id="imo" name="imo" type="text" maxlength="32"
                                                   class="form-control required" value="${ship.imo}"
                                                   placeholder="请填写IMO">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="buildYear" class="col-sm-3 control-label">建造日期</label>
                                        <div class="col-sm-6">
                                            <div class="input-group">
                                                <input id="buildYear" name="buildYear" type="text"
                                                       class="form-control date-picker"
                                                       value="<fmt:formatDate value='${ship.buildYear}'
                        pattern="yyyy-MM-dd"/>"
                                                       placeholder="请选择建造日期">
                                                <span class="input-group-addon">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </span></div>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="shipClass" class="col-sm-3 control-label">船级社<span
                                                class="red">* </span></label>
                                        <div class="col-sm-6">
                                            <input id="shipClass" name="shipClass" type="text" maxlength="32"
                                                   class="form-control required" value="${ship.shipClass}"
                                                   placeholder="请选择船级社">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="callSign" class="col-sm-3 control-label">船舶呼号</label>
                                        <div class="col-sm-6">
                                            <input id="callSign" name="callSign" type="text" maxlength="32"
                                                   class="form-control " value="${ship.callSign}"
                                                   placeholder="请填写船舶呼号">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="type" class="col-sm-3 control-label">船舶类型<span class="red">* </span></label>
                                        <div class="col-sm-6">
                                            <input id="type" name="type" type="text" maxlength="32"
                                                   class="form-control required" value="${ship.type}"
                                                   placeholder="请选择船舶类型">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="timeline-badge">
                                    <div class="timeline-icon">
                                        船体信息
                                    </div>
                                </div>
                                <div class="timeline-body">
                                    <div class="timeline-body-arrow"></div>
                                    <div class="timeline-body-content">
                                        <div class="form-group col-md-6">
                                            <label for="loa" class="col-sm-3 control-label">船长<span
                                                    class="red">* </span></label>
                                            <div class="col-sm-6">
                                                <input id="loa" name="loa" type="text" maxlength="32"
                                                       class="form-control required" value="${ship.loa}"
                                                       placeholder="请填写船长姓名">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="draft" class="col-sm-3 control-label">吃水<span
                                                    class="red">* </span></label>
                                            <div class="col-sm-6">
                                                <input id="draft" name="draft" type="text" maxlength="32"
                                                       class="form-control required" value="${ship.draft}"
                                                       placeholder="请填写吃水深度">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:米)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="beam" class="col-sm-3 control-label">船宽<span
                                                    class="red">* </span></label>
                                            <div class="col-sm-6">
                                                <input id="beam" name="beam" type="text" maxlength="32"
                                                       class="form-control required" value="${ship.beam}"
                                                       placeholder="请填写船宽长度">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:米)</label>

                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="dwt" class="col-sm-3 control-label">载重吨</label>
                                            <div class="col-sm-6">
                                                <input id="dwt" name="dwt" type="text" maxlength="32"
                                                       class="form-control " value="${ship.dwt}"
                                                       placeholder="请填写载重吨">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:吨)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="depth" class="col-sm-3 control-label">型深</label>
                                            <div class="col-sm-6">
                                                <input id="depth" name="depth" type="text" maxlength="32"
                                                       class="form-control " value="${ship.depth}"
                                                       placeholder="请填写型深">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:米)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="grt" class="col-sm-3 control-label">注册总吨</label>
                                            <div class="col-sm-6">
                                                <input id="grt" name="grt" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.grt}"
                                                       placeholder="请填写注册总吨">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="dd" class="col-sm-3 control-label">建造日期</label>
                                            <div class="col-sm-6">
                                                <div class="input-group">
                                                    <input id="dd" name="dd" type="text"
                                                           class="form-control date-picker" value="${ship.dd}"
                                                           placeholder="请选择坞检日期">
                                                    <span class="input-group-addon">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </span></div>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="ss" class="col-sm-3 control-label">建造日期</label>
                                            <div class="col-sm-6">
                                                <div class="input-group">
                                                    <input id="ss" name="ss" type="text"
                                                           class="form-control date-picker" value="${ship.ss}"
                                                           placeholder="请选择特检日期">
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
                                        设备信息
                                    </div>
                                </div>
                                <div class="timeline-body">
                                    <div class="timeline-body-arrow"></div>
                                    <div class="timeline-body-head">
                                        <div class="timeline-body-head-caption">
                                            <span class="timeline-body-alerttitle font-green-haze">主机</span>
                                        </div>
                                    </div>
                                    <div class="timeline-body-content">
                                        <div class="form-group col-md-6">
                                            <label for="meMaker" class="col-sm-3 control-label">厂家</label>
                                            <div class="col-sm-6">
                                                <input id="meMaker" name="meMaker" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.meMaker}"
                                                       placeholder="请填写厂家名称">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="meType" class="col-sm-3 control-label">型号</label>
                                            <div class="col-sm-6">
                                                <input id="meType" name="meType" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.meType}"
                                                       placeholder="请填写型号">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="meBhpRpm" class="col-sm-3 control-label">马力/转速</label>
                                            <div class="col-sm-6">
                                                <input id="meBhpRpm" name="meBhpRpm" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.meBhpRpm}"
                                                       placeholder="请填写马力/转速">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="meQty" class="col-sm-3 control-label">数量</label>
                                            <div class="col-sm-6">
                                                <input id="meQty" name="meQty" type="text" maxlength="32"
                                                       class="form-control " value="${ship.meQty}"
                                                       placeholder="请填写数量">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:台)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="meCylBore" class="col-sm-3 control-label">缸径</label>
                                            <div class="col-sm-6">
                                                <input id="meCylBore" name="meCylBore" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.meCylBore}"
                                                       placeholder="请填写缸径">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:毫米)</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="timeline-body">
                                    <div class="timeline-body-arrow"></div>
                                    <div class="timeline-body-head">
                                        <div class="timeline-body-head-caption">
                                            <span class="timeline-body-alerttitle font-green-haze">辅机</span>
                                        </div>
                                    </div>
                                    <div class="timeline-body-content">
                                        <div class="form-group col-md-6">
                                            <label for="auxMaker" class="col-sm-3 control-label">厂家</label>
                                            <div class="col-sm-6">
                                                <input id="auxMaker" name="auxMaker" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.auxMaker}"
                                                       placeholder="请填写厂家名称">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="auxType" class="col-sm-3 control-label">型号</label>
                                            <div class="col-sm-6">
                                                <input id="auxType" name="auxType" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.auxType}"
                                                       placeholder="请填写型号">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="auxRatedOr" class="col-sm-3 control-label">额定功率</label>
                                            <div class="col-sm-6">
                                                <input id="auxRatedOr" name="auxRatedOr" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.auxRatedOr}"
                                                       placeholder="请填写额定功率">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:千瓦)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="auxQty" class="col-sm-3 control-label">数量</label>
                                            <div class="col-sm-6">
                                                <input id="auxQty" name="auxQty" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.auxQty}"
                                                       placeholder="请填写数量">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:台)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="auxCylBore" class="col-sm-3 control-label">缸径</label>
                                            <div class="col-sm-6">
                                                <input id="auxCylBore" name="auxCylBore" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.auxCylBore}"
                                                       placeholder="请填写缸径">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:毫米)</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="timeline-body">
                                    <div class="timeline-body-arrow"></div>
                                    <div class="timeline-body-head">
                                        <div class="timeline-body-head-caption">
                                            <span class="timeline-body-alerttitle font-green-haze">锅炉</span>
                                        </div>
                                    </div>
                                    <div class="timeline-body-content">
                                        <div class="form-group col-md-6">
                                            <label for="boilerMaker" class="col-sm-3 control-label">厂家</label>
                                            <div class="col-sm-6">
                                                <input id="boilerMaker" name="boilerMaker" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.boilerMaker}"
                                                       placeholder="请填写厂家名称">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="boilerType" class="col-sm-3 control-label">型号</label>
                                            <div class="col-sm-6">
                                                <input id="boilerType" name="boilerType" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.boilerType}"
                                                       placeholder="请填写型号">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="boilerPressure" class="col-sm-3 control-label">工作压力</label>
                                            <div class="col-sm-6">
                                                <input id="boilerPressure" name="boilerPressure" type="text"
                                                       maxlength="32"
                                                       class="form-control "
                                                       value="${ship.boilerPressure}"
                                                       placeholder="请填写工作压力">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="boilerQty" class="col-sm-3 control-label">数量</label>
                                            <div class="col-sm-6">
                                                <input id="boilerQty" name="boilerQty" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.boilerQty}"
                                                       placeholder="请填写数量">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:台)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="boilerHeatingArea" class="col-sm-3 control-label">热交换面积</label>
                                            <div class="col-sm-6">
                                                <input id="boilerHeatingArea" name="boilerHeatingArea" type="text"
                                                       maxlength="32"
                                                       class="form-control "
                                                       value="${ship.boilerHeatingArea}"
                                                       placeholder="请填写热交换面积">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:平方米)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="boilerEvaporation" class="col-sm-3 control-label">蒸发量</label>
                                            <div class="col-sm-6">
                                                <input id="boilerEvaporation" name="boilerEvaporation" type="text"
                                                       maxlength="32"
                                                       class="form-control "
                                                       value="${ship.boilerEvaporation}"
                                                       placeholder="请填写蒸发量">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:吨/时)</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="timeline-badge">
                                    <div class="timeline-icon">
                                        完成
                                    </div>
                                </div>
                                <div class="timeline-body">
                                    <div class="timeline-body-arrow"></div>
                                    <div class="timeline-body-head">
                                        <div class="timeline-body-head-caption">
                                            <shiro:hasPermission name="ship/edit">
                                                <button type="button" onclick="severCheck()" class="btn btn-primary">
                                                    提交
                                                </button>
                                            </shiro:hasPermission>
                                            <a href="ship" type="button" class="btn btn-default" data-target="navTab">返回
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
                        alert("success");
                        $('#ship').click()
                    } else {
                        alert("false");
                        alert(data.msg);
                    }
                },
                error: function () {
                    alert("error");
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
                msg: '<fmt:message key="register_username_empty"/>',
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
                msg: 'imo号不能为空',
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
                msg: 'shipClass不能为空',
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
                msg: 'type不能为空',
                bg: '#AE81FF',
                time: 3
            });
            $("#type").focus();
            return false;
        } else {
            $("#type").val(jQuery.trim($('#type').val()));
        }
        if ($("#loa").val() == "") {
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
        }
        return true;
    }

    $(document).keyup(function (event) {
        if (event.keyCode == 13) {
            $("#to-recover").trigger("click");
        }
    });


</script>
