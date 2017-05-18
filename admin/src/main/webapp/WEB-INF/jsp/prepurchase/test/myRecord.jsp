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
                                    <div class="caption">
                                        <i class="icon-social-dribbble font-blue-soft"></i>
                                        <span class="caption-subject font-blue-soft bold uppercase">My record</span>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <ul class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#tab_1_1" data-toggle="tab"> Last quotations </a>
                                        </li>
                                        <li>
                                            <a href="#tab_1_2" data-toggle="tab"> Last inspections </a>
                                        </li>
                                    </ul>
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
                                                    <td>Good Ship</td>
                                                    <td>1313138</td>
                                                    <td>Boom</td>
                                                    <td>On hire</td>
                                                    <td>Shang Hai</td>
                                                    <td> 4/14/2017to4/15/2017</td>
                                                    <td>$500</td>
                                                    <td>已验船</td>
                                                </tr>
                                                <tr>
                                                    <td>Good Ship</td>
                                                    <td>1313138</td>
                                                    <td>Boom</td>
                                                    <td>On hire</td>
                                                    <td>Shang Hai</td>
                                                    <td> 4/14/2017to4/15/2017</td>
                                                    <td>$500</td>
                                                    <td>已验船</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="tab-pane fade" id="tab_1_2">
                                            <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                                   id="inspection_table">
                                                <thead>
                                                <tr>
                                                    <th>Ship name</th>
                                                    <th>imo</th>
                                                    <th>Ship type</th>
                                                    <th>Inspection type</th>
                                                    <th>Inspection port</th>
                                                    <th>Inspection date(LMT)</th>
                                                    <th>Total price</th>
                                                    <th>Surveyors/Company</th>
                                                    <th>Inspection report</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>Good Ship</td>
                                                    <td>1313138</td>
                                                    <td>Boom</td>
                                                    <td>On hire</td>
                                                    <td>Shang Hai</td>
                                                    <td>2017-11-16~~2017-11-15</td>
                                                    <td>500$</td>
                                                    <td>David</td>
                                                    <td>暂无报告</td>
                                                </tr>
                                                <tr>
                                                    <td>Good Ship</td>
                                                    <td>1313138</td>
                                                    <td>Boom</td>
                                                    <td>On hire</td>
                                                    <td>Shang Hai</td>
                                                    <td>2017-11-16~~2017-11-15</td>
                                                    <td>500$</td>
                                                    <td>David</td>
                                                    <td>暂无报告</td>
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