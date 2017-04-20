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

    .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
        padding-left: 5px;
        padding-right: 5px;
    }

    .form-control {
        width: 90%;
    }

    .form-horizontal .control-label {
        text-align: left;
    }

    table, .portlet .portlet {
        margin-bottom: 0;
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
                                        <span class="caption-subject font-blue-soft bold uppercase">Apply Survey</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <!-- BEGIN Portlet PORTLET-->
                                        <div class="portlet box blue">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <i class="fa fa-info"></i>Detail
                                                </div>
                                                <div class="tools">
                                                    <a href="javascript:;" class="collapse"></a>
                                                </div>
                                                <div class="actions">
                                                    <a class="btn btn-sm green-jungle"><i class="fa fa-pencil"></i>
                                                        Complete</a>
                                                </div>

                                            </div>
                                            <div class="portlet-body">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="portlet box green">
                                                            <div class="portlet-title">
                                                                <div class="caption">Details</div>
                                                                <div class="tools">
                                                                    <a href="javascript:;" class="collapse"> </a>
                                                                </div>
                                                            </div>
                                                            <div class="portlet-body">
                                                                <table class="table table-striped table-bordered table-hover  ">
                                                                    <thead>
                                                                    <tr>
                                                                        <th>Ship name</th>
                                                                        <th>imo</th>
                                                                        <th>Ship type</th>
                                                                        <th>Inspection type</th>
                                                                        <th>Inspection port</th>
                                                                        <th>Inspection date(LMT)</th>
                                                                        <th>Total price</th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td>Bad Ship</td>
                                                                        <td>92738272</td>
                                                                        <td>Boom</td>
                                                                        <td>On hire</td>
                                                                        <td>Shanghai</td>
                                                                        <td>
                                                                            4/14/2017
                                                                            to
                                                                            4/15/2017
                                                                        </td>
                                                                        <td>$:50</td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="portlet box green">
                                                            <div class="portlet-title">
                                                                <div class="caption">Surveyors</div>
                                                                <div class="tools">
                                                                    <a href="javascript:;" class="collapse"> </a>
                                                                </div>
                                                            </div>
                                                            <div class="portlet-body">
                                                                <table class="table table-striped table-bordered table-hover  ">
                                                                    <thead>
                                                                    <tr>
                                                                        <th>Surveyor name / Company</th>
                                                                        <th>Passport</th>
                                                                        <th>Surveyor CV</th>
                                                                        <th>Inspection report</th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td>David</td>
                                                                        <td>Shanghai</td>
                                                                        <td>OKOKOK</td>
                                                                        <td>No report</td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <form class="form-horizontal" action="report/add"
                                                      method="post">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="portlet box green">
                                                                <div class="portlet-title">
                                                                    <div class="caption">Other Details</div>
                                                                    <div class="tools">
                                                                        <a href="javascript:;" class="collapse"> </a>
                                                                    </div>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <div class="container-fluid">
                                                                        <div class="col-md-8">
                                                                            <div class="form-group col-md-12">
                                                                                <label class="col-sm-2 control-label">On
                                                                                    hire</label>
                                                                            </div>
                                                                            <div class="form-group col-md-6">
                                                                                <label class="col-sm-5 control-label">Delivery
                                                                                    by</label>
                                                                                <div class="col-sm-7">
                                                                                    <input id="deliveryBy"
                                                                                           name="deliveryBy"
                                                                                           type="text"
                                                                                           class="form-control ">
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group col-md-6">
                                                                                <label class="col-sm-5 control-label">Accepted
                                                                                    by</label>
                                                                                <div class="col-sm-7">
                                                                                    <input id="acceptedBy"
                                                                                           name="acceptedBy"
                                                                                           type="text"
                                                                                           class="form-control ">
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group col-md-3">
                                                                                <label class="col-sm-12 control-label">Ship
                                                                                    particulars</label>
                                                                            </div>
                                                                            <div class="form-group col-md-9">
                                                                                <textarea class="form-control"
                                                                                          style="height:200px;resize: none;width: 94%">
                                                                                </textarea>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <label class="col-sm-12 control-label"
                                                                                   style="margin-bottom: 15px">Port
                                                                                agency</label>
                                                                            <textarea class="form-control"
                                                                                      style="height:250px;resize: none;width: 94%">
                                                                                </textarea>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <!-- END Portlet PORTLET-->
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

