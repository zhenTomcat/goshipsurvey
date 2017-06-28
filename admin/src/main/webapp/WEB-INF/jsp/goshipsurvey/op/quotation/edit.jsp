<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<style>
    #modal_form .modal-dialog {
        width: 90%;
        margin: 0px auto;
    }

    #modal_form .modal-dialog .modal-body {
        padding: 5px;
    }

    #modal_form .form-group {
        margin-bottom: 5px;
    }

    #ship-list, #port-list {
        display: none;
        position: absolute;
        z-index: 1000;
        border: 1px solid #e5e5e5;
        background-color: white;
    }

    #ship-list ul, #port-list ul {
        margin: 0px;
        padding: 0px;
        list-style-type: none;
    }

    #ship-list li {
        width: 298px;
        padding: 2px 5px;
    }

    #port-list ul {
        width: 160px;
        padding: 2px 5px;
    }

    #ship-list li:hover, #port-list li:hover {
        background-color: #32c5d2;
        cursor: pointer;
    }
</style>
<form class="form-horizontal" action="op/quotation/editComplete" method="post" id="quotation-edit-form">
    <input type="hidden" value="${quotation.id}" name="id"/>
    <input type="hidden" value="${quotation.opId}" name="opId"/>
    <input type="hidden" value="${quotation.opName}" name="opName"/>
    <input type="hidden" value=" <fmt:formatDate value="${quotation.createDate}" pattern="yyyy-MM-dd"/> "
           name="createDate"/>
    <input type="hidden" value="${quotation.quotationStatus}" name="quotationStatus"/>
    <input type="hidden" value="${quotation.createBy}" name="createBy"/>
    <input type="hidden" value="${quotation.delFlag}" name="delFlag"/>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #32c5d2;">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title" style="color: white">Edit Quotations</h4>
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
                    <input type="hidden" id="shipId" name="shipId" value="${quotation.shipId}">
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label class="col-sm-6 control-label">Ship name</label>
                            <div class="col-sm-6">
                                <input id="shipName" name="shipName" type="text"
                                       class="form-control " value="${quotation.shipName}">
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label class="col-sm-6 control-label">IMO</label>
                            <div class="col-sm-6">
                                <input id="imo" name="imo" type="text"
                                       class="form-control " value="${quotation.imo}">
                            </div>
                        </div>
                        <div class="form-group col-md-4">
                            <label class="col-sm-6 control-label">Ship type</label>
                            <div class="col-sm-6">
                                <select class="form-control" name="shipType" id="shipTypeSelect">
                                    <c:forEach items="${shipType}" var="s">
                                        <option value="${s.value}"
                                                <c:if test="${quotation.shipType==s.value}">selected</c:if>
                                        >${s.des}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label class="col-sm-6 control-label">Inspection port</label>
                            <div class="col-sm-6">
                                <input id="portName" name="portName" type="text"
                                       class="form-control " autocomplete="off" value="${quotation.portName}">
                                <div id="port-list">
                                    <ul id="portList">
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-8">
                            <label class="col-sm-3 control-label" id="inspectionTypeLabel">Inspection type</label>
                            <div class="col-sm-9">
                                <div class="mt-checkbox-inline">
                                    <c:forEach items="${inspectionType}" var="ins">
                                        <label class="mt-checkbox col-sm-3">
                                            <input type="checkbox" value="${ins.value}"
                                                   class="inspectionTypeCheckBox"
                                                   name="inspectionType"
                                            <c:forEach items="${quotation.inspectionTypes}" var="ss">
                                                   <c:if test="${ss==ins.value}">checked</c:if>
                                            </c:forEach>
                                            >
                                                ${ins.des}
                                            <span></span>
                                        </label>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="control-label col-sm-4">Inspection date(LMT)</label>
                            <div class="col-sm-8" style="padding-left: 7.5px">
                                <div class="input-group input-large date-picker input-daterange">
                                    <input type="text" class="form-control " name="startDate"
                                           value="<fmt:formatDate value="${quotation.startDate}" pattern="yyyy-MM-dd"/>">
                                    <span class="input-group-addon"> to </span>
                                    <input type="text" class="form-control " name="endDate"
                                           value="<fmt:formatDate value="${quotation.endDate}" pattern="yyyy-MM-dd"/>">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label class="control-label col-sm-4">Current quantity of bunkers from ship<i
                                class="fa fa-info-circle"></i></label>
                        <div class="col-sm-8">
                                <textarea name="currentQuantity"
                                          style="height:100px;resize: none;width: 94%;margin-left: 2%"
                                          class="form-control ">${quotation.currentQuantity}</textarea>
                            <div class="col-sm-12" style="margin-top: 5px">
                                <button type="button" style="margin-left: 10px" id="currentQuantity-btn"
                                        title="A photo about current quantity"
                                        class="col-sm-4 btn btn-sm blue current-quantity-btn">
                                    <i class="fa fa-upload"></i>
                                    upload
                                </button>
                                <div class="col-sm-6 btn-group upload-file-div"
                                     <c:if test="${quotation.currentQuantityUrl==''}">style="display: none"</c:if>
                                >
                                    <input class="form-control ship-particulars-url-input"
                                           data-loi="true"
                                           name="currentQuantityUrl" value="${quotation.currentQuantityUrl}"
                                           type="hidden"/>
                                    <a class="btn btn-sm green"
                                       target="_blank"
                                       href="${quotation.currentQuantityUrl}">View</a>
                                    <span class="input-group-btn">
                                        <button class="btn red btn-sm" type="button" title="delete"
                                                onclick="delFileAndInput(this)">
                                            <i class="fa fa-ban"></i></button>
                                    </span>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="form-group col-md-6">
                        <label class="col-sm-4 control-label">Bonus plan</label>
                        <div class="form-group col-sm-8">
                            <textarea class="form-control"
                                      name="bonusPlan"
                                      style="height:100px;resize: none;width: 94%;margin-left: 2%">${quotation.bonusPlan}</textarea>
                        </div>
                    </div>
                    <div class="col-md-12" style="border-top: 1px solid #e5e5e5;padding-top: 10px;">
                        <div class="col-md-8">
                            <div class="form-group col-md-12">
                                <label class="col-sm-3 control-label">On hire<i
                                        class="fa fa-info-circle"></i></label>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="col-sm-6 control-label">Delivery by</label>
                                <div class="col-sm-6">
                                    <input id="" name="deliveryBy" type="text" disabled
                                           data-value="1" value="${quotation.deliveryBy}"
                                           class="form-control other-detail-input">
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="col-sm-6 control-label">Accepted by</label>
                                <div class="col-sm-6">
                                    <input name="acceptedBy" type="text" disabled
                                           data-value="1" value="${quotation.acceptedBy}"
                                           class="form-control other-detail-input">
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <label class="col-sm-3 control-label">Off hire<i
                                        class="fa fa-info-circle"></i></label>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="col-sm-6 control-label">Re-delivery by</label>
                                <div class="col-sm-6">
                                    <input name="reDeliveryBy" type="text" disabled
                                           data-value="2" value="${quotation.reDeliveryBy}"
                                           class="form-control other-detail-input">
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="col-sm-6 control-label">Re-accepted by</label>
                                <div class="col-sm-6">
                                    <input name="reAcceptedBy" type="text" disabled
                                           data-value="2" value="${quotation.reAcceptedBy}"
                                           class="form-control other-detail-input">
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <label class="col-sm-3 control-label">Condition<i
                                        class="fa fa-info-circle"></i></label>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="col-sm-6 control-label">Charter</label>
                                <div class="col-sm-6">
                                    <input name="charter" type="text" disabled
                                           data-value="3" value="${quotation.charter}"
                                           class="form-control other-detail-input">
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="col-sm-6 control-label">Owner</label>
                                <div class="col-sm-6">
                                    <input name="owner" type="text" disabled
                                           data-value="3" value="${quotation.owner}"
                                           class="form-control other-detail-input">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <label class="col-sm-3 control-label">Ship particulars <i
                                        class="fa fa-info-circle"></i></label>
                                <div class="form-group col-md-9">
                                        <textarea class="form-control ship-particulars-textarea"
                                                  name="shipParticulars"
                                                  style="height:100px;resize: none;width: 94%;margin-left: 2%">${quotation.shipParticulars}</textarea>
                                    <br/>
                                    <button type="button" style="margin-left: 10px" id="particulars-btn"
                                            class="col-sm-4 btn btn-sm blue ship-particulars-btn">
                                        <i class="fa fa-upload"></i>
                                        Ship
                                        particulars upload
                                    </button>
                                    <div class="col-sm-6 btn-group upload-file-div"
                                         <c:if test="${quotation.shipParticularsUrl==''}">style="display: none"</c:if>
                                    >
                                        <input class="form-control ship-particulars-url-input"
                                               data-loi="true"
                                               name="shipParticularsUrl" value="${quotation.shipParticularsUrl}"
                                               type="hidden"/>
                                        <a class="btn btn-sm green"
                                           target="_blank"
                                           href="${quotation.shipParticularsUrl}">DOWNLOAD</a>
                                        <span class="input-group-btn">
                                                <button class="btn red btn-sm" type="button" title="delete"
                                                        onclick="delFileAndInput(this)">
                                                    <i class="fa fa-ban"></i></button>
                                            </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label class="col-md-12 control-label"
                                   style="margin-bottom: 15px;text-align: left">Port
                                agency <i class="fa fa-info-circle"></i></label>
                            <textarea
                                    class="form-control port-agency-textarea "
                                    name="portAgency"
                                    style="height:230px;resize: none;width: 94%">${quotation.portAgency}</textarea>
                            <br><br>
                            <button type="button" id="loi-btn"
                                    class="col-sm-6 btn btn-sm blue loi-btn">
                                <i class="fa fa-upload"></i>
                                L.O.I
                                without
                                sign upload
                            </button>
                            <div class="col-sm-6 btn-group upload-file-div"
                                 <c:if test="${quotation.blankLoiUrl==''}">style="display: none"</c:if>
                            >
                                <input class="form-control ship-particulars-url-input"
                                       data-loi="true"
                                       name="blankLoiUrl" value="${quotation.blankLoiUrl}"
                                       type="hidden"/>
                                <a class="btn btn-sm green"
                                   target="_blank"
                                   href="${quotation.blankLoiUrl}">DOWNLOAD</a>
                                <span class="input-group-btn">
                                                <button class="btn red btn-sm" type="button" title="delete"
                                                        onclick="delFileAndInput(this)">
                                                    <i class="fa fa-ban"></i></button>
                                            </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <label style="float: left"> <i class="fa fa-info-circle">This information can't be read by surveyor,
                    until chosen
                    surveyor/company.</i></label>
                <button id="closeModal" type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <shiro:hasPermission name="op/quotation/edit">
                    <button type="button" onclick="severCheck()" class="btn btn-primary">Save</button>
                </shiro:hasPermission>
            </div>
        </div>
    </div>
