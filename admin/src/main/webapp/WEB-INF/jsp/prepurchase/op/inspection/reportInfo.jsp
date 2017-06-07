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
                            <ul class="nav nav-tabs" style="margin-top: 10px;margin-bottom: 0px">
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
                            <div class="tab-pane active" id="tab1">
                                <div class="tab-pane-div">
                                    <form action="prepurchase/surveyor/reportEditShip" method="post">
                                        <input type="hidden" value="${report.id}" name="reportId"/>
                                        <div class="col-md-6">
                                            <div style="border: solid black 2px" class="col-md-12">
                                                <div class="col-md-8" style="margin-top: 20px;margin-bottom: 20px">
                                                    <img src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipyard/GWTcR228ek.jpg" style="width: 100%;height: 300px"/>
                                                </div>
                                                <div class="col-md-4" style="margin-top: 20px;margin-bottom: 20px">
                                                    <p style="color: #00a8c6">Ship Name</p><input type="hidden" value="${report.shipDetail.id}" name="id"/>
                                                    <p>${report.shipDetail.shipName}</p><input type="hidden" value="${report.shipDetail.shipName}" name="shipName"/>
                                                    <p style="color: #00a8c6">IMO</p>
                                                    <p>${report.shipDetail.imo}</p><input type="hidden" value="${report.shipDetail.imo}" name="imo"/>
                                                    <p style="color: #00a8c6">Type</p>
                                                    <p>${report.shipDetail.type}</p><input type="hidden" value="${report.shipDetail.type}" name="type"/>
                                                </div>
                                            </div>
                                            <div class="col-md-12" style="margin-top:30px ">
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">LOA(m):</label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="${report.shipDetail.loa}" name="loa"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Beam(m): </label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="${report.shipDetail.beam}" name="beam"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Dwt(ton): </label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="${report.shipDetail.dwt}" name="dwt"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Draft(m): </label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="${report.shipDetail.draft}" name="draft"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">GT: </label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="${report.shipDetail.ggt}" name="ggt"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">LDT: </label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="${report.shipDetail.ldt}" name="ldt"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">SS(m/y): </label>
                                                    <div class="col-md-8 "><input readonly class="form-control" type="text" value="${report.shipDetail.ss}" name="ss"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Bunkers: </label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="${report.shipDetail.bunkers}" name="bunkers"/></div>
                                                </div>
                                                <div class="form-group col-md-6">
                                                    <label class="col-sm-4 control-label">Class:</label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="${report.shipDetail.shipClass}" name="shipClass"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-sm-4 control-label">Flag:</label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="${report.shipDetail.flag}" name="flag"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Builder:</label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="${report.shipDetail.builder}" name="builder"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">ex.Name:</label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="${report.shipDetail.exName}" name="exName"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Location:</label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="${report.shipDetail.location}" name="location"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">ShipType:</label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="${report.shipDetail.shipType}" name="shipType"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Build Year:</label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="${report.shipDetail.buildYear}" name="buildYear"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Call Sign:</label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="${report.shipDetail.callSign}" name="callSign"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4 control-label">Inspection date:</label>
                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="" name=""/></div>
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
                                                    <div class="col-md-5"><input class="input-small" type="text" value="${report.shipDetail.meMaker}" name="meMaker"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">Type:</label>
                                                    <div class="col-md-5"><input class="input-small" type="text" value="${report.shipDetail.meType}" name="meType"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">MCR KW:</label>
                                                    <div class="col-md-5"><input class="input-small" type="text" value="${report.shipDetail.meMcrKw}" name="meMcrKw"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">MCR RPM:</label>
                                                    <div class="col-md-5"><input class="input-small" type="text" value="${report.shipDetail.meMcrRpm}" name="meMcrRpm"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-4">Running hours: </label>
                                                    <div class="col-md-5"><input class="input-small" type="text" value="${report.shipDetail.meRunningHours}" name="meRunningHours"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">Critical RPM:</label>
                                                    <div class="col-md-5"><input class="input-small" type="text" value="${report.shipDetail.meCriticalRpm}" name="meCriticalRpm"/></div>
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
                                                    <div class="col-md-5"><input class="input-small" type="text" value="${report.shipDetail.apMaker}" name="apMaker"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">Type:</label>
                                                    <div class="col-md-5"><input class="input-small" type="text" value="${report.shipDetail.apType}" name="apType"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">Load:</label>
                                                    <div class="col-md-5"><input class="input-small" type="text" value="${report.shipDetail.apLoad}" name="apLoad"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">A1 r/h:</label>
                                                    <div class="col-md-5"><input class="input-small" type="text" value="${report.shipDetail.apA1}" name="apA1"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">A2 r/h: </label>
                                                    <div class="col-md-5"><input class="input-small" type="text" value="${report.shipDetail.apA2}" name="apA2"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">A3 r/h:</label>
                                                    <div class="col-md-5"><input class="input-small" type="text" value="${report.shipDetail.apA3}" name="apA3"/></div>
                                                </div>
                                                <div class="col-md-12 form-group">
                                                    <div class="col-md-12"><input class="form-control" placeholder="Others"  type="text" value="${report.shipDetail.apOthers}" name="apOthers"/></div>
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
                                                    <div class="col-md-5"><input class="input-small" type="text" value="${report.shipDetail.boMaker}" name="boMaker"/></div>
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label class="col-md-3">Type:</label>
                                                    <div class="col-md-5"><input class="input-small" type="text" value="${report.shipDetail.boType}" name="boType"/></div>
                                                </div>
                                                <div class="col-md-5 form-group">
                                                    <label class="col-md-7">Evaporation:</label>
                                                    <div class="col-md-5"><input class="input-xsmall" type="text" value="${report.shipDetail.boEvaporation}" name="boEvaporation"/></div>
                                                </div>
                                                <div class="col-md-7 form-group">
                                                    <label class="col-md-4">Heating area:</label>
                                                    <div class="col-md-4"><input class="input-small" type="text" value="${report.shipDetail.boHeatingArea}" name="boHeatingArea"/></div>
                                                </div>
                                                <div class="col-md-12 form-group">
                                                    <div class="col-md-12"><input class="form-control" placeholder="Others"  type="text" value="${report.shipDetail.boOthers}" name="boOthers"/></div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab2">
                            </div>
                            <div class="tab-pane" id="tab3">
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
                                                        <c:forEach items="${report.defects}" var="d" varStatus="i">
                                                            <tr >
                                                                <td>${i.count}</td>
                                                                <td>${d.description}</td>
                                                                <td>${d.estimatCost}</td>
                                                            </tr>
                                                        </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab4">
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
                            <div class="tab-pane" id="tab5">
                                <div class="tab-pane-div" >
                                        <input type="hidden" value="${report.id}" name="reportId"/>
                                        <input name="id" value="${report.conditionInspection.id}" type="hidden"/>
                                        <center><h2>Surveyor’s summary</h2></center>
                                        <c:if test="${report.conditionInspection.hull!=''}">
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
                                        <c:if test="${report.conditionInspection.deck!=''}">
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
                                        <c:if test="${report.conditionInspection.deckMarchinery!=''}">
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
                                        <c:if test="${report.conditionInspection.ballastTank!=''}">
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
                                        <c:if test="${report.conditionInspection.accommodation!=''}">
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
                                        <c:if test="${report.conditionInspection.navigationBridge!=''}">
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
                                        <c:if test="${report.conditionInspection.machinerySpace!=''}">
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
                                        <c:if test="${report.conditionInspection.lifeSaving!=''}">
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
                                        <c:if test="${report.conditionInspection.galley!=''}">
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
                                        <c:if test="${report.conditionInspection.ballastWater!=''}">
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
                                        <c:if test="${report.shipDetail.type=='Bulker'}">
                                            <c:if test="${report.conditionInspection.hatchCover!=''}">
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
                                            <c:if test="${report.conditionInspection.cargoHold!=''}">
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

                                            <c:if test="${report.shipDetail.type=='Tanker'}">
                                                <c:if test="${report.conditionInspection.cargoTank!=''}">
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
                                                <c:if test="${report.conditionInspection.cargoControlRoom!=''}">
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
                                                <c:if test="${report.conditionInspection.pumpRoom!=''}">
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
                                                <c:if test="${report.conditionInspection.pipelines!=''}">
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
                                                <c:if test="${report.conditionInspection.interGasSystem!=''}">
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
                            <div class="tab-pane" id="tab6" data-flag="flag">
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
                                    </c:forEach>
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
                                </div>
                            </div>
                            <div class="tab-pane" id="tab7">
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
                                                <c:if test="${d.attachmentName!=''}">
                                                    <tr>
                                                        <td>${i.count}</td>
                                                        <td><a href="${d.attachmentUrl}">${d.title}</a></td>
                                                        <td><li class="fa fa-download"></li></td>
                                                    </tr>
                                                </c:if>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab8">

                            </div>
                        </div>
                    </div>
                </div>
                </div>
        </div>
    </div>



