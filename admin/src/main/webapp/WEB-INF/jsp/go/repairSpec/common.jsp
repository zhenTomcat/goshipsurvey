<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<style>
    #menu {
        width: 30px;
        height: auto;
        position: fixed;
        top: 35%;
        right: 10px;
        margin-top: -135px;
    }

    #menu ul {
        display: block;
        list-style: none;
        padding: 0;
    }

    #menu ul li a {
        width: 30px;
        height: 45px;
        padding: 8px 0;
        line-height: 15px;
        text-align: center;
        background-color: #fbfcfd;
        color: lightseagreen;
        display: block;
        font-size: 10px;
    }

    #menu ul li a:hover, #menu ul li a.cur {
        background-color: lightseagreen;
        color: #fbfcfd;
    }

    .modal-dialog {
        position: relative;
        width: 75%;
        margin: auto;
    }

    .modal-content {
        padding: 10px;
    }
</style>
<%--右侧悬浮滚动条--%>
<div id="menu">
    <ul>
        <li><a data-item="#item0" class="cur">概要</a></li>
        <li><a data-item="#item1">通用服务</a></li>
        <li><a data-item="#item2">坞修工程</a></li>
        <li><a data-item="#item3">船体工程</a></li>
        <li><a data-item="#item4">机械工程</a></li>
        <li><a data-item="#item5">电气工程</a></li>
        <li><a data-item="#item6">冷藏工程</a></li>
        <li><a data-item="#item7">特种设备</a></li>
        <li><a data-item="#item8">其他</a></li>
        <li><a data-item="#item9">完成</a></li>
    </ul>
</div>

<table style="display: none">
    <%--维修详单行模板--%>
    <tr class="details-control-child  detail-row" data-parent=""
        style="display: none;" id="detail-row-temp">
        <td><input type="checkbox" disabled class="status-control"
                   style="display:none"
                   checked="checked"></td>
        <td class="proOrderNo">维修详单</td>
        <td><a class="editDetail" data-model="dialog"
               onclick="markDetailName(this)"></a></td>
        <td><input name="repairDetailId" class="repairDetailId" type="hidden"></td>
        <td></td>
        <td>
            <button type="button" class="btn btn-sm red" onclick="deleteDetail(this)">删除
            </button>
        </td>
    </tr>


    <%--通用服务item模板(编辑/新增)--%>
    <tr id="genTmp">
        <input type="hidden" class="item-id"
               name="type${outerVs.count}List[${itemVs.index}].id">
        <input type="hidden" value="${item.catagory}" class="item-cata"
               name="type${outerVs.count}List[${itemVs.index}].catagory">
        <input type="hidden" value="${item.code}" class="item-code"
               name="type${outerVs.count}List[${itemVs.index}].code">
        <input type="hidden" value="${item.parentCode}" class="item-parent"
               name="type${outerVs.count}List[${itemVs.index}].parentCode">
        <input type="hidden" value="${item.children}" class="item-children"
               name="type${outerVs.count}List[${itemVs.index}].children">
        <input type="hidden" value="${item.sort}" class="item-sort"
               name="type${outerVs.count}List[${itemVs.index}].sort">
        <input type="hidden" value="${item.src}" class="item-src"
               name="type${outerVs.count}List[${itemVs.index}].src">
        <td class="status-td">
            <input type="checkbox" disabled
                   class="status-checkBox status-control">
            <input type="hidden" value="1" class="true-status"
                   name="type${outerVs.count}List[${itemVs.index}].status">
        </td>
        <td class="code-td">
        </td>
        <td class="content-td">
        </td>
        <td class="unit-td"></td>
        <td class="count-td">
        </td>
        <td class="remark-td">
        </td>
        <td class="show-td"></td>
    </tr>

    <%--通用服务item模板(查看)--%>
    <tr id="genInfoTmp">
        <td class="code-td">
        </td>
        <td class="content-td">
        </td>
        <td class="unit-td"></td>
        <td class="count-td">
        </td>
        <td class="remark-td">
        </td>
        <td class="show-td"></td>
    </tr>


    <%--除通用服务外item模板(编辑/新增用)--%>
    <tr id="otherTmp">
        <input type="hidden" class="item-id"
               name="type${outerVs.count}List[${itemVs.index}].id">
        <input type="hidden" value="${item.catagory}" class="item-cata"
               name="type${outerVs.count}List[${itemVs.index}].catagory">
        <input type="hidden" value="${item.code}" class="item-code"
               name="type${outerVs.count}List[${itemVs.index}].code">
        <input type="hidden" value="${item.unit}" class="item-unit"
               name="type${outerVs.count}List[${itemVs.index}].unit">
        <input type="hidden" value="${item.parentCode}" class="item-parent"
               name="type${outerVs.count}List[${itemVs.index}].parentCode">
        <input type="hidden" value="${item.children}" class="item-children"
               name="type${outerVs.count}List[${itemVs.index}].children">
        <input type="hidden" value="${item.sort}" class="item-sort"
               name="type${outerVs.count}List[${itemVs.index}].sort">
        <input type="hidden" value="${item.src}" class="item-src"
               name="type${outerVs.count}List[${itemVs.index}].src">
        <td class="status-td">
            <input type="checkbox" disabled
                   class="status-checkBox status-control">
            <input type="hidden" value="1" class="true-status"
                   name="type${outerVs.count}List[${itemVs.index}].status">
        </td>
        <td class="code-td">
        </td>
        <td class="content-td">
        </td>
        <td class="detail-td">
            <select class="model-detail-select" data-code="" data-catagory="" style="display: none"
                    onfocus="clearSelect(this)" onblur="fillSelect(this)"
                    onchange="getDetail(this)">
            </select>
        </td>
        <td class="remark-td">
        </td>
        <td class="show-td"></td>
    </tr>

    <%--除通用服务外item模板(查看)--%>
    <tr id="otherInfoTmp">
        <td class="proOrderNo-td"></td>
        <td class="proName-td"></td>
        <td class="proDesc-td"></td>
        <td class="look-td"><a href="" data-model="dialog" onclick="lookDetail(this)">查看详细</a></td>
    </tr>
