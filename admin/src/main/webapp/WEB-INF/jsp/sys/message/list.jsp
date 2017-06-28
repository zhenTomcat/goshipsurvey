<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<style>
    .search-input :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
        color: white !important;
    }

    .search-input ::-moz-placeholder { /* Mozilla Firefox 19+ */
        color: white !important;
    }

    .search-input:-ms-input-placeholder {
        color: white !important;
    }

    .search-input::-webkit-input-placeholder {
        color: white !important;
    }

    .quotation-content {
        margin-top: 15px
    }

    .btn-back {
        float: left;
        margin-left: 20px;
    }

    table, th, td {
        text-align: center;
    }

    .rating {
        margin-bottom: 4px;
        font-size: 15px;
        line-height: 27px;
        color: #404040;
    }

    .rating input {
        position: absolute;
        left: -9999px;
    }

    .rating label {
        color: #ccc;
        -ms-transition: color 0.3s;
        -moz-transition: color 0.3s;
        -webkit-transition: color 0.3s;
        display: block;
        float: right;
        height: 17px;
        margin-top: 5px;
        padding: 0 2px;
        font-size: 17px;
        line-height: 17px;
        cursor: pointer;
    }

    .rating input:checked ~ label {
        color: #72c02c;
    }

    .head-set {
        padding-right: 3px;
        padding-left: 3px;
    }


</style>
<h1 style="text-align: center;background-color: #3598dc;color: white;margin-top: 0">Message</h1>
<div class="row">
    <div class="col-md-12">
        <form class="form-horizontal" action="op/quotation/add" method="post" id="quotation-add-form">
            <div class="form-group col-md-3">
                <label class="col-md-6 control-label head-set">Title</label>
                <div class="col-md-6">
                    <input id="title" type="text"
                           class="form-control required head-set">
                </div>
            </div>
            <div class="form-group col-md-5">
                <label class="control-label col-sm-3 head-set">Message from </label>
                <div class="col-sm-9" style="padding-left: 7.5px">
                    <div class="input-group input-large date-picker input-daterange">
                        <input id="dateStart" type="text" class="form-control required head-set">
                        <span class="input-group-addon"> to </span>
                        <input id="dateEnd" type="text" class="form-control required head-set">
                    </div>
                </div>
            </div>
            <div class="form-group col-md-3">
                <label class="col-sm-6 control-label">Read</label>
                <div class="col-sm-6">
                    <select id="readStatus"
                            class="form-control">
                        <option value>--select--</option>
                        <option value="0">Unread</option>
                        <option value="1">Read</option>
                    </select>
                </div>
            </div>
            <div class="form-group col-md-2" style="text-align: center">
                <button type="button" class="btn" onclick="refreshTable(true)">Search</button>
                <button id="reset-btn" type="reset" class="btn">Clean</button>
            </div>
        </form>
    </div>
    <hr style="width: 95%;margin: auto;margin-bottom:10px">
    <div class="col-md-12">
        <div style="margin-bottom: 10px;margin-left: 20px;">
            <button data-url="message/batchUnread" data-msg="确定设为未读吗？" data-model="ajaxToDo"
                    class="btn  btn-circle  green"
                    data-checkbox-name="chx_default" data-callback="refreshTable">Set as unread</i>
            </button>
            <button data-url="message/batchRead" data-msg="确定设为已读吗？" data-model="ajaxToDo"
                    class="btn  btn-circle  green"
                    data-checkbox-name="chx_default" data-callback="refreshTable">Set as read</i>
            </button>
            <button data-url="message/batchDelete" data-msg="确定批量删除吗？" data-model="ajaxToDo"
                    class="btn  btn-circle  green"
                    data-checkbox-name="chx_default" data-callback="refreshTable">Delete
                <i class="fa fa-times"></i>
            </button>
        </div>
        <table class="table  table-checkable table-bordered"
               id="message_table">
            <thead>
            <tr>
                <th width="10%">
                    <input type='checkbox' id="defaultCheck"/>
                </th>
                <th width="60%">Title</th>
                <th width="15%">Created At</th>
                <th width="15%">Read at</th>
            </tr>
            <tbody></tbody>
            </thead>
        </table>
    </div>
</div>

