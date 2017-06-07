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
    .text-right {
        text-align: right;
    }

</style>
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title" >
                <center><div class="caption"><h3>Inspections</h3></div></center>
            </div>
            <div class="portlet-body">
                <div class="table-scrollable">
                    <table class="table table-striped table-bordered table-hover table-checkable order-column">
                        <thead>
                        <tr>
                            <th> Public date </th>
                            <th> Ship name </th>
                            <th> IMO </th>
                            <th> ship type </th>
                            <th> Inspection port </th>
                            <th> Inspection dates(LMT)</th>
                            <th> Consignor </th>
                            <th> Price </th>
                            <th> Surveyor </th>
                            <th> More details </th>
                            <th> Link to report </th>
                            <th>Status</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:if test="${! empty inspections}" var="a">
                            <c:forEach items="${inspections}" var="i">
                                <tr >
                                    <fmt:formatDate value="${i.purchaseQuotation.createDate}" pattern="dd/MM/yyyy" var="publicDate"/>
                                    <fmt:formatDate value="${i.purchaseQuotation.startDate}" pattern="dd/MM/yyyy" var="startDate"/>
                                    <fmt:formatDate value="${i.purchaseQuotation.endDate}" pattern="dd/MM/yyyy" var="endDate"/>
                                    <td> ${publicDate} </td>
                                    <td> ${i.shipDetail.shipName} </td>
                                    <td> ${i.shipDetail.imo} </td>
                                    <td> ${i.shipDetail.shipType} </td>
                                    <td> ${i.purchaseQuotation.location} </td>
                                    <td> ${startDate}-${endDate} </td>
                                    <td> ${i.op.name} </td>
                                    <td> ${i.purchaseQuotation.totalPrice} </td>
                                    <td> ${i.surveyor.firstName} ${i.surveyor.lastName}</td>
                                    <td>
                                        <a href="javascript:;" onclick="unfold(this)">View</a>&nbsp;<li class="fa fa-sort-desc"/>
                                     </td>
                                    <td> <a data-target="navTab" href="/prepurchase/surveyor/reportEdit?inspectionId=${i.id}" >Edit</a> <li class="fa fa-edit"></li></td>
                                    <td>
                                        <c:if test="${i.loi=='' || i.loi==null}">
                                            <li class="fa fa-upload">&nbsp;
                                        </c:if>
                                    </td>
                                </tr>
                                <tr style="display: none">
                                    <td colspan="12">
                                        <div class="col-md-12" style="background-color: rgba(223, 222, 144, 0.58)">
                                                <div class="col-md-3" >
                                                    <div class="col-md-12">
                                                        <label class="control-label label-top">Ship Name：</label>
                                                        <label style="width: auto;padding-left: 0px;" class="control-label label-top">${i.shipDetail.shipName}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">IMO：</label>
                                                        <label class="control-label">${i.shipDetail.imo}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">Type：</label>
                                                        <label class="control-label">${i.shipDetail.type}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">Class：</label>
                                                        <label class="control-label">${i.shipDetail.shipClass}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">Flag：</label>
                                                        <label class="control-label">${i.shipDetail.flag}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">Build Year：</label>
                                                        <label class="control-label">${i.shipDetail.buildYear}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">Builder：</label>
                                                        <label class="control-label">${i.shipDetail.builder}</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="col-md-12">
                                                        <label class="control-label label-top">LOA(m)：</label>
                                                        <label style="width: auto;padding-left: 0px;" class="control-label label-top">${i.shipDetail.loa}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">Beam(m)：</label>
                                                        <label class="control-label">${i.shipDetail.beam}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">Dwt(ton)：</label>
                                                        <label class="control-label">${i.shipDetail.dwt}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">draft(m)：</label>
                                                        <label class="control-label">${i.shipDetail.draft}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">GT：</label>
                                                        <label class="control-label">${i.shipDetail.ggt}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">ex.Name：</label>
                                                        <label class="control-label">${i.shipDetail.exName}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">Call Sign：</label>
                                                        <label class="control-label">${i.shipDetail.callSign}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">LDT(ton)：</label>
                                                        <label class="control-label">${i.shipDetail.ldt}</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div  class="col-md-6">
                                                        <label class="control-label">Agency details:</label>
                                                    </div>
                                                    <div  class="col-md-12" style="margin-left: 10px">
                                                        <label class="control-label">${i.purchaseQuotation.agencyDetail}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">LOI：</label>
                                                        <label class="control-label">
                                                            <%--<c:if test="${i.purchaseQuotation.loiUrl!=null && i.purchaseQuotation.loiUrl!=''}">--%>
                                                                <button class="btn btn-circle purple-sharp" type="button">
                                                                    <li class="fa fa-download"></li>
                                                                    Download
                                                                </button>
                                                            <%--</c:if>--%>

                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">

                                                    <div  class="col-md-9">
                                                        <label class="control-label">Our price & surveyour:</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">Price：</label>
                                                        <label class="control-label">${i.purchaseQuotation.totalPrice}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">Surveyor：</label>
                                                        <label class="control-label">${i.surveyor.firstName} ${i.surveyor.lastName}</label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="control-label">Surveyor CV：</label>
                                                        <label class="control-label"><a data-model="dialog" href="surveyor/info?id=${i.surveyor.id}">View</a></label>
                                                    </div>
                                                    <form method="post" action="prepurchase/surveyor/saveLoiPassport" >
                                                        <input type="hidden" value="${i.id}" name="id"/>
                                                        <div class="col-md-12">
                                                            <label class="control-label">Passport：</label>
                                                            <label class="control-label passport"><a target="_blank" href="${i.passportUrl}">${i.passport}</a></label>
                                                            <label class="control-label">
                                                                <c:if test="${i.passport!=null && i.passport!=''}">
                                                                    <button onclick="deleteLabelPassport(this)" type="button" class="btn btn-sm red"><li class="fa fa-remove"></li>Delete</button>
                                                                </c:if>
                                                                <c:if test="${i.passport==null || i.passport==''}">
                                                                    <button onmouseover="upload_attachment_passport(this)" type="button" class="btn btn-sm blue">
                                                                        <li class="fa fa-upload"></li>Browse
                                                                    </button>
                                                                </c:if>

                                                            </label>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <label class="control-label">LOI：</label>
                                                            <label class="control-label loi"><a target="_blank" href="${i.loiUrl}">${i.loi}</a></label>
                                                            <label class="control-label">
                                                                <c:if test="${i.loi!=null && i.loi!=''}">
                                                                    <button onclick="deleteLabelLoi(this)" type="button" class="btn btn-sm red"><li class="fa fa-remove"></li>Delete</button>
                                                                </c:if>
                                                                <c:if test="${i.loi==null || i.loi==''}">
                                                                    <button onmouseover="upload_attachment_loi(this)" type="button" class="btn btn-sm blue">
                                                                        <li class="fa fa-upload"></li>Browse
                                                                    </button>
                                                                </c:if>
                                                            </label>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div style="float: right">
                                                                <label class="control-label"><button type="button" class="btn green" onclick="submitLoiAndPassport(this)">Submit</button></label>

                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                        </div>
                                    </td>
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
    //展开
    function unfold(obj,loi) {

        $(obj).closest("tr").next().show();
        $(obj).closest("tr").css("background-color","yellow");
        $(obj).parent().html('<a href="javascript:;" onclick="merge(this)">View</a>&nbsp;<li class="fa fa-sort-up"></li>');
    }

    //合并
    function merge(obj) {
        $(obj).closest("tr").css("background-color","white");
        $(obj).parent().parent().next().hide();
        $(obj).parent().html('<a href="javascript:;" onclick="unfold(this)">View</a>&nbsp;<li class="fa fa-sort-desc"></li>');
    }



    function upload_attachment_loi(obj){
        initUploaders_surveyor_loi(obj, "shipinfo", "${staticPath}/",obj);
    }

    function upload_attachment_passport(obj){
        initUploaders_surveyor_passport(obj, "shipinfo", "${staticPath}/",obj);
    }

    function deleteLabelLoi(obj) {
        $(obj).parent().prev().html("");
        $(obj).parent().html('<button onmouseover="upload_attachment_loi(this)" type="button" class="btn btn-sm blue"><li class="fa fa-upload"></li>Browse </button>');
    }

    function deleteLabelPassport(obj) {
        $(obj).parent().prev().html("");
        $(obj).parent().html('<button onmouseover="upload_attachment_passport(this)" type="button" class="btn btn-sm blue"><li class="fa fa-upload"></li>Browse </button>');
    }



    function submitLoiAndPassport(obj) {
        if(check(obj)){
            $(obj).closest('form').ajaxSubmit({
                success:function (data) {
                    alert("提交成功")
                },
                error:function () {

                }
            });
        }

    }
    function check(obj) {
        var loi=$(obj).parent().parent().parent().prev().find(".loi").find("a").html();
        var passport=$(obj).parent().parent().parent().prev().prev().find(".passport").find("a").html();
        if(loi=='' || passport==''){
            alert("请将信息上传完整");
            return false;
        }
        return true;
    }

</script>