<script>
    var width = $(window).width();
    $(".tab-pane").css("margin-left",width*0.1);
    function defectAddRow(obj){
        var trNum=$(obj).closest("table").find("tbody tr").length-1;
        var reportId=$("#reportId").val();
        html= '<tr>' +
                '<td style="display: none;"> '+
                '<input type="text"  value="'+reportId+'" name="defects['+trNum+'].inspectionReportId" /></td>'+
                '<td><textarea class="form-control" rows="2" name="defects['+trNum+'].description"></textarea></td>' +
                '<td><input type="text" class="form-control" name="defects['+trNum+'].estimatCost"/></td>' +
                '<td><button type="button" onclick="deleteRow(this)">Delete</button> </td></tr>';
        $(obj).closest("table").find("tbody tr:last").after(html);
    }

    function defectDeleteRow(obj) {
        var count=0;
        var tableObj= $(obj).closest("table");
        $(obj).parent().parent().remove();
        tableObj.find("tbody tr").each(function () {
            if(count==0){
                count++;
            }else {
                var num=count-2;
                var one="defects["+num+"].inspectionReportId";
                var two="defects["+num+"].description";
                var three="defects["+num+"].estimatCost";
                $(this).find("td").first().find("textarea").attr("name",one);
                $(this).find("td").first().next().find("input").attr("name",two);
                $(this).find("td").last().prev().find("input").attr("name",three);
            }
            count++;
        });


    }

    function addRow(obj) {
       var trLength= $(obj).closest("table").find("tbody tr").length-1;
        var html="";
        if($(obj).attr("data-num")==2){
            html= '<tr >' +
                    '<td onclick="one(this)"><input type="text" name="technicalAppendixInfo['+trLength+'].one" class="form-control" /></td>' +
                    '<td><input type="text" class="form-control" name="technicalAppendixInfo['+trLength+'].two"/></td>' +
                    '<td><button data-num="2" type="button" onclick="deleteRow(this)">Delete</button> </td></tr>'
        }else {
            html= '<tr >' +
                    '<td onclick="one(this)"><input type="text" class="form-control" name="technicalAppendixInfo['+trLength+'].one"/></td>' +
                    '<td><input type="text" class="form-control" name="technicalAppendixInfo['+trLength+'].two"/></td>'+
                    '<td><input type="text" class="form-control" name="technicalAppendixInfo['+trLength+'].three"/></td>' +
                    '<td><button type="button" onclick="deleteRow(this)">Delete</button> </td></tr>';
        }

        $(obj).closest("table").find("tbody tr:last").after(html);
    }
    function deleteRow(obj) {
        var count=0;
        var tableObj= $(obj).closest("table");
        $(obj).parent().parent().remove();
        tableObj.find("tbody tr").each(function () {
            if(count==0){
                count++;
            }else {
                var num=count-2;
                var one="technicalAppendixInfo["+num+"].one";
                var two="technicalAppendixInfo["+num+"].two";

                $(this).find("td").first().find("input").attr("name",one);
                $(this).find("td").first().next().find("input").attr("name",two);
                if($(obj).attr("data-num")!=2){
                    var three="technicalAppendixInfo["+num+"].three";
                    $(this).find("td").last().prev().find("input").attr("name",three);
                }
            }
            count++;
        });


    }
   function addRow1(obj) {
        $("#addRow1").click();
   }
   function sure(obj) {
       var html='<tr><td>—'+$("#title").val()+'</td>' +
               '<td></td>' +
               '<td><button onclick="upload_attachment(this)" type="button">Browse</button></td></tr>';
       $("#default_table").find("tbody tr:last").after(html);
       $(obj).prev().click();
   }
   function upload_attachment(obj) {
       initUploaders_attachment(obj, "shipinfo", "${staticPath}/",obj,"删除");
   }

   function clearTd(obj) {
       $(obj).parent().prev().html("");
       $(obj).parent().html('<button type="button" onclick="upload_attachment(this)">Browse</button>');
   }

   //鼠标移入事件
    function mouseOver(obj){
        $(obj).find("span").show();
        $(obj).mouseout(function () {
            $(obj).find("span").hide();
        });
    }

    //移除相册
    function removePhoto(obj,id){
        if(confirm("确定删除？")){
            $.ajax({
                url:"prepurchase/surveyor/deleteAlbum",
                type:"GET",
                dataType:"json",
                data:{
                    albumId:id,
                },
                success:function (data) {
                    if(data){
                        $(obj).parent().parent().parent().remove();
                    }
                },
                error:function () {

                }
            });
        }

    }

    //编辑相册
    function editPhoto(obj,id,albumName) {
        $(".photo_name").removeClass("photo_name");
        $(obj).parent().attr("class","photo_name");
        $(obj).parent().attr("data-id",id);

        $("#photoName").val(albumName);
        $("#edit").click();
    }

    //确定相册名称
    function surePhotoName(obj) {
        if($("#photoName").val()==""){
            alert("相册名称不能为空!")
        }else{
            var albumId=$(".photo_name").attr("data-id");
            $.ajax({
                url:"prepurchase/surveyor/editAlbum",
                type:"GET",
                dataType:"json",
                data:{
                    albumId:albumId,
                    albumName:$("#photoName").val(),
                },
                success:function (data) {
                    if(data){
                        $(".photo_name").next().find("p:first").html($("#photoName").val());
                        $(obj).prev().click();
                        $(".photo_name").removeAttr("data-id");
                        $(".photo_name").removeClass("photo_name");
                    }
                },
                error:function () {

                }
            });
        }
    }

    //创建一个新的相册
    function createAlbum(obj) {
        $("#addAblum").click();
        $(".photo_name").removeClass("photo_name");
        $(obj).attr("class","photo_name")

    }
    //确定相册名称
    function sureAlbumName(obj) {
        var albumName=$('#album_name').val();
        var reportId=$("#reportId").val();
        $.ajax({
            url:"prepurchase/surveyor/createAlbum",
            type:"GET",
            dataType:"json",
            data:{
                albumName:albumName,
                reportId:reportId
            },
            success:function (data) {
                if(data){
                    var createDate=new Date().format('dd/MM/yyyy');
                    //相册名称
                    var html='<div class="divPhoto"><div class="divImg" onmouseover="mouseOver(this)">'+
                            '<div><span  onclick="javascript:editPhoto(this);" class="span-left"><li class="li-left fa fa-edit"></li></span>'+
                            '<span onclick="javascript:removePhoto(this);" class="span-right"><li class="li-right fa fa-remove"></li> </span>'+
                            '<a data-model="dialog" href="prepurchase/surveyor/viewImg"  >'+
                            '<img src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipyard/GWTcR228ek.jpg" style="width: 200px;height: 200px;"/> </a> </div>'+
                            '<div style="width: 200px"><p style="float: left;margin-right: 10px;">'+albumName+'</p><p style="float: left;margin-right: 10px">(0)</p>'+
                            '<p style="float: left;margin: 0px">Create at '+createDate+'</p></div></div></div>';
                    $(".photo_name").closest("form").find(".divPhoto:last").after(html);
                    $(obj).prev().click();
                    $(".photo_name").removeClass("photo_name");
                }
            },
            error:function () {

            }
        });

    }

    //格式化日期
    Date.prototype.format =function(format) {
        var o = {
            "M+": this.getMonth() + 1, //month
            "d+": this.getDate(), //day
            "h+": this.getHours(), //hour
            "m+": this.getMinutes(), //minute
            "s+": this.getSeconds(), //second
            "q+": Math.floor((this.getMonth() + 3) / 3), //quarter
            "S": this.getMilliseconds() //millisecond
        }
        if (/(y+)/.test(format)) format = format.replace(RegExp.$1,
                (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)if (new RegExp("(" + k + ")").test(format))
            format = format.replace(RegExp.$1,
                    RegExp.$1.length == 1 ? o[k] :
                            ("00" + o[k]).substr(("" + o[k]).length));
        return format;
    }
</script>
<script>

 /*   if($(".info").find("a").attr("href")=="#tab1"){
        $("#back").hide();
    }*/
    function nextLi() {
        if($("#div_from .active").attr("data-flag")=='flag'){
            $("#div_from .active").find("form").each(function () {
                $(this).ajaxSubmit({
                    success:function (data) {

                    },
                    error:function () {

                    }
                });
            });
        }else {
            $("#div_from .active").find("form").ajaxSubmit({
                success:function (data) {

                },
                error:function () {

                }
            });
        }

        var obj=$("#ul_li .active").next();
        $(".active").removeClass("active");
        obj.find("a").click();

    }

   /* function prevLi() {
        var obj=$(".info").prev();
        $(".info").removeClass("info");
        obj.find("a").click();
        obj.addClass("info");
    }*/
</script>