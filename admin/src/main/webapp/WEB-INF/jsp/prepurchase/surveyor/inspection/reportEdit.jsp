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
        margin-top: 10px}
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

    .li-span{color: black}
</style>
    <div class="row">
        <input value="${report.id}" id="reportId" type="hidden"/>
                    <div class="col-md-12">
                        <div class="portlet box green">
                            <div class="portlet-title" >
                                <div class="caption"><h3>Report of Star Deltas</h3></div>
                                <div class="tools" style="padding-top: 20px">
                                <div>
                                    <a id="reportList" data-target="navTab" href="prepurchase/surveyor/report" class="btn blue"><li class="fa fa-bars"></li>Report List</a>
                                </div>
                            </div>
                            </div>
                        </div>
                            <div  class="portlet-body form">
<%--
                                <form class="form-horizontal" action="#" id="submit_form" method="POST" novalidate="novalidate">
--%>
                                    <div class="form-wizard">
                                        <div class=" form-body">
                                            <ul  id="ul_li" class="title nav nav-pills nav-justified steps">
                                                <li class="active info">
                                                    <a id="#tab1" href="javascript:;" onclick="liNow(this)"  class="step" aria-expanded="true">
                                                        <span class="number"> 1 </span></br>
                                                        <span class="desc">
                                                                    <i class="fa fa-check"></i> Ship details </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a id="#tab2" href="javascript:;" onclick="liNow(this)" class="step">
                                                        <span class="number"> 2 </span></br>
                                                        <span class="desc">
                                                                    <i class="fa fa-check"></i> Grading </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a id="#tab3" href="javascript:;" onclick="liNow(this)" class="step">
                                                        <span class="number"> 3 </span></br>
                                                        <span class="desc">
                                                                    <i class="fa fa-check"></i> Defects </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a id="#tab4" href="javascript:;" onclick="liNow(this)" class="step">
                                                        <span class="number"> 4 </span></br>
                                                        <span class="desc">
                                                                    <i class="fa fa-check"></i> Galleries </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a id="#tab5" href="javascript:;" onclick="liNow(this)" class="step">
                                                        <span class="number"> 5 </span></br>
                                                        <span class="desc">
                                                                    <i class="fa fa-check"></i> Condition inspection </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a id="#tab6" href="javascript:;" onclick="liNow(this)" class="step">
                                                        <span class="number"> 6 </span></br>
                                                        <span class="desc">
                                                                    <i class="fa fa-check"></i> Technical appendix &</br> equipment information </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a id="#tab7" href="javascript:;" onclick="liNow(this)" class="step">
                                                        <span class="number"> 7 </span></br>
                                                        <span class="desc">
                                                                    <i class="fa fa-check"></i> Documents </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a id="#tab8" href="javascript:;" onclick="liNow(this)" class="step">
                                                        <span class="number"> <i class="fa fa-check"></i> </span></br>
                                                        <span class="desc">
                                                                     Complete </span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <div class="line1"></div>
                                            <div class="tab-content" id="div_from">
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
                                                        <form action="prepurchase/surveyor/reportEditDefect" method="post">
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
                                                                                <th> Description </th>
                                                                                <th style="width: 15%"> Estimated cost   </br>(USD) </th>
                                                                                <th style="width: 5%"> <button data-num="3" type="button" onclick="defectAddRow(this)">
                                                                                    <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                                </button>
                                                                                </th>
                                                                            </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                            <tr style="display: none"></tr>
                                                                            <c:forEach items="${report.defects}" var="d" varStatus="i">
                                                                                <tr >
                                                                                    <td style="display: none">
                                                                                        <input type="text" value="${d.inspectionReportId}" name="defects[${i.index}].inspectionReportId"/>
                                                                                    </td>
                                                                                    <td><textarea class="form-control" rows="2" name="defects[${i.index}].description">${d.description}</textarea></td>
                                                                                    <td><input type="text" class="form-control" name="defects[${i.index}].estimatCost" value="${d.estimatCost}" /></td>
                                                                                    <td><button type="button" onclick="defectDeleteRow(this)">Delete</button> </td>
                                                                                </tr>
                                                                            </c:forEach>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="tab4">
                                                    <div class="tab-pane-div">
                                                        <form action="" method="post">
                                                            <div class="col-md-12">
                                                                <div class="col-md-3" style="margin-bottom: 20px;">
                                                                    <button  type="button" >Upload photo</button>&nbsp;&nbsp;
                                                                    <button  type="button" onclick="createAlbum(this)">Creat album</button>
                                                                </div>
                                                            </div>
                                                            <c:forEach items="${report.galleries}" var="g">
                                                                <fmt:formatDate value="${g.createDate}" pattern="dd/MM/yyyy" var="createDate"/>
                                                                <div class="divPhoto">
                                                                    <div class="divImg" onmouseover="mouseOver(this)">
                                                                        <div >
                                                                            <span  onclick="javascript:editPhoto(this,'${g.id}','${g.name}');" class="span-left">
                                                                                <li class="li-left fa fa-edit"></li>
                                                                            </span>
                                                                            <span onclick="javascript:removePhoto(this,'${g.id}');" class="span-right">
                                                                                <li class="li-right fa fa-remove"></li>
                                                                            </span>
                                                                            <a data-model="dialog" href="prepurchase/surveyor/img?galleriesId=${g.id}&reportId=${report.id}"  >
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
                                                        </form>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="tab5">
                                                    <div class="tab-pane-div" >
                                                        <form action="prepurchase/surveyor/reportEditSummary" method="post">
                                                            <input type="hidden" value="${report.id}" name="reportId"/>
                                                            <input name="id" value="${report.conditionInspection.id}" type="hidden"/>
                                                            <center><h2>Surveyor’s summary</h2></center>
                                                            <div class="col-md-12">
                                                                <div class="col-md-12"><h3>Hull</h3></div>
                                                                <div class="col-md-12">
                                                                    <textarea class="form-control" rows="4" name="hull">${report.conditionInspection.hull}</textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="col-md-12"><h3>Forward mooring deck/Aft mooring deck/Main deck</h3></div>
                                                                <div class="col-md-12">
                                                                    <textarea class="form-control" rows="4" name="deck" >${report.conditionInspection.deck}</textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="col-md-12"><h3>Deck marchinery (mooring,crane,outfittings,etc.)</h3></div>
                                                                <div class="col-md-12">
                                                                    <textarea class="form-control" rows="4" name="deckMarchinery" >${report.conditionInspection.deckMarchinery}</textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="col-md-12"><h3>Ballast tanks & Void spaces</h3></div>
                                                                <div class="col-md-12">
                                                                    <textarea class="form-control" rows="4" name="ballastTank" >${report.conditionInspection.ballastTank}</textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="col-md-12"><h3>Accommodation & deck</h3></div>
                                                                <div class="col-md-12">
                                                                    <textarea class="form-control" rows="4" name="accommodation" >${report.conditionInspection.accommodation}</textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="col-md-12"><h3>Navigation bridge & Commuication equipments</h3></div>
                                                                <div class="col-md-12">
                                                                    <textarea class="form-control" rows="4" name="navigationBridge" >${report.conditionInspection.navigationBridge}</textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="col-md-12"><h3>Machinery space & Engine room machinery</br>
                                                                    (Engine control room,Main engine,Auxiliary engines,Boiler/Economiser,Steering gear,others)</h3></div>
                                                                <div class="col-md-12">
                                                                    <textarea class="form-control" rows="4" name="machinerySpace" >${report.conditionInspection.machinerySpace}</textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="col-md-12"><h3>Life saving ,Fire and safety equipment</h3></div>
                                                                <div class="col-md-12">
                                                                    <textarea class="form-control" rows="4" name="lifeSaving" >${report.conditionInspection.lifeSaving}</textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="col-md-12"><h3>Galley,provision and refrigerated rooms</h3></div>
                                                                <div class="col-md-12">
                                                                    <textarea class="form-control" rows="4" name="galley" >${report.conditionInspection.galley}</textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="col-md-12"><h3>Ballast water treatment system</h3></div>
                                                                <div class="col-md-12">
                                                                    <textarea class="form-control" rows="4" name="ballastWater" >${report.conditionInspection.ballastWater}</textarea>
                                                                </div>
                                                            </div>
                                                            <c:if test="${report.shipDetail.type=='Bulker'}">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12"><h3>Hatch cover and hatch coamings (Only bulker)</h3></div>
                                                                    <div class="col-md-12">
                                                                        <textarea class="form-control" rows="4" name="hatchCover" >${report.conditionInspection.hatchCover}</textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12"><h3>Cargo hold (Only bulker)</h3></div>
                                                                    <div class="col-md-12">
                                                                        <textarea class="form-control" rows="4" name="cargoHold" >${report.conditionInspection.cargoHold}</textarea>
                                                                    </div>
                                                                </div>
                                                            </c:if>

                                                            <c:if test="${report.shipDetail.type=='Tanker'}">
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12"><h3>Cargo tanks (Only tanker)</h3></div>
                                                                    <div class="col-md-12">
                                                                        <textarea class="form-control" rows="4" name="cargoTank" >${report.conditionInspection.cargoTank}</textarea>
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-12">
                                                                    <div class="col-md-12"><h3>Cargo control room (Only tanker)</h3></div>
                                                                    <div class="col-md-12">
                                                                        <textarea class="form-control" rows="4" name="cargoControlRoom" >${report.conditionInspection.cargoControlRoom}</textarea>
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-12">
                                                                    <div class="col-md-12"><h3>Pump room (Only tanker)</h3></div>
                                                                    <div class="col-md-12">
                                                                        <textarea class="form-control" rows="4" name="pumpRoom" >${report.conditionInspection.pumpRoom}</textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12"><h3>Pipelines (Only tanker)</h3></div>
                                                                    <div class="col-md-12">
                                                                        <textarea class="form-control" rows="4" name="pipelines" >${report.conditionInspection.pipelines}</textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="col-md-12"><h3>Inter gas system (Only tanker)</h3></div>
                                                                    <div class="col-md-12">
                                                                        <textarea class="form-control" rows="4" name="interGasSystem" >${report.conditionInspection.interGasSystem}</textarea>
                                                                    </div>
                                                                </div>

                                                            </c:if>
                                                        </form>

                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="tab6" data-flag="flag">
                                                    <div class="tab-pane-div" >
                                                        <c:forEach items="${report.technicalAppendices}" var="t">
                                                            <c:if test="${t.catagory!='Vessel tank capacity'}">
                                                                <div class="col-md-12">
                                                                    <form action="prepurchase/surveyor/reportEditTechnical" method="post" >

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
                                                                                        <th style="width: 5%"> <button data-num="3" type="button" onclick="addRow(this)">
                                                                                            <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                                        </button>
                                                                                        </th>
                                                                                    </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                    <tr style="display: none"></tr>
                                                                                        <input name="id" type="hidden" value="${t.id}"/>
                                                                                        <c:forEach items="${t.technicalAppendixInfo}" var="ta" varStatus="i">
                                                                                            <tr>
                                                                                                <td><input class="form-control" type="text" name="technicalAppendixInfo[${i.index}].one" value="${ta.one}"/></td>
                                                                                                <td><input class="form-control" type="text" name="technicalAppendixInfo[${i.index}].two" value="${ta.two}"/></td>
                                                                                                <c:if test="${t.title3!=''|| t.title3!=null}">
                                                                                                    <td><input class="form-control" type="text" name="technicalAppendixInfo[${i.index}].three" value="${ta.three}"/></td>
                                                                                                </c:if>

                                                                                                <td><button
                                                                                                        <c:if test="${t.title3==''|| t.title3==null}">
                                                                                                            data-num="2"
                                                                                                        </c:if>
                                                                                                        type="button" onclick="deleteRow(this)">Delete</button> </td>
                                                                                            </tr>
                                                                                        </c:forEach>

                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </c:if>
                                                        </c:forEach>
                                                        <div class="col-md-12">
                                                            <div class="portlet box green">
                                                                <div class="portlet-title">
                                                                    <div class="caption">
                                                                        Vessel tank capacity </div>
                                                                    <div class="tools">
                                                                    </div>
                                                                </div>
                                                                <c:forEach items="${technicalAppendices}" var="te">
                                                                    <div class="portlet-body">
                                                                        <form action="prepurchase/surveyor/reportEditTechnical" method="post" >
                                                                            <table class="table table-striped table-bordered table-hover" >
                                                                                <thead>
                                                                                <tr>
                                                                                    <th> ${te.title1} </th>
                                                                                    <th> ${te.title2} </th>
                                                                                    <th> ${te.title3} </th>
                                                                                    <th style="width: 5%"> <button data-num="3" type="button" onclick="addRow(this)">
                                                                                        <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                                    </button>
                                                                                    </th>
                                                                                </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                <tr style="display: none"></tr>
                                                                                    <input name="id" type="hidden" value="${te.id}"/>
                                                                                    <c:forEach items="${te.technicalAppendixInfo}" var="ta" varStatus="i">
                                                                                        <tr>
                                                                                            <td><input class="form-control" type="text" name="technicalAppendixInfo[${i.index}].one" value="${ta.one}"/></td>
                                                                                            <td><input class="form-control" type="text" name="technicalAppendixInfo[${i.index}].two" value="${ta.two}"/></td>
                                                                                            <td><input class="form-control" type="text" name="technicalAppendixInfo[${i.index}].three" value="${ta.three}"/></td>
                                                                                            <td><button  type="button" onclick="deleteRow(this)">Delete</button> </td>
                                                                                        </tr>
                                                                                    </c:forEach>
                                                                                </tbody>
                                                                            </table>
                                                                        </form>
                                                                    </div>
                                                                </c:forEach>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="tab7">
                                                    <div class="tab-pane-div"  >
                                                        <form action="prepurchase/surveyor/reportEditDocument" method="post">
                                                            <div class="portlet-body">
                                                            <table class="table table-striped table-bordered table-hover" id="default_table">
                                                                <thead>
                                                                <tr>
                                                                    <th> Title </th>
                                                                    <th> Attachment </th>
                                                                    <th style="width: 5%"> <button  type="button" onclick="addRow1(this)">
                                                                        <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                    </button>
                                                                    </th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <c:forEach items="${report.documents}" var="d" varStatus="i">
                                                                        <tr>
                                                                            <td>—${d.title}<input type="hidden" name="documents[${i.index}].title" value="${d.title}">

                                                                            </td>
                                                                            <td><a target="_blank" href="${d.attachmentUrl}">${d.attachmentName}</a>
                                                                                <input type="hidden" name="documents[${i.index}].id" value="${d.id}">
                                                                                <input type="hidden" name="documents[${i.index}].inspectionReportId" value="${report.id}">
                                                                                <input type="hidden" name="documents[${i.index}].attachmentUrl" value="${d.attachmentUrl}">
                                                                                <input type="hidden" name="documents[${i.index}].attachmentName" value="${d.attachmentName}">
                                                                            </td>
                                                                            <td>
                                                                                <c:if test="${d.attachmentUrl!='' && d.attachmentUrl!=null}">
                                                                                    <button onclick="clearTd(this,'${i.index}','${report.id}','${d.id}')" type="button" style="color: red">Delete</button>
                                                                                </c:if>
                                                                                <c:if test="${d.attachmentUrl=='' || d.attachmentUrl==null}">
                                                                                    <button type="button" onmouseover="upload_attachment(this,'${i.index}','${report.id}','${d.id}')">Browse</button>
                                                                                </c:if>
                                                                            </td>
                                                                        </tr>
                                                                    </c:forEach>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="tab8">
                                                    <div class="tab-pane-div"  >
                                                        <div>
                                                            <img width="800px" height="500px" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/system/success.jpg"/>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-offset-3 col-md-4"  style="margin-left: 80%;margin-top: 20px;margin-bottom: 20px">
                                           <%-- <a id="back" href="javascript:;" onclick="prevLi()" class="btn default button-previous">
                                                <i class="fa fa-angle-left"></i> Back </a>--%>
                                            <div class="col-md-3">
                                                <a id="next" href="javascript:;" onclick="nextLi(this)" class="btn btn-outline green button-next"> Save
                                                    <i class="fa fa-angle-right"></i>
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="javascript:;" onclick="submitReport()" class="btn green button-submit"> Submit
                                                    <i class="fa fa-check"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                <%--</form>--%>
                            </div>
                    </div>
                </div>

