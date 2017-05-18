<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<style>
    table th, td {
        text-align: center;
    }

    .modal-dialog {
        width: 60%;
        margin: 30px auto;
    }
</style>
<div class="row">
    <div class="col-md-12">
        <div class="portlet light bordered">
            <div class="portlet-body">
                <div class="table-toolbar">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet light">
                                <div class="portlet-title">
                                    <div class="caption col-md-8">
                                        <i class="icon-social-dribbble font-blue-soft"></i>
                                        <span class="caption-subject font-blue-soft bold uppercase">Quotations</span>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="btn-group">
                                            <a href="#form_modal2" data-toggle="modal"
                                               class="btn blue"><i class="fa fa-plus"></i> New quotation
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="tab-content">
                                        <div class="tab-pane fade active in" id="tab_1_1">
                                            <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                                   id="quotation_table">
                                                <thead>
                                                <tr>
                                                    <th>Ship name</th>
                                                    <th>imo</th>
                                                    <th>Ship type</th>
                                                    <th>Inspection type</th>
                                                    <th>Inspection port</th>
                                                    <th>Inspection date(LMT)</th>
                                                    <th>Total price</th>
                                                    <th>Status</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>Bad Ship</td>
                                                    <td>92738272</td>
                                                    <td>Boom</td>
                                                    <td>On hire</td>
                                                    <td>Shanghai</td>
                                                    <td>Inspection date(LMT)</td>
                                                    <td></td>
                                                    <td>
                                                        <button class="btn">询价</button>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="clearfix margin-bottom-20"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div id="form_modal2" class="modal fade" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form class="form-horizontal" action="report/add" method="post" id="defForm">
                <div class="modal-header" style="background-color: #32c5d2;">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title" style="color: white">New Quotations</h4>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="form-group col-md-6">
                            <label class="col-sm-6 control-label">Ship name</label>
                            <div class="col-sm-6">
                                <input id="shipName" name="shipName" type="text"
                                       class="form-control ">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label class="col-sm-6 control-label">IMO</label>
                            <div class="col-sm-6">
                                <input id="IMO" name="IMO" type="text"
                                       class="form-control ">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label class="col-sm-6 control-label">Ship type</label>
                            <div class="col-sm-6">
                                <input id="shipType" name="shipType" type="text"
                                       class="form-control ">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label class="col-sm-6 control-label">Inspection type</label>
                            <div class="col-sm-6">
                                <select class="form-control" name="inspectionType">
                                    <option>On hire</option>
                                    <option>Off hire</option>
                                    <option>Condition</option>
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
                                <div class="input-group input-large date-picker input-daterange" data-date="10/11/2012"
                                     data-date-format="mm/dd/yyyy">
                                    <input type="text" class="form-control" name="from">
                                    <span class="input-group-addon"> to </span>
                                    <input type="text" class="form-control" name="to"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <shiro:hasPermission name="account/editName">
                        <button type="submit" class="btn btn-primary">Save</button>
                    </shiro:hasPermission>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    if (jQuery().datepicker) {
        $('.date-picker').datepicker({
            rtl: App.isRTL(),
            orientation: "left",
            autoclose: true
        });
        $('body').removeClass("modal-open"); // fix bug when inline picker is used in modal
    }
    $(document).scroll(function () {
        $('#form_modal2 .date-picker').datepicker('place'); //#modal is the id of the modal
    });
</script>
