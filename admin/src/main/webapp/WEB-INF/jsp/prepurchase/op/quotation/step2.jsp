<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    #port-list {
        display: none;
        position: absolute;
        top: 30px;
        z-index: 1000;
        border: 1px solid #e5e5e5;
        background-color: white;
    }

    #port-list ul {
        margin: 0px;
        padding: 0px;
        list-style-type: none;
    }

    #port-list ul {
        width: 100%;
    }

    #port-list li {
        padding: 1px 7px;
        cursor: pointer;
    }

    #port-list li:hover {
        padding: 5px 11px;
        background-color: #32c5d2;
        cursor: pointer;
        font-size: 20px;
    }
</style>
<div class="tab-pane fade" id="step2">
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
                                <div class="timeline-icon selected">
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
                        Data & Location
                    </div>
                </div>
                <div class="portlet-body form">
                    <form role="form" class="form-horizontal">
                        <div class="form-body">
                            <div class="row">
                                <div class="form-group form-md-line-input col-md-12">
                                    <label class="col-md-3 control-label">Date From</label>
                                    <div class="input-group col-md-6">
                                        <input type="text" class="form-control date-picker" name="startDate">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group form-md-line-input col-md-12">
                                    <label class="col-md-3 control-label">Date To</label>
                                    <div class="input-group col-md-6">
                                        <input type="text" class="form-control date-picker" name="endDate">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group form-md-line-input col-md-12">
                                    <label class="col-md-3 control-label">Location</label>
                                    <div class="input-group col-md-6">
                                        <input id="portName" type="text" class="form-control" name="location"
                                               autocomplete="off">
                                        <div id="port-list">
                                            <ul id="portList">
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-actions right">
                            <a data-toggle="tab" href="#step1"
                               class="btn default btn-back">Back</a>
                            <a data-toggle="tab" href="#step3"
                               class="btn default">Next</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $("#portName").on("keyup", function () {
        var keyword = $(this).val();
        if (keyword == null || (keyword = keyword.trim()) == "") {
            return;
        }
        $.ajax({
            url: 'port/searchList',
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
                        html += "<li onclick='getPortInfo(this)'>" + this.portEn + "," + this.countryCode + "</li>";
                    })
                }
                $("#portList").html(html);
                $("#port-list").css("display", "block");
            },
            error: function () {
                console.log("searchList error");
            }
        })
    })
    //点击获取港口信息
    function getPortInfo(obj) {
        var portInfo = $(obj).html();
        $("#portName").val(portInfo);
    }

    $(document).click(function (event) {
        $("#port-list").css("display", "none");
    })
</script>