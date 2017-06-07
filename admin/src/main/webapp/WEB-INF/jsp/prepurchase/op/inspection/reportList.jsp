<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title" >
                <center><div class="caption"><h3>Reports</h3></div></center>
            </div>
            <div class="portlet-body">
                <div class="table-scrollable">
                    <table class="table table-striped table-bordered table-hover table-checkable order-column">
                        <thead>
                        <tr>
                            <th> Ship name </th>
                            <th> IMO </th>
                            <th> ship type </th>
                            <th> Inspection port </th>
                            <th> Inspection dates(LMT)</th>

                            <th> Surveyor/Consignor </th>
                            <th> Total Price </th>
                            <th> Grading </th>
                            <th> View report </th>
                            <th> Download </th>
                        </tr>
                        </thead>
                        <tbody>
                            <c:if test="${! empty inspections}" var="a">
                                <c:forEach items="${inspections}" var="i">
                                    <tr >
                                        <fmt:formatDate value="${i.purchaseQuotation.createDate}" pattern="dd/MM/yyyy" var="publicDate"/>
                                        <fmt:formatDate value="${i.purchaseQuotation.startDate}" pattern="dd/MM/yyyy" var="startDate"/>
                                        <fmt:formatDate value="${i.purchaseQuotation.endDate}" pattern="dd/MM/yyyy" var="endDate"/>
                                        <td> ${i.shipDetail.shipName} </td>
                                        <td> ${i.shipDetail.imo} </td>
                                        <td> ${i.shipDetail.shipType} </td>
                                        <td> ${i.purchaseQuotation.location} </td>
                                        <td> ${startDate}-${endDate} </td>
                                        <td> ${i.purchaseQuotation.surveyorName}</td>
                                        <td> ${i.purchaseQuotation.totalPrice} </td>
                                        <td> ${i.opGrade} </td>
                                        <td> <a data-target="navTab" href="/prepurchase/op/reportInfo?reportId=${i.inspectionReportId}" >View</a> </td>
                                        <td> <li class="fa fa-download"></li></td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                        <c:if test="${! a}" >
                            <tr>
                                <td colspan="11">没有任何报告</td>
                            </tr>
                        </c:if>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
</div>
<script>
    $(document).ready(function () {
        $("form input").prop("readonly", true);
        $("textarea").prop("readonly", true);

        $(".passport-btn").each(function () {
            initUploaders_passprot_loi_report($(this).attr("id"), "shipinfo", "${staticPath}/", "passport");
        })

        $(".loi-btn").each(function () {
            initUploaders_passprot_loi_report($(this).attr("id"), "shipinfo", "${staticPath}/", "loi");
        })

        $(".report-btn").each(function () {
            initUploaders_passprot_loi_report($(this).attr("id"), "shipinfo", "${staticPath}/", "report");
        })

    })



</script>