</table>

<div id="responsive" class="modal fade" tabindex="-1" aria-hidden="true" data-id="">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">添加备注</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                            <textarea id="dialog-text" class="form-control" rows="10"
                                      style="resize: none;" placeholder="请添加备注信息"></textarea>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn dark btn-outline">取消</button>
                <button type="button" data-dismiss="modal" class="btn green save-remark">确认</button>
            </div>
        </div>
    </div>
</div>


<%--触发详单弹窗--%>
<a style="display:none" href="repairSpecDetail/addModelDetail?shipName=&catagory=&code=" id="add-detail"
   data-model="dialog">新增详单</a>
<input type="hidden" id="detailShipName">
<input type="hidden" id="detailCatagory">
<input type="hidden" id="detailCode">
<input type="hidden" id="detailProOrderNo">
<script>
    $('.date-picker').datepicker({autoclose: true, todayHighlight: true, format: 'yyyy-mm-dd'});
    <%--范本选择下拉列表的初始化及更新--%>
    $(document).ready(initRepairModelDetailList())
    function initRepairModelDetailList() {
        $.ajax({
            "url": 'repairSpec/getModelDetailList',
            "type": 'get',
            "success": function (data) {
                var html = "";
                html += "<option value=0>--新增详单--</option>";
                for (var i = 0; i < data.length; i++) {
                    html += "<option value=" + data[i].id + ">" + data[i].proName + "</option>"
                }
                $(".model-detail-select").html(html);
            }
        })
    }

    function clearSelect(obj) {
        $(obj)[0].selectedIndex = -1;
    }

    function fillSelect(obj) {
        $(obj)[0].selectedIndex = 0;
    }


    function getDetail(obj) {
        var thisOne = $(obj);
        var shipName = $("#shipName").val();
        var id = thisOne.val();
        var catagory = thisOne.attr("data-catagory");
        var code = thisOne.attr("data-code");
        var proOrderNo = "";
        if (id == -1) {
            return;
        }
        //自增详单号
        if (catagory == "通用服务") {
            var no = $("#type1proOrderNo").val();
            proOrderNo = "G-" + foo(no);
            $("#type1proOrderNo").val(no * 1 + 1);
        } else if (catagory == "坞修工程") {
            var no = $("#type2proOrderNo").val();
            proOrderNo = "D-" + foo(no);
            $("#type2proOrderNo").val(no * 1 + 1);
        } else if (catagory == "船体工程") {
            var no = $("#type3proOrderNo").val();
            proOrderNo = "H-" + foo(no);
            $("#type3proOrderNo").val(no * 1 + 1);
        } else if (catagory == "机械工程") {
            var no = $("#type4proOrderNo").val();
            proOrderNo = "M-" + foo(no);
            $("#type4proOrderNo").val(no * 1 + 1);
        } else if (catagory == "电气工程") {
            var no = $("#type5proOrderNo").val();
            proOrderNo = "E-" + foo(no);
            $("#type5proOrderNo").val(no * 1 + 1);
        } else if (catagory == "冷藏工程") {
            var no = $("#type6proOrderNo").val();
            proOrderNo = "R-" + foo(no);
            $("#type6proOrderNo").val(no * 1 + 1);
        } else if (catagory == "特种设备") {
            var no = $("#type7proOrderNo").val();
            proOrderNo = "S-" + foo(no);
            $("#type7proOrderNo").val(no * 1 + 1);
        } else if (catagory == "其他") {
            var no = $("#type8proOrderNo").val();
            proOrderNo = "O-" + foo(no);
            $("#type8proOrderNo").val(no * 1 + 1);
        }
        $(".marked-select").removeClass("marked-select");
        thisOne.addClass("marked-select");
        $("#detailShipName").val(shipName);
        $("#detailCatagory").val(catagory);
        $("#detailCode").val(code);
        $("#detailProOrderNo").val(proOrderNo);
//        var href = "repairSpecDetail/addModelDetail?shipName=" + shipName + "&catagory=" + catagory + "&code=" + code + "&proOrderNo=" + proOrderNo + "&id=" + id
        var href = "repairSpecDetail/addModelDetail?id=" + id;
        $('#add-detail').attr("href", href);
        $('#add-detail').click();
    }

    function markDetailName(obj) {
        $(".marked-detail-name").removeClass("marked-detail-name");
        $(obj).addClass("marked-detail-name");
    }

    function foo(str) {
        str = '00' + str;
        return str.substring(str.length - 3, str.length);
    }