<div id="message_modal" class="modal fade" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #32c5d2;">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 id="modal-title" class="modal-title" style="color: white">Message content</h4>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <div id="modal-content" class="form-group col-md-12"
                         style="word-wrap: break-word">
                    </div>
                </div>
            </div>
            <%--<div class="modal-footer">--%>
            <%--<button id="closeModal" type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>--%>
            <%--</div>--%>
        </div>
    </div>
</div>

<script>
    $('.date-picker').datepicker({autoclose: true, todayHighlight: true, format: 'yyyy-mm-dd'});


    var messageTable;
    $(document).ready(function () {
        $.cookie("onOffLastPage", "message");
        drawTable();
    });

    function drawTable() {
        messageTable = $('#message_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "pageLength": 20,
            "autoWidth": false,
            "processing": true,
            "serverSide": true,
            'bStateSave': true,
            "ajax": {
                "url": "message/list",
                "type": "get",
                "data": function (data) {
                    data.title = $("#title").val();
                    data.dateStart = $("#dateStart").val();
                    data.dateEnd = $("#dateEnd").val();
                    data.readStatus = $("#readStatus").val();
                }
            },
            "language": {
                "url": "http://windyeel.oss-cn-shanghai.aliyuncs.com/global/plugins/datatables/cn.txt"
            },
            "createdRow": function (row, data, index) {
                $('td:eq(0)', row).html("<input type='checkbox' name='chx_default' value='" + data.id + "'/>");
            },
            "lengthMenu": [[5, 20, 40], [5, 20, 40]],
            "columns": [
                {"data": "id", "orderable": false},
                {"data": "title"},
                {
                    "data": "createDate",
                    "render": function (data) {
                        return new Date(data).Format("yyyy-MM-dd");
                    }
                },
                {
                    "data": "readDate",
                    "class": "readDateTd",
                    "render": function (data) {
                        if (data != null) {
                            return new Date(data).Format("yyyy-MM-dd");
                        }
                        return "";
                    }
                },
            ],
            "columnDefs": [{
                "targets": 1,
                "render": function (data, type, row) {
                    var html = '<div class="rating"><div class="op-point-div"> <input type="radio" value="1"';
                    var topTime = row.topTime;
                    var isTop = true;
                    if (topTime != 0) {
                        html += 'checked';
                        isTop = false;
                    }
                    html += ' > <label  style="float: left" data-top="' + isTop + '" onclick="toTop(' + row.id + ',this)"><i class="fa fa-star"></i></label></div></div>';
                    var readStatus = row.readStatus;
                    if (readStatus == 0) {
                        html += '<a  href="#message_modal" data-id="' + row.id + '" data-unread="true" data-toggle="modal" data-title="' + row.title + '" data-content="' + row.content + '" onclick="changeMessage(this)">' + row.title + '</a>';
                        html += '<span class="unread-span">(not read)</span>';
                    } else {
                        html += '<a href="#message_modal"  data-id="' + row.id + '"  data-unread="false" data-toggle="modal" data-title="' + row.title + '" data-content="' + row.content + '" onclick="changeMessage(this)">' + row.title + '</a>';
                    }
                    return html;
                }
            }],
            "drawCallback": function (settings) {
                drawICheck('defaultCheck', 'chx_default');
            },
        });
    }


    function refreshTable(toFirst) {
        if (toFirst) {//表格重绘，并跳转到第一页
            messageTable.draw();
        } else {//表格重绘，保持在当前页
            messageTable.draw(false);
        }
    }

    function toTop(id, obj) {
        var toTop = $(obj).attr("data-top");
        $.ajax({
            type: "POST",
            url: "message/toTop",
            data: {id: id, toTop: toTop},
            success: function (data) {
                refreshTable();
            },
            error: function () {

            }
        })
    }

    function changeMessage(obj) {
        var thisOne = $(obj);
        var title = thisOne.attr("data-title");
        var content = thisOne.attr("data-content");
        $("#modal-title").html(title);
        $("#modal-content").html(content);

        var unread = thisOne.attr("data-unread");
        if (unread) {
            var id = thisOne.attr("data-id");
            $.ajax({
                type: "get",
                url: "message/batchRead",
                data: {ids: id},
                success: function (data) {

                }
            })
            thisOne.attr("data-unread", false);
            thisOne.siblings(".unread-span").remove();
            thisOne.closest("tr").find(".readDateTd").html(new Date().Format("yyyy-MM-dd"));
        }
    }


</script>