<%--添加Title--%>
<div id="make" class="modal fade" tabindex="-1" data-backdrop="make" data-keyboard="false">
    <div style="width: 50%" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #4bccd8">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">输入信息</h4>
            </div>
            <div id="modal-body" class="modal-body col-md-12">
                <div class="col-md-12 form-group">
                    <label class="col-md-3">输入Title:</label>
                    <div class="col-md-9"><input class="form-control" id="title" type="text" value="" name=""/></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn dark btn-outline">关闭</button>
                <button type="button" onclick="sure(this)" class="btn dark btn-outline">确定</button>
            </div>
        </div>
    </div>
</div>
<a href="#make" id="addRow1"  data-toggle="modal"  class="btn btn-sm margin-bottom-5 green" style="display: none"></a>

<%--修改相册名称--%>
<div id="editPhoto" class="modal fade" tabindex="-1" data-backdrop="make" data-keyboard="false">
    <div style="width: 50%" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #4bccd8">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">修改相册名称</h4>
            </div>
            <div id="" class="modal-body col-md-12">
                <div class="col-md-12 form-group">
                    <label class="col-md-3">相册名称:</label>
                    <div class="col-md-9"><input id="photoName" class="form-control"  type="text" value="" name=""/></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn dark btn-outline">关闭</button>
                <button type="button" onclick="surePhotoName(this)" class="btn dark btn-outline">确定</button>
            </div>
        </div>
    </div>
