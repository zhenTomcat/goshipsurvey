<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<style>
    .timeline .timeline-badge {
        float: none;
    }

    .timeline .timeline-icon {
        background-color: #e1e5ec;
        display: table;
        padding-top: 0px;
        padding-left: 0px;
        vertical-align: middle;
        align-content: center;
        text-align: center;
    }

    .timeline:before {
        background: #e1e5ec;
    }

    .timeline-content {
        display: table-cell;
        vertical-align: middle;
        width: 100%;
        text-align: center;
    }

    .timeline-icon.selected {
        background-color: #32c5d2;
        color: white
    }

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


</style>
<h1 style="text-align: center;background-color: #3598dc;color: white;margin-top: 0">New Quotation</h1>
<form id="add_purchase_quotation_form" role="form" class="form-horizontal" action="prepurchase/op/quotation/addComplete"
      method="POST">
    <div class="tab-content">
        <div class="tab-pane fade active in" id="step5">
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
                                        <div class="timeline-icon selected">
                                            <div class="timeline-content">agency</div>
                                        </div>
                                    </div>
                                    <div class="margin-bottom-40"></div>
                                    <div class="timeline-badge">
                                        <div class="timeline-icon selected">
                                            <div class="timeline-content">public</div>
                                        </div>
                                    </div>
                                    <div class="margin-bottom-40"></div>
                                    <div class="timeline-badge">
                                        <div class="timeline-icon selected">
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
                                Price & choose surveyor
                            </div>
                        </div>
                        <div class="portlet-body form">
                            <div class="form-body">
                                <div class="row">
                                    <table class="table table-striped table-bordered table-hover  ">
                                        <thead>
                                        <tr>
                                            <th>Apply company</th>
                                            <th>Company detail</th>
                                            <th>Location</th>
                                            <th>Surveyor</th>
                                            <th>Surveyor CV</th>
                                            <th>Past evaluation</th>
                                            <th>Quotation</th>
                                            <th>Choose</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${list}" var="application">
                                            <tr>
                                                <th style="width: 10%">${application.user.name}</th>
                                                <th style="width: 10%"><a data-model="dialog"
                                                                          href="user/companyInfo?id=${application.user.id}">View</a>
                                                </th>
                                                <th style="width: 10%">${application.user.address}</th>
                                                <th style="width: 10%">${application.surveyor.firstName} ${application.surveyor.lastName}</th>
                                                <th style="width: 10%"><a data-model="dialog"
                                                                          href="surveyor/info?id=${application.surveyor.id}">View</a>
                                                </th>
                                                <th style="width: 10%">
                                                    <div class="rating">
                                                        <div class="op-point-div" style="width: 100px;margin: auto">
                                                            <input type="radio" value="5" <c:if
                                                                    test="${5==application.surveyor.pastEvaluation}">checked</c:if>>
                                                            <label><i class="fa fa-star"></i></label>
                                                            <input type="radio" value="4" <c:if
                                                                    test="${4==application.surveyor.pastEvaluation}">checked</c:if>>
                                                            <label><i class="fa fa-star"></i></label>
                                                            <input type="radio" value="3" <c:if
                                                                    test="${3==application.surveyor.pastEvaluation}">checked</c:if>>
                                                            <label><i class="fa fa-star"></i></label>
                                                            <input type="radio" value="2" <c:if
                                                                    test="${2==application.surveyor.pastEvaluation}">checked</c:if>>
                                                            <label><i class="fa fa-star"></i></label>
                                                            <input type="radio" value="1" <c:if
                                                                    test="${1==application.surveyor.pastEvaluation}">checked</c:if>>
                                                            <label><i class="fa fa-star"></i></label>
                                                        </div>
                                                    </div>
                                                </th>
                                                <th style="width: 10%">${application.totalPrice}</th>
                                                <th style="width: 10%">
                                                    <c:if test="${application.applicationStatus==0}">
                                                        <button type="button"
                                                                onclick="initInspection(${param.quotationId},${application.id})"
                                                                class="btn green btn-circle">confirm
                                                        </button>
                                                    </c:if>
                                                    <c:if test="${application.applicationStatus==1}">
                                                        Chosen
                                                    </c:if>
                                                    <c:if test="${application.applicationStatus==2}">
                                                        Abandoned
                                                    </c:if>
                                                </th>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="form-actions right">
                                <a href="prepurchase/op/quotation/cancel?quotationId=${param.quotationId}"
                                   data-msg="确定取消吗？"
                                   data-model="ajaxToDo" data-callback="goToQuotationList"
                                   class="btn green">Cancel
                                    this quotation</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<a style="display:none" id="refreshPage" data-target="navTab"
   href="prepurchase/op/quotation/choose?quotationId=${param.quotationId}"></a>
<script>
    function initInspection(quotationId, applicationId) {
        $.ajax({
            type: "post",
            url: "prepurchase/op/quotation/chooseComplete",
            data: {quotationId: quotationId, applicationId: applicationId},
            success: function (data) {
                if (data.success) {
                    alert(" success");
                    $("#refreshPage").click();
                } else {
                    alert(" failure");
                }
            },
            error: function () {
                alert("error");
            }
        })
    }

    function goToQuotationList() {
        $("a[href='prepurchase/op/quotation']").click();
    }
</script>
