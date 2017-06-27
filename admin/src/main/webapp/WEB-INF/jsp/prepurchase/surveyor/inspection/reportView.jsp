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
        height: 1px;  }
    .add_img{width: 25px;height: 25px}

    table th{background-color: #C0C9CC}
    #ul_li li{width: 150px;}
    #ul_li li a{padding: 0px}
    .tab-pane-div{margin-top: 10px;width: 90%}
    #div_grade{margin-top: 10px;}
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
        <input value="${status}" id="status" type="hidden"/>
                    <div class="col-md-12">
                        <div class="portlet box green">
                            <div class="portlet-title" >
                                <div class="caption"><h3>Report of Star Deltas</h3></div>
                                <div class="tools" style="padding-top: 20px">
                                    <div>
                                        <a data-target="navTab" href="prepurchase/surveyor/report" class="btn blue"><li class="fa fa-bars"></li>Report List</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="portlet-body form">
                            <div class="form-wizard">
                                    <div class=" form-body">
                                        <center>
                                            <ul  id="ul_li" class="title nav nav-pills nav-justified steps">
                                                <li class="active info">
                                                    <a href="#tab1" data-toggle="tab" class="step" aria-expanded="true">
                                                        <span class="number"> 1 </span></br>
                                                        <span class="desc">
                                                                <i class="fa fa-check"></i> Ship details </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab2" data-toggle="tab" class="step">
                                                        <span class="number"> 2 </span></br>
                                                        <span class="desc">
                                                                <i class="fa fa-check"></i> Grading </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab3" data-toggle="tab" class="step">
                                                        <span class="number"> 3 </span></br>
                                                        <span class="desc">
                                                                <i class="fa fa-check"></i> Defects </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab4" data-toggle="tab" class="step">
                                                        <span class="number"> 4 </span></br>
                                                        <span class="desc">
                                                                <i class="fa fa-check"></i> Galleries </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab5" data-toggle="tab" class="step">
                                                        <span class="number"> 5 </span></br>
                                                        <span class="desc">
                                                                <i class="fa fa-check"></i> Condition inspection </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab6" data-toggle="tab" class="step">
                                                        <span class="number"> 6 </span></br>
                                                        <span class="desc">
                                                                <i class="fa fa-check"></i> Tech. & Equip. info. </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab7" data-toggle="tab" class="step">
                                                        <span class="number"> 7 </span></br>
                                                        <span class="desc">
                                                                <i class="fa fa-check"></i> Documents </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab8" data-toggle="tab" class="step">
                                                        <span class="number"> <i class="fa fa-check"></i> </span></br>
                                                        <span class="desc">
                                                                 Complete </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </center>
                                        <div class="line1"></div>
                                        <div class="tab-content" id="div_from">
                                            <div class="tab-pane tab-left active" id="tab1">
                                                <div class="tab-pane-div">
                                                    <form action="prepurchase/surveyor/reportEditShip" method="post">
                                                        <input type="hidden" value="${report.id}" name="reportId"/>
                                                        <div class="col-md-6">
                                                            <div style="border: solid black 2px" class="col-md-12">
                                                                <div class="col-md-8" style="margin-top: 20px;margin-bottom: 20px">
                                                                    <img src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipyard/GWTcR228ek.jpg" style="width: 100%;height: 250px"/>
                                                                </div>
                                                                <div class="col-md-4" style="margin-top: 20px;margin-bottom: 20px">
                                                                    <p style="color: #00a8c6">Ship Name</p><input type="hidden" value="${report.shipDetail.id}" name="id"/>
                                                                    <p>${report.shipDetail.shipName}</p><input type="hidden" value="${report.shipDetail.shipName}" name="shipName"/>
                                                                    <p style="color: #00a8c6">IMO</p>
                                                                    <p>${report.shipDetail.imo}</p><input type="hidden" value="${report.shipDetail.imo}" name="imo"/>
                                                                    <p style="color: #00a8c6">Type</p>
                                                                    <p>${report.shipDetail.shipType}</p><input type="hidden" value="${report.shipDetail.shipType}" name="type"/>
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
                                                                <div class="col-md-12 form-group">
                                                                    <label class="col-md-4 control-label">Inspection date:</label>
                                                                    <div class="col-md-8"><input readonly class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-12 form-group">
                                                                    <label class="col-md-9 control-label">Known the buyers by site surveyor,but WOG:</label>
                                                                    <div class="col-md-3"><input readonly class="form-control" type="text" value="${report.shipDetail.wog}" name="wog"/></div>
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
                                                                        <th style="width: 10%">Operation</th>
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
                                            <div class="tab-pane tab-left" id="tab4">
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
                                                                        <span   class="span-left">
                                                                            <li class="li-left fa fa-edit"></li>
                                                                        </span>
                                                                        <span  class="span-right">
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
                                            <div class="tab-pane tab-left" id="tab5">
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
                                                        <c:if test="${report.shipDetail.shipType=='Bulker'}">
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

                                                        <c:if test="${report.shipDetail.shipType=='Tanker'}">
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
                                            <div class="tab-pane tab-left" id="tab6" data-flag="flag">
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

                                                                                            <td><button class="btn red"
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
                                                        <c:if test="${t.catagory=='Cargo tank capacities(Only tanker)'}">
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
                                                                                            <td><button class="btn red" type="button" onclick="deleteRow(this)">Delete</button> </td>
                                                                                        </tr>
                                                                                    </c:forEach>
                                                                                    </tbody>
                                                                                </table>
                                                                            </form>
                                                                        </div>
                                                                    </c:forEach>

                                                                </div>
                                                            </div>
                                                        </c:if>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                            <div class="tab-pane tab-left" id="tab7">
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
                                                                        <td>—${d.title}<input type="hidden" name="documents[${i.index}].title" value="${d.title}"></td>
                                                                        <td><a target="_blank" href="${d.attachmentUrl}">${d.attachmentName}</a>
                                                                            <input type="hidden" name="documents[${i.index}].id" value="${d.id}">
                                                                            <input type="hidden" name="documents[${i.index}].inspectionReportId" value="${report.id}">
                                                                            <input type="hidden" name="documents[${i.index}].attachmentUrl" value="${d.attachmentUrl}">
                                                                            <input type="hidden" name="documents[${i.index}].attachmentName" value="${d.attachmentName}">
                                                                        </td>
                                                                        <td>
                                                                            <c:if test="${d.attachmentUrl!='' && d.attachmentUrl!=null}">
                                                                                <button class="btn red" onclick="clearTd(this)" type="button" class="btn red">Delete</button>
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
    $("input").attr("disabled","disabled");
    $("button").attr("disabled","disabled");
    $("textarea").attr("disabled","disabled");


    var width = $(window).width();
    $(".tab-left").css("margin-left",width*0.1);

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
                            html+='<tr style="background-color: #9C9C9C;">'+
                                    '<td style="text-align: center;font-weight:bolder ;font-size: larger">'+grades[i].item+'</td>'+
                                    '<td>'+g+'</td>'+
                                    '<td></td>'+
                                    '<td></td>'+
                                    '<td></td>'+
                                    '</tr>';
                        }else if(grades[i].rank==2){
                            html+='<tr style="background-color:#01a0e4">'+
                                    '<td  style="font-size: larger">'+grades[i].item+'</td>'+
                                    '<td>'+g+'</td>'+
                                    '<td></td>'+
                                    '<td></td>'+
                                    '<td></td>'+
                                    '</tr>'
                        }else if(grades[i].rank==3){
                            html+= '<tr>'+
                                    '<td>'+grades[i].item+'</td>'+
                                    '<td>'+g+'</td>'+
                                    '<td>'+grades[i].remark+'</td>'+
                                    '<td><a target="_blank" href="'+grades[i].sitePhoto+'">' + grades[i].fileName + '</a></td>'+
                                    '<td>';
                            if(grades[i].fileName==null || grades[i].fileName==''){
                                html+= '<input  type="button" class="upload_grade btn blue" value="Upload"/>';
                            }else{
                                html+= '<button  type="button" class="btn red">Delete</button>';
                            }
                            html+='</td></tr>';
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