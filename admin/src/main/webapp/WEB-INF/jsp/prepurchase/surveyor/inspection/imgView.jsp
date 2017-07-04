<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<style>
    .line1 {
        border-bottom: solid 2px #337ab7;
        height: 1px;
        margin-top: 10px
    }

    .col-md-offset-3 {
        margin-left: 45%;
        margin-top: 20px;
    }

    .div-photo{
        float: left;
        background-color: white;
        margin-top: 50px;
        margin-left: 50px;
        margin-bottom: 20px;
    }
    .div-img{
        float:left;position:relative;margin: 10px
    }
    .page{
        background-color: #cccccc;
        margin-bottom: 20px;
    }

    .span-li{
        margin-right: 3px;
        margin-bottom: 4px;
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
</style>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    <h4 class="modal-title" style="color: white">${albumName}</h4>
</div>
<div class="col-md-12 line1"></div>
<form action="" method="post" class="form-horizontal" id="defForm">
    <input id="galleriesId" value="${galleriesId}"type="hidden"/>
    <div class="col-md-12">
        <div class="col-md-3" style="margin-top: 20px;margin-bottom: 20px;">
            <button disabled id="upload_img" type="button" class="btn blue"><li class="fa fa-upload"/>Upload photo</button>&nbsp;&nbsp;
            <button  disabled type="button" class="btn red"><li class="fa fa-remove"/> Delect</button>
        </div>
    </div>
    <div id="div-img" class="page col-md-12">
        <c:forEach items="${medias}" var="m">
            <div class="div-photo">
                <div class="div-img" onmouseover="mouseOverImg(this)">
                    <div >
                    <span  onclick="javascript:;" class="span-left">
                        <input class="icheck" data-imgId="${m.id}" style=" margin-left: 3px; margin-top: 5px;" type="checkbox"/>
                    </span>
                        <span   class="span-right">
                        <li class="fa fa-remove span-li"></li>
                    </span>
                        <img src="${m.fileUrl}" style="width: 150px;height: 150px;"/>
                    </div>
                    <div style="width: 150px">
                        <p>${m.fileName}</p>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <div class="form-actions">
        <div class="row">
            <div class="col-md-12" style="text-align: center">
                <br>
                <button id="close" type="button" class="btn default" data-dismiss="modal">关闭</button>
                <br><br>
            </div>
        </div>
    </div>
</form>