</div>
<a href="#editPhoto" id="edit"  data-toggle="modal"  class="btn btn-sm margin-bottom-5 green" style="display: none"></a>

<%--创建一个新得相册--%>
<div id="ablum" class="modal fade" tabindex="-1" data-backdrop="make" data-keyboard="false">
    <div style="width: 50%" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #4bccd8">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">输入相册信息</h4>
            </div>
            <div  class="modal-body col-md-12">
                <div class="col-md-12 form-group">
                    <label class="col-md-3">相册名称:</label>
                    <div class="col-md-9"><input id="album_name" class="form-control"  type="text" value="" name=""/></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn dark btn-outline">关闭</button>
                <button type="button" onclick="sureAlbumName(this)" class="btn dark btn-outline">确定</button>
            </div>
        </div>
    </div>
</div>
<a href="#ablum" id="addAblum"   data-toggle="modal"  class="btn btn-sm margin-bottom-5 green" style="display: none"></a>
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
       var trNum=$("#default_table").find("tbody tr").length;
       var reportId=$("#reportId").val();

       var html='<tr><td>—'+$("#title").val()+'<input type="hidden" name="documents['+trNum+'].title" value="'+$("#title").val()+'"/></td>' +
               '<td></td>' +
               '<td><button onmouseover="upload_attachment(this,'+trNum+','+reportId+','+0+')" type="button">Browse</button></td></tr>';
       $("#default_table").find("tbody tr:last").after(html);
       $(obj).prev().click();
   }
   function upload_attachment(obj,count,reportId,documentId) {
       initUploaders_attachment(obj, "shipinfo", "${staticPath}/",obj,count,reportId,documentId);
       $(obj).mouseout(function () {
           return false;
       });
       return false;
   }

   function clearTd(obj,count,reportId,documentId) {
       alert(count);
       $(obj).parent().prev().html("");
       $(obj).parent().html('<button  type="button" onmouseover="upload_attachment(this,'+count+','+reportId+','+documentId+')">Browse</button>');
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
    function liNow(obj) {
        $("#ul_li .active").removeClass("active");
        $("#div_from .active").removeClass("active");
        if($(obj).attr("id")=='#tab1'){
            $(obj).parent().addClass("active")
            $("#tab1").addClass("active");
        }
        if($(obj).attr("id")=='#tab2'){
            $(obj).parent().addClass("active")
            $("#tab2").addClass("active");
        }
        if($(obj).attr("id")=='#tab3'){
            $(obj).parent().addClass("active")
            $("#tab3").addClass("active");
        }
        if($(obj).attr("id")=='#tab4'){
            $(obj).parent().addClass("active")
            $("#tab4").addClass("active");
        }
        if($(obj).attr("id")=='#tab5'){
            $(obj).parent().addClass("active")
            $("#tab5").addClass("active");
        }
        if($(obj).attr("id")=='#tab6'){
            $(obj).parent().addClass("active")
            $("#tab6").addClass("active");
        }
        if($(obj).attr("id")=='#tab7'){
            $(obj).parent().addClass("active")
            $("#tab7").addClass("active");
        }
        if($(obj).attr("id")=='#tab8'){
            $(obj).parent().addClass("active")
            $("#tab8").addClass("active");
            $("#next").hide();
        }
        if($(obj).attr("id")!='#tab8'){
            $("#next").show();
        }

    }


    function nextLi(objButton) {
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

        $("#ul_li .active").find("span:first").html('<i class="fa fa-check"></i>');
        $("#ul_li .active").find("span:first").css("background-color","#36c6d3");
        $("#ul_li .active").find("span:first").css("color","white");
        var obj=$("#ul_li .active").next();

        $(".active").removeClass("active");
        if(obj.find("a").attr("id")=='#tab8'){
            $(objButton).hide();
        }
        obj.find("a").click();

    }

   /* function prevLi() {
        var obj=$(".info").prev();
        $(".info").removeClass("info");
        obj.find("a").click();
        obj.addClass("info");
    }*/

   /*提交报告*/
   function submitReport() {
      if(confirm("确定要提交报告吗?")){
          var reportId=$("#reportId").val();
          $.ajax({
              url:"prepurchase/surveyor/submitReport",
              type:"GET",
              dataType:"json",
              data:{
                  reportId:reportId
              },
              success:function (data) {
                  if(data){
                      alert("SUCCESS");
                      $("#reportList").click();
                  }
              },
              error:function () {

              }
          });
      }
   }
</script>