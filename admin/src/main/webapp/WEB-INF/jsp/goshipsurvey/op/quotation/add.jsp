<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<style>
    table th, td {
        text-align: center;
    }

    .modal-dialog {
        width: 60%;
        margin: 30px auto;
    }

    #ship-list {
        display: none;
        position: absolute;
        z-index: 1000;
        border: 1px solid #e5e5e5;
        background-color: white;
    }

    #ship-list ul {
        margin: 0px;
        padding: 0px;
        list-style-type: none;
    }

    #ship-list li {
        width: 298px;
        padding: 2px 5px;
    }

    #ship-list li:hover {
        background-color: #32c5d2;
        cursor: pointer;
    }
</style>
<form class="form-horizontal" action="op/quotation/add" method="post" id="quotation-add-form">
    <div id="form_modal2" class="modal fade" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header" style="background-color: #32c5d2;">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title" style="color: white">New Quotations</h4>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">

                        <div class="form-group col-md-12" style="border-bottom: 1px solid #e5e5e5;padding-bottom: 5px">
                            <label class="col-sm-2 control-label">Search ship</label>
                            <div class="col-sm-9">
                                <input class="form-control" style="width:300px;" id="keyword" type="text"
                                       placeholder="请输入船舶名称/imo/船舶呼号"<%--请输入船舶名称/imo/船舶呼号--%>
                                       autocomplete="off" disableautocomplete/>
                                <div id="ship-list">
                                    <ul id="shipList">
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" id="shipId" name="shipId" value="0">
                        <div class="form-group col-md-6">
                            <label class="col-sm-6 control-label">Ship name</label>
                            <div class="col-sm-6">
                                <input id="shipName" name="shipName" type="text" required
                                       class="form-control ">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label class="col-sm-6 control-label">IMO</label>
                            <div class="col-sm-6">
                                <input id="imo" name="imo" type="text"
                                       class="form-control ">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label class="col-sm-6 control-label">Ship type</label>
                            <div class="col-sm-6">
                                <input id="shipTypeInput" name="shipTypeInput" type="text"
                                       class="form-control ">
                                <input id="shipType" name="shipType" type="hidden" value="0">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label class="col-sm-6 control-label">Inspection type</label>
                            <div class="col-sm-6">
                                <select class="form-control" name="inspectionType">
                                    <option value="1">On hire</option>
                                    <option value="2">Off hire</option>
                                    <option value="3">Condition</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label class="col-sm-6 control-label">Inspection port</label>
                            <div class="col-sm-6">
                                <input id="inspectionPort" name="inspectionPort" type="text"
                                       class="form-control ">
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <label class="control-label col-sm-3">Inspection date(LMT)</label>
                            <div class="col-sm-9" style="padding-left: 7.5px">
                                <div class="input-group input-large date-picker input-daterange">
                                    <input type="text" class="form-control" name="dateFrom">
                                    <span class="input-group-addon"> to </span>
                                    <input type="text" class="form-control" name="dateTo">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button id="closeModal" type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <shiro:hasPermission name="quotation/add">
                        <button type="button" onclick="severCheck()" class="btn btn-primary">Save</button>
                    </shiro:hasPermission>
                </div>

            </div>
        </div>
    </div>
</form>

<script>
    $('.date-picker').datepicker({autoclose: true, todayHighlight: true, format: 'yyyy-mm-dd'});

    function severCheck() {
        if (check()) {
            $("#quotation-add-form").ajaxSubmit({
                success: function (data) {
                    if (data.success) {
                        refreshTable();
                        $("#closeModal").click();
                    } else {
                        console.log("nonono");
                    }
                }
            });
        }
    }

    function check() {
        var flag = true;
        $("#quotation-add-form input.form-control").each(function () {
            var value = $(this).val();
            if (value == null || value.trim() == "") {
                $(this).tips({
                    side: 1,
                    msg: "Cannot be empty",
                    bg: '#FF5080',
                    time: 3,
                });
                flag = false;
                return flag;
            }
        })
        return flag;
    }


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

    $(document).scroll(function () {
        $('#form_modal2 .date-picker').datepicker('place'); //#modal is the id of the modal
    });

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
                    $("#shipId").val(ship.id);
                    $("#imo").val(ship.imo);
                    $("#shipName").val(ship.name);
                    $("#shipTypeInput").val(data.shipTypeDes);
                    $("#shipType").val(ship.typeId);
                    // $("#callSign").val(ship.callsign);
                }
            }
        });
    }
</script>
