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
</style>
    <div class="row">
                    <div class="col-md-12">
                        <div class="portlet box green">
                            <div class="portlet-title" >
                                <div class="caption"><h3>Report of Star Deltas</h3></div>
                                <div class="tools">
                                    <button style="color: black" type="button"><li class="fa fa-bars"></li>Report List</button>
                                </div>
                            </div>
                        </div>
                            <div class="portlet-body form">
                                <form class="form-horizontal" action="#" id="submit_form" method="POST">
                                    <div class="form-wizard">
                                        <div class=" form-body">
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
                                                                    <i class="fa fa-check"></i> Condition inspection </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab5" data-toggle="tab" class="step">
                                                        <span class="number"> 5 </span></br>
                                                        <span class="desc">
                                                                    <i class="fa fa-check"></i> Technical appendix &</br> equipment information </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab6" data-toggle="tab" class="step">
                                                        <span class="number"> 6 </span></br>
                                                        <span class="desc">
                                                                    <i class="fa fa-check"></i> Documents </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab7" data-toggle="tab" class="step">
                                                        <span class="number"> 7 </span></br>
                                                        <span class="desc">
                                                                    <i class="fa fa-check"></i> Complete </span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#tab8" data-toggle="tab" class="step">
                                                        <span class="number"> 8 </span></br>
                                                        <span class="desc">
                                                                    <i class="fa fa-check"></i> Confirm </span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <div class="line1"></div>
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab1">
                                                    <div class="tab-pane-div">
                                                        <div class="col-md-6">
                                                            <div style="border: solid black 2px" class="col-md-12">
                                                                <div class="col-md-8" style="margin-top: 20px;margin-bottom: 20px">
                                                                    <img src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipyard/GWTcR228ek.jpg" style="width: 100%;height: 300px"/>
                                                                </div>
                                                                <div class="col-md-4" style="margin-top: 20px;margin-bottom: 20px">
                                                                    <p style="color: #00a8c6">Ship Name</p>
                                                                    <p>Star Delta</p>
                                                                    <p style="color: #00a8c6">IMO</p>
                                                                    <p>7686174</p>
                                                                    <p style="color: #00a8c6">Type</p>
                                                                    <p>Bulk Carrier</p>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12" style="margin-top:30px ">
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4 control-label">LOA(m):</label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4 control-label">Beam(m): </label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4 control-label">Dwt(ton): </label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4 control-label">Draft(m): </label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4 control-label">GT: </label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4 control-label">LDT: </label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4 control-label">SS(m/y): </label>
                                                                    <div class="col-md-8 "><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4 control-label">Bunkers: </label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label class="col-sm-4 control-label">Class:</label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-sm-4 control-label">Flag:</label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4 control-label">Builder:</label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4 control-label">ex.Name:</label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4 control-label">Location:</label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4 control-label">ShipType:</label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4 control-label">Build Year:</label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4 control-label">Call Sign:</label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4 control-label">Inspection date:</label>
                                                                    <div class="col-md-8"><input class="form-control" type="text" value="" name=""/></div>
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
                                                                    <div class="col-md-5"><input class="input-small" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-3">Type:</label>
                                                                    <div class="col-md-5"><input class="input-small" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-3">MCR KW:</label>
                                                                    <div class="col-md-5"><input class="input-small" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-3">MCR RPM:</label>
                                                                    <div class="col-md-5"><input class="input-small" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-4">Running: </label>
                                                                    <div class="col-md-5"><input class="input-small" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-3">Critical RPM:</label>
                                                                    <div class="col-md-5"><input class="input-small" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-12 form-group">
                                                                    <div class="col-md-12"><input class="form-control" placeholder="Others"  type="text" value="" name=""/></div>
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
                                                                    <div class="col-md-5"><input class="input-small" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-3">Type:</label>
                                                                    <div class="col-md-5"><input class="input-small" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-3">Load:</label>
                                                                    <div class="col-md-5"><input class="input-small" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-3">A1 r/h:</label>
                                                                    <div class="col-md-5"><input class="input-small" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-3">A2 r/h: </label>
                                                                    <div class="col-md-5"><input class="input-small" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-3">A3 r/h:</label>
                                                                    <div class="col-md-5"><input class="input-small" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-12 form-group">
                                                                    <div class="col-md-12"><input class="form-control" placeholder="Others"  type="text" value="" name=""/></div>
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
                                                                    <div class="col-md-5"><input class="input-small" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-6 form-group">
                                                                    <label class="col-md-3">Type:</label>
                                                                    <div class="col-md-5"><input class="input-small" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-5 form-group">
                                                                    <label class="col-md-7">Evaporation:</label>
                                                                    <div class="col-md-5"><input class="input-xsmall" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-7 form-group">
                                                                    <label class="col-md-4">Heating area:</label>
                                                                    <div class="col-md-4"><input class="input-small" type="text" value="" name=""/></div>
                                                                </div>
                                                                <div class="col-md-12 form-group">
                                                                    <div class="col-md-12"><input class="form-control" placeholder="Others"  type="text" value="" name=""/></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="tab2">
                                                    <div class="tab-pane-div" >
                                                        <div class="col-md-12" style="margin-bottom: 20px">
                                                            <div id="example1"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="tab3">

                                                </div>
                                                <div class="tab-pane" id="tab4">
                                                    <div class="col-md-12">
                                                        <div class="col-md-3" style="margin-bottom: 20px;">
                                                            <button id="upload_img" type="button" >Upload photo</button>&nbsp;&nbsp;
                                                            <button  type="button" onclick="createAlbum(this)">Creat album</button>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane-div">
                                                        <div class="divPhoto">
                                                            <div class="divImg" onmouseover="mouseOver(this)">
                                                                <div >
                                                                    <span  onclick="javascript:editPhoto(this);" class="span-left">
                                                                        <li class="li-left fa fa-edit"></li>
                                                                    </span>
                                                                    <span onclick="javascript:removePhoto(this);" class="span-right">
                                                                        <li class="li-right fa fa-remove"></li>
                                                                    </span>
                                                                    <a data-model="dialog" href="prepurchase/surveyor/viewImg"  >
                                                                        <img src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipyard/GWTcR228ek.jpg" style="width: 200px;height: 200px;"/>
                                                                    </a>
                                                                </div>
                                                                <div style="width: 200px">
                                                                    <p style="float: left;margin-right: 10px;">HULL</p><p style="float: left">(23)</p>
                                                                    <p style="float: left;margin: 0px">Create at 15/4/2017</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="divPhoto">
                                                            <div class="divImg" onmouseover="mouseOver(this)">
                                                                <div >
                                                                    <span  onclick="javascript:editPhoto(this);" class="span-left">
                                                                        <li class="li-left fa fa-edit"></li>
                                                                    </span>
                                                                    <span onclick="javascript:removePhoto(this);" class="span-right">
                                                                        <li class="li-right fa fa-remove"></li>
                                                                    </span>
                                                                    <a data-model="dialog" href="prepurchase/surveyor/viewImg"  >
                                                                        <img src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipyard/GWTcR228ek.jpg" style="width: 200px;height: 200px;"/>
                                                                    </a>
                                                                </div>
                                                                <div style="width: 200px">
                                                                    <p style="float: left;margin-right: 10px;">HULL</p><p style="float: left">(23)</p>
                                                                    <p style="float: left;margin: 0px">Create at 15/4/2017</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="divPhoto">
                                                            <div class="divImg" onmouseover="mouseOver(this)">
                                                                <div >
                                                                    <span  onclick="javascript:editPhoto(this);" class="span-left">
                                                                        <li class="li-left fa fa-edit"></li>
                                                                    </span>
                                                                    <span onclick="javascript:removePhoto(this);" class="span-right">
                                                                        <li class="li-right fa fa-remove"></li>
                                                                    </span>
                                                                    <a data-model="dialog" href="prepurchase/surveyor/viewImg"  >
                                                                        <img src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipyard/GWTcR228ek.jpg" style="width: 200px;height: 200px;"/>
                                                                    </a>
                                                                </div>
                                                                <div style="width: 200px">
                                                                    <p style="float: left;margin-right: 10px;">HULL</p><p style="float: left">(23)</p>
                                                                    <p style="float: left;margin: 0px">Create at 15/4/2017</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="tab5">
                                                    <div class="tab-pane-div" >
                                                        <center><h2>Surveyor’s summary</h2></center>
                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Hull</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Forward mooring deck/Aft mooring deck/Main deck</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Deck marchinery (mooring,crane,outfittings,etc.)</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Ballast tanks & Void spaces</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Accommodation & deck</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Navigation bridge & Commuication equipments</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Machinery space & Engine room machinery</br>
                                                                (Engine control room,Main engine,Auxiliary engines,Boiler/Economiser,Steering gear,others)</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Life saving ,Fire and safety equipment</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Galley,provision and refrigerated rooms</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Ballast water treatment system</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Hatch cover and hatch coamings (Only bulker)</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Cargo hold (Only bulker)</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Cargo tanks (Only tanker)</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Cargo control room (Only tanker)</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Pump room (Only tanker)</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Pipelines (Only tanker)</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="col-md-12"><h3>Inter gas system (Only tanker)</h3></div>
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" rows="4" name=""></textarea>
                                                            </div>
                                                        </div>


                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="tab6">
                                                    <div class="tab-pane-div" >
                                                        <div class="col-md-12">
                                                            <div class="portlet box green">
                                                                <div class="portlet-title">
                                                                    <div class="caption">
                                                                        Navigation & Communications Equipments </div>
                                                                    <div class="tools">
                                                                    </div>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover" >
                                                                        <thead>
                                                                        <tr>
                                                                            <th> Equipmet </th>
                                                                            <th> Maker </th>
                                                                            <th> Type </th>
                                                                            <th style="width: 5%"> <button data-num="3" type="button" onclick="addRow(this)">
                                                                                <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                            </button>
                                                                            </th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr style="display: none"></tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="portlet box green">
                                                                <div class="portlet-title">
                                                                    <div class="caption">
                                                                        Cargo hold capacities (Only Bulker) </div>
                                                                    <div class="tools">
                                                                    </div>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover">
                                                                        <thead>
                                                                        <tr>
                                                                            <th> Hold # </th>
                                                                            <th> (m3) </th>
                                                                            <th style="width: 5%"> <button data-num="2" type="button" onclick="addRow(this)">
                                                                                <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                            </button>
                                                                            </th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr style="display: none"></tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="portlet box green">
                                                                <div class="portlet-title">
                                                                    <div class="caption">
                                                                        Hatch dimensions (Only Bulker) </div>
                                                                    <div class="tools">
                                                                    </div>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover">
                                                                        <thead>
                                                                        <tr>
                                                                            <th> Hold # </th>
                                                                            <th> m*m </th>
                                                                            <th style="width: 5%"> <button data-num="2" type="button" onclick="addRow(this)">
                                                                                <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                            </button>
                                                                            </th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr style="display: none"></tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="portlet box green">
                                                                <div class="portlet-title">
                                                                    <div class="caption">
                                                                        Cargo tank capacities (Only tanker) </div>
                                                                    <div class="tools">
                                                                    </div>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover" >
                                                                        <thead>
                                                                        <tr>
                                                                            <th> Tank # </th>
                                                                            <th> Frames </th>
                                                                            <th> (m3) </th>
                                                                            <th style="width: 5%"> <button data-num="3" type="button" onclick="addRow(this)">
                                                                                <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                            </button>
                                                                            </th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr style="display: none"></tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="portlet box green">
                                                                <div class="portlet-title">
                                                                    <div class="caption">
                                                                        Cargo tank capacities (Only tanker) </div>
                                                                    <div class="tools">
                                                                    </div>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover" >
                                                                        <thead>
                                                                        <tr>
                                                                            <th> Ballast Tank # </th>
                                                                            <th> Frames </th>
                                                                            <th> (m3) </th>
                                                                            <th style="width: 5%"> <button data-num="3" type="button" onclick="addRow(this)">
                                                                                <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                            </button>
                                                                            </th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr style="display: none"></tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover" >
                                                                        <thead>
                                                                        <tr>
                                                                            <th> Heavy Fuel Oil Capacity Tank # </th>
                                                                            <th> Frames </th>
                                                                            <th> (m3) </th>
                                                                            <th style="width: 5%"> <button data-num="3" type="button" onclick="addRow(this)">
                                                                                <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                            </button>
                                                                            </th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr style="display: none"></tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover" >
                                                                        <thead>
                                                                        <tr>
                                                                            <th> Diesel Oil Capacity  Tank # </th>
                                                                            <th> Frames </th>
                                                                            <th> (m3) </th>
                                                                            <th style="width: 5%"> <button data-num="3" type="button" onclick="addRow(this)">
                                                                                <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                            </button>
                                                                            </th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr style="display: none"></tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover" >
                                                                        <thead>
                                                                        <tr>
                                                                            <th> Fresh Water Capacity Tank # </th>
                                                                            <th> Frames </th>
                                                                            <th> (m3) </th>
                                                                            <th style="width: 5%"> <button data-num="3" type="button" onclick="addRow(this)">
                                                                                <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                            </button>
                                                                            </th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr style="display: none"></tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover" >
                                                                        <thead>
                                                                        <tr>
                                                                            <th> Lube Oil Capacity Tank # </th>
                                                                            <th> Frames </th>
                                                                            <th> (m3) </th>
                                                                            <th style="width: 5%"> <button data-num="3" type="button" onclick="addRow(this)">
                                                                                <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                            </button>
                                                                            </th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr style="display: none"></tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover" >
                                                                        <thead>
                                                                        <tr>
                                                                            <th> Miscellaneous Tanks Capacity Tank # </th>
                                                                            <th> Frames </th>
                                                                            <th> (m3) </th>
                                                                            <th style="width: 5%"> <button data-num="3" type="button" onclick="addRow(this)">
                                                                                <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                            </button>
                                                                            </th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr style="display: none"></tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="portlet box green">
                                                                <div class="portlet-title">
                                                                    <div class="caption">
                                                                        Propulsion machinery </div>
                                                                    <div class="tools">
                                                                    </div>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover" >
                                                                        <thead>
                                                                        <tr>
                                                                            <th> Tank # </th>
                                                                            <th> Frames </th>
                                                                            <th> (m3) </th>
                                                                            <th style="width: 5%"> <button data-num="3" type="button" onclick="addRow(this)">
                                                                                <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                            </button>
                                                                            </th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr style="display: none"></tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="portlet box green">
                                                                <div class="portlet-title">
                                                                    <div class="caption">
                                                                        Auxilliaries machinery </div>
                                                                    <div class="tools">
                                                                    </div>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover" >
                                                                        <thead>
                                                                        <tr>
                                                                            <th> Tank # </th>
                                                                            <th> Frames </th>
                                                                            <th> (m3) </th>
                                                                            <th style="width: 5%"> <button data-num="3" type="button" onclick="addRow(this)">
                                                                                <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                            </button>
                                                                            </th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr style="display: none"></tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="portlet box green">
                                                                <div class="portlet-title">
                                                                    <div class="caption">
                                                                        Main deck and equipment </div>
                                                                    <div class="tools">
                                                                    </div>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover" >
                                                                        <thead>
                                                                        <tr>
                                                                            <th> Tank # </th>
                                                                            <th> Frames </th>
                                                                            <th> (m3) </th>
                                                                            <th style="width: 5%"> <button data-num="3" type="button" onclick="addRow(this)">
                                                                                <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                            </button>
                                                                            </th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr style="display: none"></tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="portlet box green">
                                                                <div class="portlet-title">
                                                                    <div class="caption">
                                                                        Cargo handling equipment </div>
                                                                    <div class="tools">
                                                                    </div>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover" >
                                                                        <thead>
                                                                        <tr>
                                                                            <th> Tank # </th>
                                                                            <th> Frames </th>
                                                                            <th> (m3) </th>
                                                                            <th style="width: 5%"> <button data-num="3" type="button" onclick="addRow(this)">
                                                                                <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                            </button>
                                                                            </th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <tr style="display: none"></tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="portlet box green">
                                                                <div class="portlet-title">
                                                                    <div class="caption">
                                                                        Lifesaving & firefighting equipment </div>
                                                                    <div class="tools">
                                                                    </div>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <table class="table table-striped table-bordered table-hover" >
                                                                        <thead>
                                                                        <tr>
                                                                            <th> Tank # </th>
                                                                            <th> Frames </th>
                                                                            <th> (m3) </th>
                                                                            <th style="width: 5%"> <button data-num="3" type="button" onclick="addRow(this)">
                                                                                <img class="add_img" src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/add.png" />
                                                                            </button>
                                                                            </th>
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
                                                </div>
                                                <div class="tab-pane" id="tab7">
                                                    <div class="tab-pane-div"  >
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
                                                                <tr>
                                                                    <td>—Class status</td>
                                                                    <td></td>
                                                                    <td><button id="up" type="button" onclick="upload_attachment(this)">Browse</button> </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>—HPVQ</td>
                                                                    <td></td>
                                                                    <td><button type="button" onclick="upload_attachment(this)">Browse</button> </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>—Crew list</td>
                                                                    <td></td>
                                                                    <td><button type="button" onclick="upload_attachment(this)">Browse</button> </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>—Certificate of fitness appendix for list of cargoes</td>
                                                                    <td></td>
                                                                    <td><button type="button" onclick="upload_attachment(this)">Browse</button> </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>—Voyage reports showing speed and consumptions</td>
                                                                    <td></td>
                                                                    <td><button type="button" onclick="upload_attachment(this)">Browse</button> </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>—Copy of last CSR</td>
                                                                    <td></td>
                                                                    <td><button type="button" onclick="upload_attachment(this)">Browse</button> </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>—Capacity plan</td>
                                                                    <td></td>
                                                                    <td><button type="button" onclick="upload_attachment(this)">Browse</button> </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>—Mooring plan</td>
                                                                    <td></td>
                                                                    <td><button type="button" onclick="upload_attachment(this)">Browse</button> </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>—Painting scheme</td>
                                                                    <td></td>
                                                                    <td><button type="button" onclick="upload_attachment(this)">Browse</button> </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>—IOPP</td>
                                                                    <td></td>
                                                                    <td><button type="button" onclick="upload_attachment(this)">Browse</button> </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>—Maker listn</td>
                                                                    <td></td>
                                                                    <td><button type="button" onclick="upload_attachment(this)">Browse</button> </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>—Cargo history</td>
                                                                    <td></td>
                                                                    <td><button type="button" onclick="upload_attachment(this)">Browse</button> </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="tab8">

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-offset-3 col-md-9"  style="margin-left: 70%;margin-top: 20px;margin-bottom: 20px">
                                            <a id="back" href="javascript:;" onclick="prevLi()" class="btn default button-previous">
                                                <i class="fa fa-angle-left"></i> Back </a>
                                            <a href="javascript:;" onclick="nextLi()" class="btn btn-outline green button-next"> Continue
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                            <a href="javascript:;" class="btn green button-submit"> Submit
                                                <i class="fa fa-check"></i>
                                            </a>
                                        </div>
                                    </div>
                                </form>
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
                <h4 class="modal-title">输入相册信息</h4>
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
<a href="#ablum" id="addAblum"  data-toggle="modal"  class="btn btn-sm margin-bottom-5 green" style="display: none"></a>
<script>
    var width = $(window).width();
    $(".tab-pane").css("margin-left",width*0.1);

    function addRow(obj) {
        var html="";
        if($(obj).attr("data-num")==2){
            html= '<tr >' +
                    '<td onclick="one(this)"><input type="text" class="form-control" /></td>' +
                    '<td><input type="text" class="form-control" /></td>' +
                    '<td><button type="button" onclick="deleteRow(this)">Delete</button> </td></tr>'
        }else {
            html= '<tr >' +
                    '<td onclick="one(this)"><input type="text" class="form-control" /></td>' +
                    '<td><input type="text" class="form-control"/></td>'+
                    '<td><input type="text" class="form-control" /></td>' +
                    '<td><button type="button" onclick="deleteRow(this)">Delete</button> </td></tr>';
        }

        $(obj).closest("table").find("tbody tr:last").after(html);
    }
    function deleteRow(obj) {
        $(obj).parent().parent().remove();
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
    function removePhoto(obj){
        $(obj).parent().parent().parent().remove();
    }

    //编辑相册
    function editPhoto(obj) {
        $(".photo_name").removeClass("photo_name");
        $(obj).parent().attr("class","photo_name")
        $("#edit").click();
    }

    //确定相册名称
    function surePhotoName(obj) {
        $(".photo_name").next().find("p:first").html($("#photoName").val());
        $(obj).prev().click();
        $(".photo_name").removeClass("photo_name");
    }

    //创建一个新的相册
    function createAlbum(obj) {
        $("#addAblum").click();
        $(".photo_name").removeClass("photo_name");
        $(obj).attr("class","photo_name")

    }
    function sureAlbumName(obj) {
        //相册名称
        var albumName=$('#album_name').val();
        var html='<div class="divPhoto"><div class="divImg" onmouseover="mouseOver(this)">'+
                '<div><span  onclick="javascript:editPhoto(this);" class="span-left"><li class="li-left fa fa-edit"></li></span>'+
                '<span onclick="javascript:removePhoto(this);" class="span-right"><li class="li-right fa fa-remove"></li> </span>'+
                '<a data-model="dialog" href="prepurchase/surveyor/viewImg"  >'+
                '<img src="http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipyard/GWTcR228ek.jpg" style="width: 200px;height: 200px;"/> </a> </div>'+
                '<div style="width: 200px"><p style="float: left;margin-right: 10px;">'+albumName+'</p><p style="float: left">(23)</p>'+
                '<p style="float: left;margin: 0px">Create at 15/4/2017</p></div></div></div>';
        $(".photo_name").parent().parent().next().append(html);
        $(obj).prev().click();
        $(".photo_name").removeClass("photo_name");
    }
</script>
<script>
    var width = $(window).width();
    var widthOne = width * 0.1;
    var widthTwo = width * 0.5;
    var widthThree=width * 0.1
    var container = document.getElementById('example1'),
            storedData = {},
            savedKeys,
            resetState,
            stateLoaded,
            hot;

    hot = new Handsontable(container, {
        rowHeaders: true,
        colHeaders: true,
        colWidths: [widthOne, widthTwo, widthThree],
        minRows: 12,
        minCols: 3,
        colHeaders: ["S/N ", "Description", "Estimated cost (USD)"],
        columnSorting: true,
        columns: [
            {data: "des"},
            {data: "unit"},
            {data: "count",}
        ],
        manualColumnMove: false,
        manualColumnResize: true,
        manualRowMove: true,
        manualRowResize: true,
        minSpareRows: 1,
        contextMenu: true,
        persistentState: true
    });

    function handsontableData() {
        return hot.getData();
    }

</script>
<script>

    if($(".info").find("a").attr("href")=="#tab1"){
        $("#back").hide();
    }
    function nextLi() {
        var obj=$(".info").next();
        $(".info").removeClass("info");
        obj.addClass("info");
        obj.find("a").click();
        $("#back").show();

    }

    function prevLi() {
        if($(".info").prev().find("a").attr("href")=="#tab1"){
            $("#back").hide();
        }
        var obj=$(".info").prev();
        $(".info").removeClass("info");
        obj.find("a").click();
        obj.addClass("info");
    }
</script>