</form>
<script>


    $('.date-picker').datepicker({autoclose: true, todayHighlight: true, format: 'yyyy-mm-dd'});

    $(document).ready(function () {
        var inspectionTypes = $("#quotation-edit-form .inspectionTypeCheckBox");
        console.log(inspectionTypes.length);
        for (var i = 0, length = inspectionTypes.length; i < length; i++) {
            var value = inspectionTypes[i].value;
            if (inspectionTypes[i].checked) {
                $("#quotation-edit-form  .other-detail-input[data-value='" + value + "']").attr("disabled", false);
            } else {
                $("#quotation-edit-form  .other-detail-input[data-value='" + value + "']").val("");
            }
        }
    });

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


    initUploaders_loi_without_sign_and_ship_particulars("particulars-btn", "shipinfo", "${staticPath}/");
    initUploaders_loi_without_sign_and_ship_particulars("loi-btn", "shipinfo", "${staticPath}/");
    initUploaders_quotation_oil_photo("currentQuantity-btn", "shipinfo", "${staticPath}/");

    function severCheck() {
        if (check()) {
            $("#quotation-edit-form").ajaxSubmit({
                success: function (data) {
                    if (data.success) {
                        $("#closeModal").click();
                        drawTable();
                    } else {
                        alert("edit quotation error")
                    }
                },
            });
        }
    }

    function check() {
        var flag = true;
        $("#quotation-edit-form input.form-control.required").each(function () {
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

        if (flag) {
            var flag2 = false;
            var checkBoxs = $("#quotation-edit-form .inspectionTypeCheckBox");
            checkBoxs.each(function () {
                if (this.checked) {
                    flag2 = true;
                    return false;
                }
            })

            if (!flag2) {
                $("#quotation-edit-form .inspectionTypeCheckBox:first").tips({
                    side: 1,
                    msg: "至少选择一个",
                    bg: '#FF5080',
                    time: 3,
                });
            }

            flag = flag2;

        }
        return flag;
    }


    //点击document隐藏下拉层
    $(document).click(function (event) {
        $("#ship-list").css("display", "none");
        $("#port-list").css("display", "none");
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
                    $("#shipTypeSelect").val(ship.typeId);
                    $("#shipName").val(ship.name);
                }
            }
        });
    }

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
                $("#port-list").css("display", "inline-block");
            },
            error: function () {
                console.log("searchList error");
            }
        })
    })

    //点击获取信息
    function getPortInfo(obj) {
        var portInfo = $(obj).html();
        $("#portName").val(portInfo);
    }

    $(".inspectionTypeCheckBox").on("click", function () {
        var flag = this.checked;
        var value = this.value;
        $("#quotation-edit-form .other-detail-input[data-value='" + value + "']").attr("disabled", !flag).val("");
    })


    function delFileAndInput(obj) {
        var div = $(obj).parent().parent();
        div.find("input").val("");
        div.find("a").attr("href", "");
        div.css("display", "none");
    }
</script>
