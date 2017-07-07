<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    #ship-list {
        display: none;
        position: absolute;
        z-index: 1000;
        border: 1px solid #e5e5e5;
        background-color: white;
        color: black;
    }

    #ship-list ul {
        margin: 0px;
        padding: 0px;
        list-style-type: none;
    }

    #ship-list li {
        width: 298px;
        padding: 1px 5px;
    }

    #ship-list li:hover {
        padding: 3px 11px;
        background-color: #32c5d2;
        cursor: pointer;
        font-size: 20px;
    }
</style>
<div class="tab-pane fade active in" id="step1">
    <div class="row">
        <div class="col-md-2">
            <div class="portlet light portlet-fit">
                <div class="portlet-body">
                    <div class="timeline">
                        <div class="timeline-item">
                            <div class="timeline-badge">
                                <div class="timeline-icon selected">
                                    <div class="timeline-content">ship details</div>
                                </div>
                            </div>
                            <div class="margin-bottom-40"></div>
                            <div class="timeline-badge">
                                <div class="timeline-icon">
                                    <div class="timeline-content">data & location</div>
                                </div>
                            </div>
                            <div class="margin-bottom-40"></div>
                            <div class="timeline-badge">
                                <div class="timeline-icon">
                                    <div class="timeline-content">agency</div>
                                </div>
                            </div>
                            <div class="margin-bottom-40"></div>
                            <div class="timeline-badge">
                                <div class="timeline-icon">
                                    <div class="timeline-content">public</div>
                                </div>
                            </div>
                            <div class="margin-bottom-40"></div>
                            <div class="timeline-badge">
                                <div class="timeline-icon">
                                    <div class="timeline-content">price choose</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-10">
            <div class="portlet box green quotation-content">
                <div class="portlet-title">
                    <div class="caption">
                        Ship details
                    </div>
                    <div class="tools col-md-6">
                        <div class="form-group form-md-line-input col-md-12"
                             style="margin-bottom: 4px;margin-top: -20px;color: white">
                            <label class="col-md-5 control-label" style="color: white">Search ship</label>
                            <div class=" col-md-7">
                                <input type="text" class="form-control search-input" id="keyword"
                                       placeholder="ship name / imo" autocomplete="off" disableautocomplete
                                       style="padding: 0;height: 30px;color: white;">
                                <div id="ship-list">
                                    <ul id="shipList">
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="portlet-body form">
                    <div class="form-body">
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Ship name</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control" id="shipName" name="shipName">
                                </div>
                            </div>
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">LOA(m)</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control" id="loa" name="loa">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">IMO</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control" id="imo" name="imo">
                                </div>
                            </div>
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Beam(m)</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control" id="beam" name="beam">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Type</label>
                                <div class="input-group col-md-9">
                                    <select class="form-control" id="shipType" name="shipType">
                                        <c:forEach items="${shipType}" var="s">
                                            <option value="${s.value}">${s.des}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Dwt(ton)</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control" id="dwt" name="dwt">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">ex.Name</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control" id="exName" name="exName">
                                </div>
                            </div>
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Call Sign</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control" id="callSign" name="callSign">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Class</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control" id="shipClass" name="shipClass">
                                </div>
                            </div>
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">GT</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control" id="ggt" name="ggt">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Flag</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control" id="flag" name="flag">
                                </div>
                            </div>
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">LDT(ton)</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control" id="ldt" name="ldt">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Build Year</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control date-picker" id="buildYear" name="buildYear">
                                </div>
                            </div>
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Draft(m)</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control" id="draft" name="draft">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Builder</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control" id="builder" name="builder">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions right">
                        <a data-toggle="tab" href="#step2"
                           class="btn default">Next</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
    //点击document隐藏下拉层
    $(document).click(function (event) {
        $("#ship-list").css("display", "none");
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
                    html += "<li>nothing</li>";
                } else {
                    $(data.list).each(function () {
                        html += "<li onclick='getInfo(this)' data-id=" + this.id + ">" + this.name + "/" + this.imo + "/" + this.callsign + "</li>";
                    })
                }
                $("#shipList").html(html);
                $("#ship-list").css("display", "inline-block");
            },
            error: function () {
                console.log("searchList error");
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
                    var ship = data.ship;
//                    $("#shipId").val(ship.id);
                    $("#shipName").val(ship.name);
                    $("#loa").val(ship.loa);
                    $("#imo").val(ship.imo);
                    $("#beam").val(ship.beam);
                    $("#shipType").val(ship.typeId);
                    $("#dwt").val(ship.dwt);
                    $("#exName").val(ship.exname);
                    $("#callSign").val(ship.callsign);
                    $("#shipClass").val(ship.classs);
                    $("#ggt").val(ship.ggt);
                    $("#flag").val(ship.flag);
                    $("#ldt").val(ship.ldt);
                    $("#buildYear").val(formatDate(ship.buildyear));
                    $("#draft").val(ship.draft);
                    $("#builder").val(ship.builder);
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