</script>

<script>
    //右侧悬浮滚动条
    $(document).ready(function () {
        $(window).scroll(function () {
            var top = $(document).scrollTop(); //定义变量，获取滚动条的高度
            var menu = $("#menu"); //定义变量，抓取#menu
            var items = $("#content").find(".item"); //定义变量，查找.item
            var curId = ""; //定义变量，当前所在的楼层item #id
            items.each(function () {
                var m = $(this); //定义变量，获取当前类
                var itemsTop = m.offset().top; //定义变量，获取当前类的top偏移量
                if (top >= itemsTop - 300) {
                    curId = "#" + m.attr("id");
                } else {
                    return false;
                }
            });
            var curLink = menu.find(".cur");
            if (curId && curLink.attr("data-item") != curId) {
                curLink.removeClass("cur");
                menu.find("[data-item='" + curId + "']").addClass("cur");
            }
        });
    });

    $('#menu a').on('click', function () {
        $(document).scrollTop($($(this).attr('data-item')).offset().top - 300);
    })

    <%--显示备注--%>
    function showRemark(obj) {
        $(obj).siblings('.remark-text').toggle();
    }
    function addRemark(obj) {
        var text = $(obj).siblings('.remark-text').text()
        $('#dialog-text').val(text);
        $('.marked-add-remark').removeClass("marked-add-remark");
        $(obj).addClass('marked-add-remark');
    }

    $('.save-remark').on('click', function () {
        var text = $('#dialog-text').val();
        if (text != null && text.trim().length > 0) {
            $('.marked-add-remark').html("已备注");
        } else {
            $('.marked-add-remark').html("添加备注");
        }
        $('.marked-add-remark').removeClass("marked-add-remark").siblings('.remark-text').text(text);
    })


    <%--行的展开与折叠--%>
    function controlHidden(hidden, code, obj) {
        $(obj).toggle().siblings().toggle();
        if (hidden) {
            hiddenRow(code);
        } else {
            showRow(code);
        }
    }
    function showRow(parentCode) {
        if (parentCode != null) {
            var ele = $("tr.details-control-child[data-parent='" + parentCode + "']");
            ele.each(function () {
                $(this).css("display", "table-row");
                showRow($(this).attr("data-code"));
            })
        }
    }
    function hiddenRow(parentCode) {
        if (parentCode != null) {
            var ele = $("tr.details-control-child[data-parent='" + parentCode + "']");
            ele.each(function () {
                $(this).css("display", "none");
                hiddenRow($(this).attr("data-code"));
            })
        }
    }

    <%--新增一行--%>
    function addRow(obj) {
        var a = $(obj);
        var oldRow = a.parents("tr");
        var newRow = oldRow.clone();
        newRow.find(".unit-td input").toggle();
        newRow.find(".count-td input").toggle();
        newRow.find(".status-control").toggle();
        newRow.find(".status-td").find("input[type='hidden']").addClass("true-status");
        newRow.find(".item-id").val(null);
        newRow.find(".show-td").html("<a onclick='deleteRow(this)' class='btn btn-sm red'>删除</a>");
        var contentTd = newRow.find(".content-td");
        contentTd.find("button").remove();
        contentTd.find("input").val("");
        contentTd.find("input").prop("type", "text");
        //改code
        var oldCode = oldRow.find(".item-code").val();
        var numbers = oldCode.split(".");
        var newCode = "";
        for (var i = 0; i < numbers.length - 1; i++) {
            newCode += numbers[i] + ".";
        }
        newCode += numbers[numbers.length - 1] * 1 + 1;
        oldRow.find(".item-code").val(newCode);
        oldRow.attr("data-code", newCode);
        oldRow.find(".code-td").html(newCode);
        //改input和textarea的name
        var current = a.attr('data-current');
        var table = oldRow.parents("table");
        var index = table.attr("data-totalRow");
        table.attr("data-totalRow", index * 1 + 1);
        newRow.find('textarea').each(function () {
            var name = this.name;
            if (name != null) {
                name = name.replace("[" + current + "]", "[" + index + "]");
                this.name = name;
            }
        });
        newRow.find('input').each(function () {
            var name = this.name;
            if (name != null) {
                name = name.replace("[" + current + "]", "[" + index + "]");
                this.name = name;
            }
        });
        newRow.find(".model-detail-select").attr("data-code", oldCode).toggle();
        oldRow.before(newRow);
        calStatus(oldRow.parents("table"));
    }
