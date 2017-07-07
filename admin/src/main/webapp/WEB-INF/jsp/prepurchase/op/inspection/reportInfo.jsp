<%@ page import="com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Defect" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
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
    .line1{border-bottom: solid 2px #337ab7;
        height: 1px;
        margin-top: 10px;margin-bottom: 20px}
    .add_img{width: 25px;height: 25px}

    table th{background-color: #C0C9CC}
    #ul_li li{width: 0.1%}
    .tab-pane-div{margin-top: 30px;width: 90%}
    .divPhoto{
        float: left;
        background-color: #9C9C9C;
        margin-right: 100px;
        margin-bottom: 20px;
    }
    .divImg{
        float:left;position:relative;margin: 10px
    }
    .modal-dialog {
        position: relative;
        width: 75%;
        margin: auto;
    }
    .modal-content {
        padding: 10px;
    }

    .span-left{
        display: none;
        width: 30px;
        background: rgb(0, 0, 0);
        color:white;
        position:absolute;
        top:0px;
        right:10px;
        z-index: 999;
    }
    .span-right{display:none;background: rgb(0, 0, 0);color:white;position:absolute;top:0px;right:0px;z-index: 999;}

    .li-left{margin-left: 2px}
    .li-right{margin-right: 2px}
    textarea{ resize:none;}
    #div_grade{margin-top: 10px;}
</style>
    <div class="row">
        <div class="col-md-12">
            <div class="col-md-12" style="background-color: #32c5d2">
                <div class="portlet-title" >
                    <div class="caption">
                        <div style="float: left"><h4 style="color: white">Report of Star Deltas</h4></div>
                        <%--<div style="float: left;margin-left: 100px"><button style="color: black" type="button">
                            <li class="fa fa-bars"></li>Report List</button>
                        </div>--%>
                        <div style="float: right" >
                            <ul  class="nav nav-tabs" style="margin-top: 10px;margin-bottom: 0px">
                                <li class="active">
                                    <a href="#tab1" data-toggle="tab"> Ship details </a>
                                </li>
                                <li>
                                    <a href="#tab2" data-toggle="tab"> Grading </a>
                                </li>
                                <li>
                                    <a href="#tab3" data-toggle="tab"> Defects </a>
                                </li>
                                <li>
                                    <a href="#tab4" data-toggle="tab"> Galleries </a>
                                </li>
                                <li>
                                    <a href="#tab5" data-toggle="tab"> Condition inspection</a>
                                </li>
                                <li>
                                    <a href="#tab6" data-toggle="tab"> Tech. & equiment info. </a>
                                </li>
                                <li>
                                    <a href="#tab7" data-toggle="tab"> Documents </a>
                                </li>
                            </ul>
                        </div>
                    </div>


                </div>
            </div>
            <div class="portlet-body form">
                <div class="form-wizard">
                    <div class=" form-body">
                        <div class="line1 col-md-12"></div>
                        <div class="tab-content " id="div_from">
                            <div class="tab-pane tab-left active" id="tab1">
                                <div class="tab-pane-div">
                                    <form action="prepurchase/surveyor/reportEditShip" method="post">
                                        <input type="hidden" value="${report.id}" name="reportId" id="reportId"/>
                                        <div class="col-md-6">
                                            <div style="border: solid black 2px" class="col-md-12">
                                                <div class="col-md-8" style="margin-top: 20px;margin-bottom: 20px">
                                                    <button  style="width: 100%">
                                                        <div >
                                                            <img src="${report.shipDetail.shipImg}" style="width: 100%;height: 250px"/>
                                                        </div>
                                                    </button>
                                                </div>
                                                <div class="col-md-4" style="margin-top: 20px;margin-bottom: 20px">
                                                    <p style="color: #00a8c6">Ship Name</p>
                                                    <p>${report.shipDetail.shipName}</p>
                                                    <p style="color: #00a8c6">IMO</p>
                                                    <p>${report.shipDetail.imo}</p>
                                                    <p style="color: #00a8c6">Type</p>
                                                    <p>${report.shipDetail.shipType}</p>
                                                </div>
                                            </div>
                                            <div class="col-md-12" style="margin-top:30px ">
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">LOA(m):</label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="${report.shipDetail.loa}" name="loa"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Beam(m): </label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="${report.shipDetail.beam}" name="beam"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Dwt(ton): </label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="${report.shipDetail.dwt}" name="dwt"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Draft(m): </label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="${report.shipDetail.draft}" name="draft"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">GT: </label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="${report.shipDetail.ggt}" name="ggt"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">LDT: </label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="${report.shipDetail.ldt}" name="ldt"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">SS(m/y): </label>
                                                    <div class="col-md-8 "><input disabled class="form-control" type="text" value="${report.shipDetail.ss}" name="ss"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Bunkers: </label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="${report.shipDetail.bunkers}" name="bunkers"/></div>
                                                </div>
                                                <div class="form-group col-md-6">
                                                    <label class="col-sm-4 control-label">Class:</label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="${report.shipDetail.shipClass}" name="shipClass"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-sm-4 control-label">Flag:</label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="${report.shipDetail.flag}" name="flag"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Builder:</label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="${report.shipDetail.builder}" name="builder"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">ex.Name:</label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="${report.shipDetail.exName}" name="exName"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Location:</label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="${report.shipDetail.location}" name="location"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">ShipType:</label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="${report.shipDetail.shipType}" name="shipType"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Build Year:</label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="${report.shipDetail.buildYear}" name="buildYear"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Call Sign:</label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="${report.shipDetail.callSign}" name="callSign"/></div>
                                                </div>
                                                <div class="col-md-12 form-group">
                                                    <label class="col-md-4 control-label">Inspection date:</label>
                                                    <div class="col-md-8"><input disabled class="form-control" type="text" value="" name=""/></div>
                                                </div>
                                                <div class="col-md-12 form-group">
                                                    <label class="col-md-9 control-label">Known the buyers by site surveyor,but WOG:</label>
                                                    <div class="col-md-3"><input disabled  class="form-control" type="text" value="${report.shipDetail.wog}" name="wog"/></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-12">
                                                <div class="col-md-12 portlet box green">
                                                    <div class="portlet-title" >
                                                        <div class="caption">Main engine</div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">Maker:</label>
                                                    <div class="col-md-9"><input disabled class="form-control" type="text" value="${report.shipDetail.meMaker}" name="meMaker"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">Type:</label>
                                                    <div class="col-md-9"><input disabled class="form-control" type="text" value="${report.shipDetail.meType}" name="meType"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">MCR KW:</label>
                                                    <div class="col-md-9"><input disabled class="form-control" type="text" value="${report.shipDetail.meMcrKw}" name="meMcrKw"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">MCR RPM:</label>
                                                    <div class="col-md-9"><input disabled class="form-control" type="text" value="${report.shipDetail.meMcrRpm}" name="meMcrRpm"/></div>
                                                </div>
                                                <div class="col-md-12 form-group">
                                                    <label class="col-md-4">Running hours: </label>
                                                    <div class="col-md-9"><input disabled class="form-control" type="text" value="${report.shipDetail.meRunningHours}" name="meRunningHours"/></div>
                                                </div>
                                                <div class="col-md-12 form-group">
                                                    <label class="col-md-3">Critical RPM:</label>
                                                    <div class="col-md-9"><input disabled class="input-small" type="text" value="${report.shipDetail.meCriticalRpm}" name="meCriticalRpm"/></div>
                                                </div>
                                                <div class="col-md-12 form-group">
                                                    <div class="col-md-12"><input class="form-control" placeholder="Others"  type="text" value="${report.shipDetail.meOthers}" name="meOthers"/></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="col-md-12 portlet box green">
                                                    <div class="portlet-title" >
                                                        <div class="caption">Auxiliary Power</div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">Maker:</label>
                                                    <div class="col-md-9"><input disabled class="form-control" type="text" value="${report.shipDetail.apMaker}" name="apMaker"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">Type:</label>
                                                    <div class="col-md-9"><input disabled class="form-control" type="text" value="${report.shipDetail.apType}" name="apType"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">Load:</label>
                                                    <div class="col-md-9"><input disabled class="form-control" type="text" value="${report.shipDetail.apLoad}" name="apLoad"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">A1 r/h:</label>
                                                    <div class="col-md-9"><input disabled class="form-control" type="text" value="${report.shipDetail.apA1}" name="apA1"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">A2 r/h: </label>
                                                    <div class="col-md-9"><input disabled class="form-control" type="text" value="${report.shipDetail.apA2}" name="apA2"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">A3 r/h:</label>
                                                    <div class="col-md-9"><input disabled class="form-control" type="text" value="${report.shipDetail.apA3}" name="apA3"/></div>
                                                </div>
                                                <div class="col-md-12 form-group">
                                                    <div class="col-md-12"><input disabled class="form-control" placeholder="Others"  type="text" value="${report.shipDetail.apOthers}" name="apOthers"/></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="col-md-12 portlet box green">
                                                    <div class="portlet-title" >
                                                        <div class="caption">Boiler</div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">Maker:</label>
                                                    <div class="col-md-9"><input disabled class="form-control" type="text" value="${report.shipDetail.boMaker}" name="boMaker"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">Type:</label>
                                                    <div class="col-md-9"><input disabled class="form-control" type="text" value="${report.shipDetail.boType}" name="boType"/></div>
                                                </div>
                                                <div class="col-md-12 form-group">
                                                    <label class="col-md-3">Evaporation:</label>
                                                    <div class="col-md-9"><input disabled class="form-control" type="text" value="${report.shipDetail.boEvaporation}" name="boEvaporation"/></div>
                                                </div>
                                                <div class="col-md-12 form-group">
                                                    <label class="col-md-3">Heating area:</label>
                                                    <div class="col-md-9"><input disabled class="form-control" type="text" value="${report.shipDetail.boHeatingArea}" name="boHeatingArea"/></div>
                                                </div>
                                                <div class="col-md-12 form-group">
                                                    <div class="col-md-12"><input disabled class="form-control" placeholder="Others"  type="text" value="${report.shipDetail.boOthers}" name="boOthers"/></div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab2">
                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12" style="float: right;margin-top: 5px">
                                    <a class="dashboard-stat dashboard-stat-v2 green" href="#" style="margin: 0px">
                                        <div class="visual">
                                            <i class="fa fa-shopping-cart"></i>
                                        </div>
                                        <div class="details">
                                            <div class="number">
                                                <span data-counter="counterup" id="totalGrade">${totalGrade}</span> </div>
                                            <div class="desc"> Grade </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-12" id="div_grade">
                                    <input type="hidden" name="id" value="${report.id}"/>
                                    <div class="col-md-12">
                                        <div class="portlet box green">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    Grading </div>
                                                <div class="tools">
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <table class="table table-striped table-bordered table-hover" id="table_garade" >
                                                    <thead>
                                                    <tr>
                                                        <th style="width: 15%"> Inspection item </th>
                                                        <th style="width: 2%"> Grade </th>
                                                        <th >Remark</th>
                                                        <th style="width: 15%">Site photo</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr style="display: none"></tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="suspend">
                                    <dl>
                                        <dt class="IE6PNG"></dt>
                                        <dd class="suspendQQ"><a href="javascript:;" onclick="viewHull(this)"></a></dd>
                                        <dd class="suspendTel"><a href="javascript:;" onclick="viewMachine(this)"></a></dd>
                                    </dl>
                                </div>
                            </div>
                            <div class="tab-pane tab-left" id="tab3">
                                <div class="tab-pane-div" >
                                        <input type="hidden" name="id" value="${report.id}"/>
                                        <div class="col-md-12">
                                            <div class="portlet box green">
                                                <div class="portlet-title">
                                                    <div class="caption">
                                                        Defects </div>
                                                    <div class="tools">
                                                    </div>
                                                </div>
                                                <div class="portlet-body">
                                                    <table class="table table-striped table-bordered table-hover" >
                                                        <thead>
                                                        <tr>
                                                            <th style="width: 5%"> S/N </th>
                                                            <th> Description </th>
                                                            <th style="width: 15%"> Estimated cost   </br>(USD) </th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:if test="${! empty report.defects}" var="rd">
                                                            <c:forEach items="${report.defects}" var="d" varStatus="i">
                                                                <tr >
                                                                    <td>${i.count}</td>
                                                                    <td>${d.description}</td>
                                                                    <td>${d.estimatCost}</td>
                                                                </tr>
                                                            </c:forEach>
                                                        </c:if>
                                                        <c:if test="${!rd}">
                                                            <tr><td colspan="3">无任何信息</td></tr>
                                                        </c:if>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div>
                            <div class="tab-pane tab-left" id="tab4">
                                <div class="tab-pane-div">
                                    <div class="col-md-12">
                                        <div class="col-md-3" style="margin-bottom: 20px;">
                                            <button  type="button" >Download</button>&nbsp;&nbsp;
                                        </div>
                                    </div>
                                    <c:forEach items="${report.galleries}" var="g">
                                        <fmt:formatDate value="${g.createDate}" pattern="dd/MM/yyyy" var="createDate"/>
                                        <div class="divPhoto">
                                            <div class="divImg" onmouseover="mouseOver(this)">
                                                <div >
                                                    <span  class="span-right">
                                                        <input class="icheck" data-imgId="${m.id}" style=" margin-left: 3px; margin-top: 5px;" type="checkbox"/>
                                                    </span>
                                                    <a data-model="dialog" href="prepurchase/op/viewImg?galleriesId=${g.id}"  >
                                                        <img src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipyard/GWTcR228ek.jpg"
                                                             style="width: 200px;height: 200px;"/>
                                                    </a>
                                                </div>
                                                <div style="width: 200px">
                                                    <p style="float: left;margin-right: 10px;">${g.name}</p>
                                                    <p style="float: left;margin-right: 10px" id="album${g.id}">(${g.number})</p>
                                                    <p style="float: left;margin: 0px">Create at ${createDate}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="tab-pane tab-left" id="tab5">
                                <div class="tab-pane-div" >
                                        <center><h2>Surveyor’s summary</h2></center>
                                        <c:if test="${report.conditionInspection.hull!='' && report.conditionInspection.hull!=null}">
                                            <div class="col-md-12">
                                                <div class="portlet box blue">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class="fa fa-gift"></i>Hull </div>
                                                        <div class="tools">
                                                            <a href="javascript:;" class="collapse"> </a>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        ${report.conditionInspection.hull}
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${report.conditionInspection.deck!=''&& report.conditionInspection.deck!=null}">
                                            <div class="col-md-12">
                                                <div class="portlet box blue">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class="fa fa-gift"></i>Forward mooring deck/Aft mooring deck/Main deck </div>
                                                        <div class="tools">
                                                            <a href="javascript:;" class="collapse"> </a>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        ${report.conditionInspection.deck}
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${report.conditionInspection.deckMarchinery!=''&&report.conditionInspection.deckMarchinery!=null}">
                                            <div class="col-md-12">
                                                <div class="portlet box blue">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class="fa fa-gift"></i>Deck marchinery (mooring,crane,outfittings,etc.) </div>
                                                        <div class="tools">
                                                            <a href="javascript:;" class="collapse"> </a>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        ${report.conditionInspection.deckMarchinery}
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${report.conditionInspection.ballastTank!=''&&report.conditionInspection.ballastTank!=null}">
                                            <div class="col-md-12">
                                                <div class="portlet box blue">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class="fa fa-gift"></i>Ballast tanks & Void spaces </div>
                                                        <div class="tools">
                                                            <a href="javascript:;" class="collapse"> </a>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        ${report.conditionInspection.ballastTank}
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${report.conditionInspection.accommodation!=''&& report.conditionInspection.accommodation!=null}">
                                            <div class="col-md-12">
                                                <div class="portlet box blue">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class="fa fa-gift"></i>Accommodation & deck </div>
                                                        <div class="tools">
                                                            <a href="javascript:;" class="collapse"> </a>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        ${report.conditionInspection.accommodation}
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${report.conditionInspection.navigationBridge!=''&& report.conditionInspection.navigationBridge!=null}">
                                            <div class="col-md-12">
                                                <div class="portlet box blue">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class="fa fa-gift"></i>Navigation bridge & Commuication equipments </div>
                                                        <div class="tools">
                                                            <a href="javascript:;" class="collapse"> </a>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        ${report.conditionInspection.navigationBridge}
                                                    </div>
                                                </div>
                                            </div>
                                         </c:if>
                                        <c:if test="${report.conditionInspection.machinerySpace!=''&&report.conditionInspection.machinerySpace!=null}">
                                            <div class="col-md-12">
                                                <div class="portlet box blue">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class="fa fa-gift"></i>Machinery space & Engine room machinery</br>
                                                            (Engine control room,Main engine,Auxiliary engines,Boiler/Economiser,Steering gear,others) </div>
                                                        <div class="tools">
                                                            <a href="javascript:;" class="collapse"> </a>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        ${report.conditionInspection.machinerySpace}
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${report.conditionInspection.lifeSaving!=''&&report.conditionInspection.lifeSaving!=null}">
                                            <div class="col-md-12">
                                                <div class="portlet box blue">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class="fa fa-gift"></i>Life saving ,Fire and safety equipment </div>
                                                        <div class="tools">
                                                            <a href="javascript:;" class="collapse"> </a>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        ${report.conditionInspection.lifeSaving}
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${report.conditionInspection.galley!=''&&report.conditionInspection.galley!=null}">
                                            <div class="col-md-12">
                                                <div class="portlet box blue">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class="fa fa-gift"></i>Galley,provision and refrigerated rooms </div>
                                                        <div class="tools">
                                                            <a href="javascript:;" class="collapse"> </a>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        ${report.conditionInspection.galley}
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${report.conditionInspection.ballastWater!=''&&report.conditionInspection.ballastWater!=null}">
                                            <div class="col-md-12">
                                                <div class="portlet box blue">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class="fa fa-gift"></i>Ballast water treatment system </div>
                                                        <div class="tools">
                                                            <a href="javascript:;" class="collapse"> </a>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                        ${report.conditionInspection.ballastWater}
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${report.shipDetail.shipType=='Bulker'}">
                                            <c:if test="${report.conditionInspection.hatchCover!=''&&report.conditionInspection.hatchCover!=null}">
                                                <div class="col-md-12">
                                                <div class="portlet box blue">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class="fa fa-gift"></i>Hatch cover and hatch coamings (Only bulker)</div>
                                                        <div class="tools">
                                                            <a href="javascript:;" class="collapse"> </a>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                            ${report.conditionInspection.hatchCover}
                                                    </div>
                                                </div>
                                            </div>
                                            </c:if>
                                            <c:if test="${report.conditionInspection.cargoHold!=''&&report.conditionInspection.cargoHold!=null}">
                                                <div class="col-md-12">
                                                <div class="portlet box blue">
                                                    <div class="portlet-title">
                                                        <div class="caption">
                                                            <i class="fa fa-gift"></i>Cargo hold (Only bulker)</div>
                                                        <div class="tools">
                                                            <a href="javascript:;" class="collapse"> </a>
                                                        </div>
                                                    </div>
                                                    <div class="portlet-body">
                                                            ${report.conditionInspection.cargoHold}
                                                    </div>
                                                </div>
                                            </div>
                                            </c:if>

                                        </c:if>

                                            <c:if test="${report.shipDetail.shipType=='Tanker'}">
                                                <c:if test="${report.conditionInspection.cargoTank!=''&& report.conditionInspection.cargoTank!=null}">
                                                    <div class="col-md-12">
                                                    <div class="portlet box blue">
                                                        <div class="portlet-title">
                                                            <div class="caption">
                                                                <i class="fa fa-gift"></i>Cargo tanks (Only tanker)</div>
                                                            <div class="tools">
                                                                <a href="javascript:;" class="collapse"> </a>
                                                            </div>
                                                        </div>
                                                        <div class="portlet-body">
                                                                ${report.conditionInspection.cargoTank}
                                                        </div>
                                                    </div>
                                                </div>
                                                </c:if>
                                                <c:if test="${report.conditionInspection.cargoControlRoom!=''&& report.conditionInspection.cargoControlRoom!=null}">
                                                    <div class="col-md-12">
                                                    <div class="portlet box blue">
                                                        <div class="portlet-title">
                                                            <div class="caption">
                                                                <i class="fa fa-gift"></i>Cargo control room (Only tanker)</div>
                                                            <div class="tools">
                                                                <a href="javascript:;" class="collapse"> </a>
                                                            </div>
                                                        </div>
                                                        <div class="portlet-body">
                                                                ${report.conditionInspection.cargoControlRoom}
                                                        </div>
                                                    </div>
                                                </div>
                                                </c:if>
                                                <c:if test="${report.conditionInspection.pumpRoom!=''&& report.conditionInspection.pumpRoom!=null}">
                                                    <div class="col-md-12">
                                                    <div class="portlet box blue">
                                                        <div class="portlet-title">
                                                            <div class="caption">
                                                                <i class="fa fa-gift"></i>Pump room (Only tanker)</div>
                                                            <div class="tools">
                                                                <a href="javascript:;" class="collapse"> </a>
                                                            </div>
                                                        </div>
                                                        <div class="portlet-body">
                                                                ${report.conditionInspection.pumpRoom}
                                                        </div>
                                                    </div>
                                                </div>
                                                </c:if>
                                                <c:if test="${report.conditionInspection.pipelines!=''&&  report.conditionInspection.pipelines!=null}">
                                                    <div class="col-md-12">
                                                    <div class="portlet box blue">
                                                        <div class="portlet-title">
                                                            <div class="caption">
                                                                <i class="fa fa-gift"></i>Pipelines (Only tanker)</div>
                                                            <div class="tools">
                                                                <a href="javascript:;" class="collapse"> </a>
                                                            </div>
                                                        </div>
                                                        <div class="portlet-body">
                                                                ${report.conditionInspection.pipelines}
                                                        </div>
                                                    </div>
                                                </div>
                                                </c:if>
                                                <c:if test="${report.conditionInspection.interGasSystem!=''&& report.conditionInspection.interGasSystem!=null}">
                                                    <div class="col-md-12">
                                                    <div class="portlet box blue">
                                                        <div class="portlet-title">
                                                            <div class="caption">
                                                                <i class="fa fa-gift"></i>Inter gas system (Only tanker)</div>
                                                            <div class="tools">
                                                                <a href="javascript:;" class="collapse"> </a>
                                                            </div>
                                                        </div>
                                                        <div class="portlet-body">
                                                                ${report.conditionInspection.interGasSystem}
                                                        </div>
                                                    </div>
                                                </div>
                                                                    </c:if>

                                            </c:if>
                                </div>
                            </div>
                            <div class="tab-pane tab-left" id="tab6" data-flag="flag">
                                <div class="tab-pane-div" >
                                    <c:forEach items="${report.technicalAppendices}" var="t">
                                        <c:if test="${t.catagory!='Vessel tank capacity' && ! empty t.technicalAppendixInfo}">
                                            <div class="col-md-12">
                                                <div class="portlet box green">
                                                        <div class="portlet-title">
                                                            <div class="caption">
                                                                    ${t.catagory} </div>
                                                            <div class="tools">
                                                            </div>
                                                        </div>
                                                        <div class="portlet-body">
                                                            <table class="table table-striped table-bordered table-hover" >
                                                                <thead>
                                                                <tr>
                                                                    <th> ${t.title1} </th>
                                                                    <th> ${t.title2} </th>
                                                                    <c:if test="${t.title3!=''|| t.title3!=null}">
                                                                        <th> ${t.title3} </th>
                                                                    </c:if>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach items="${t.technicalAppendixInfo}" var="ta">
                                                                    <tr>
                                                                        <td>${ta.one}</td>
                                                                        <td>${ta.two}</td>
                                                                        <c:if test="${t.title3!=''|| t.title3!=null}">
                                                                            <td>${ta.three}</td>
                                                                        </c:if>
                                                                    </tr>
                                                                </c:forEach>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${t.catagory=='Cargo tank capacities(Only tanker)'}">
                                            <c:if test="${flag}">
                                                <div class="col-md-12">
                                                    <div class="portlet box green">
                                                        <div class="portlet-title">
                                                            <div class="caption">
                                                                Vessel tank capacity </div>
                                                            <div class="tools">
                                                            </div>
                                                        </div>
                                                        <c:forEach items="${technicalAppendices}" var="te">
                                                            <c:if test="${! empty te.technicalAppendixInfo}">
                                                                <div class="portlet-body">
                                                                    <form action="prepurchase/surveyor/reportEditTechnical" method="post" >
                                                                        <table class="table table-striped table-bordered table-hover" >
                                                                            <thead>
                                                                            <tr>
                                                                                <th> ${te.title1} </th>
                                                                                <th> ${te.title2} </th>
                                                                                <th> ${te.title3} </th>
                                                                            </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                            <c:forEach items="${te.technicalAppendixInfo}" var="ta">
                                                                                <tr>
                                                                                    <td>${ta.one}</td>
                                                                                    <td>${ta.two}</td>
                                                                                    <td>${ta.three}</td>
                                                                                </tr>
                                                                            </c:forEach>
                                                                            </tbody>
                                                                        </table>
                                                                    </form>
                                                                </div>
                                                            </c:if>
                                                        </c:forEach>

                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:if>
                                    </c:forEach>

                                </div>
                            </div>
                            <div class="tab-pane tab-left" id="tab7">
                                <div class="tab-pane-div"  >
                                    <div class="portlet-body">
                                        <table class="table table-striped table-bordered table-hover" id="default_table">
                                            <thead>
                                            <tr>
                                                <th style="width:5%;"> S/N </th>
                                                <th> Title </th>
                                                <th style="width:5%;"> Download </th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${report.documents}" var="d" varStatus="i">
                                                <c:if test="${d.attachmentName!=''&& d.attachmentName!=null}">
                                                    <tr>
                                                        <td>${i.count}</td>
                                                        <td><a href="${d.attachmentUrl}">${d.title}</a></td>
                                                        <td><a href="${d.attachmentUrl}" download="下载"><li class="fa fa-download"></li></a></td>
                                                    </tr>
                                                </c:if>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane tab-left" id="tab8">

                            </div>
                        </div>
                    </div>
                </div>
                </div>
        </div>
    </div>


<%--显示船体评分信息--%>
<div id="hull" class="modal fade" tabindex="-1" data-backdrop="make" data-keyboard="false">
    <div style="width: 50%" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #4bccd8">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">船体状态评估与等级划分说明</h4>
            </div>
            <div  class="modal-body col-md-12">
                <div class="col-md-12">
                    <div class="portlet-body">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th style="width: 15%"> Grade </th>
                                <th style="width: 15%"> Standard </th>
                                <th >技术状态</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${hullGrades}" var="h">
                                <tr>
                                    <td>${h.grade}</td>
                                    <td>${h.standard}</td>
                                    <td>${h.technicalCondition}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button id="closeHull" type="button" data-dismiss="modal" class="btn dark btn-outline">关闭</button>
            </div>
        </div>
    </div>
</div>
<a href="#hull" id="viewHull"   data-toggle="modal"  class="btn btn-sm margin-bottom-5 green" style="display: none"></a>

<%--显示电气设备评分信息--%>
<div id="machine" class="modal fade" tabindex="-1" data-backdrop="make" data-keyboard="false">
    <div style="width: 50%" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #4bccd8">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">机械设备状态评估与等级划分说明</h4>
            </div>
            <div  class="modal-body col-md-12">
                <div class="col-md-12">
                    <div class="portlet-body">
                        <table class="table table-striped table-bordered table-hover" >
                            <thead>
                            <tr>
                                <th style="width: 15%"> Grade </th>
                                <th style="width: 15%"> Standard </th>
                                <th >技术状态</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${machineGrades}" var="m">
                                <tr>
                                    <td>${m.grade}</td>
                                    <td>${m.standard}</td>
                                    <td style="font-size: xx-small">${m.technicalCondition}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button id="closeMachine" type="button" data-dismiss="modal" class="btn dark btn-outline">关闭</button>
            </div>
        </div>
    </div>
</div>
<a href="#machine" id="viewMachine"   data-toggle="modal"  class="btn btn-sm margin-bottom-5 green" style="display: none"></a>
<script>
    var width = $(window).width();
    $(".tab-left").css("margin-left",width*0.1);



   //鼠标移入事件
    function mouseOver(obj){
        $(obj).find("span").show();
        $(obj).mouseout(function () {
            $(obj).find("span").hide();
        });
    }


</script>
<script type="text/javascript">

    $(document).ready(function(){

        $(".suspend").mouseover(function() {
            $(this).stop();
            $(this).animate({width: 160}, 400);
        })

        $(".suspend").mouseout(function() {
            $(this).stop();
            $(this).animate({width: 40}, 400);
        });

    });

    //触发船体状态评估
    function viewHull(obj) {
        $("#viewHull").click();
    }

    //触发机械设备状态评估
    function viewMachine(obj) {
        $("#viewMachine").click();
    }
    $(document).ready(function(){
        gradeList();
    });

    /*异步加载Grade的信息*/
    function gradeList() {
        var reportId=$("#reportId").val();
        $.ajax({
            url:"prepurchase/surveyor/getGradeList",
            type:"GET",
            dataType:"json",
            data:{
                reportId:reportId
            },
            success:function (data) {
                if(data.mes){
                    var grades=data.grades;
                    var html='';
                    for(var i=0;i<grades.length;i++){
                        var g=grades[i].grade;
                        if(g==null){
                            g='';
                        }

                        if(grades[i].rank==1){
                            html+='<tr class="item'+i+'" style="background-color: #9C9C9C;">'+
                                    '<td style="text-align: center;font-weight:bolder ;font-size: larger">'+grades[i].item+'</td>'+
                                    '<td class="grade1">'+g+'</td>'+
                                    '<td ></td>'+
                                    '<td></td>'+
                                    '</tr>';
                        }else if(grades[i].rank==2){
                            html+='<tr class="item'+i+'" style="background-color:#01a0e4">'+
                                    '<td  style="font-size: larger">'+grades[i].item+'</td>'+
                                    '<td class="grade2">'+g+'</td>'+
                                    '<td ></td>'+
                                    '<td></td>'+
                                    '</tr>'
                        }else if(grades[i].rank==3){
                            html+= '<tr>'+
                                    '<td>'+grades[i].item+'</td>'+
                                    '<td>'+g+'</td>'+
                                    '<td>'+grades[i].remark+'</td></tr>';
                        }
                    }
                    $("#table_garade").find("tbody tr:last").after(html);

                }
            },
            error:function () {

            }
        });
    }
</script>