</script>

<script>
    <%--左侧checkBox状态控制--%>
    function inputControl(obj) {
        var tr = $(obj).parents("tr");
        var code = tr.attr("data-code");
        changeStatus(code);
    }

    function addDetail(repairSpecDetailId, proName, proOrderNo) {
        var tr = $(".marked-select").removeClass("marked-select").parents("tr");
        var code = tr.attr("data-code");
        var newRow = $("#detail-row-temp").clone().attr("data-parent", code).removeAttr("id").toggle();
        newRow.find(".repairDetailId").val(repairSpecDetailId);
        newRow.find(".proOrderNo").html(proOrderNo);
        var a = newRow.find(".editDetail");
        a.html(proName).attr("href", "repairSpecDetail/editSpecDetail?id=" + repairSpecDetailId);
        tr.after(newRow);
        changeStatus(code);
    }

    function deleteDetail(obj) {
        var tr = $(obj).parents("tr");
        var id = tr.find(".repairDetailId").val();
        var code = tr.attr("data-parent");
        tr.remove();
        changeStatus(code);
    }

    function deleteRow(obj) {
        if (!window.confirm("确认删除?提醒:删除栏目会将栏目下的详单一并删除!"))return;
        var tr = $(obj).parents("tr");
        var pCode = tr.attr("data-parent");
        tr.remove();
        var code = tr.attr("data-code");
        $("tr[data-parent='" + code + "']").remove();
        changeStatus(pCode);
    }

    function changeStatus(code) {
        if (code != null) {
            var tr = $("tr[data-code='" + code + "']")
            var flag = false;
            var children = $("tr[data-parent='" + code + "']");
            children.each(function () {
                var status = $(this).find(".status-control").prop("checked");
                if (status) {
                    flag = true;
                    return false;
                }
            })
            if (!flag) {
                var inputs = tr.find(".input-control");
                inputs.each(function () {
                    var status = !($(this).val() == null || $(this).val().trim() == "");
                    if (status) {
                        flag = true;
                        return false;
                    }
                })
            }
            if (flag) {
                tr.find(".status-control").prop("checked", true);
                tr.find(".true-status").val(0);
            } else {
                tr.find(".status-control").prop("checked", false);
                tr.find(".true-status").val(1);
            }
            var nextCode = tr.attr("data-parent");
            if (nextCode == null || nextCode == 0) {
                calStatus(tr.parents("table"))
                return;
            }
            changeStatus(nextCode);
        }
    }


    //计算勾选数
    function calStatus(table) {
        var trueStatusS = table.find(".true-status");
        var total = trueStatusS.length;
        var checkedTotal = 0;
        trueStatusS.each(function () {
            if ($(this).val() == 0) {
                checkedTotal++;
            }
        })
        var text = checkedTotal + "/" + total;
        table.parents(".item").find(".checkedOrNot").text(text);
    }
</script>