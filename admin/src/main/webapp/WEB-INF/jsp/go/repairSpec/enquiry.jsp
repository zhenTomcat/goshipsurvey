<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<go:navigater path="account"></go:navigater>
<form class="form-horizontal" action="repairProg/enquiry" method="post" enctype="multipart/form-data"
      id="defForm">
    <div class="profile-content">
        <div class="row">
            <div class="col-md-12">
                <div class="portlet light bordered">
                    <div class="portlet-title">
                        <div class="caption caption-md">
                            <i class="fa fa-user"></i>
                            <span class="caption-subject font-blue-madison bold uppercase"> 工程单询价</span>
                        </div>
                    </div>
                    <div class="portlet-body form">
                        <div class="form-body">
                            <div class="form-group form-md-line-input">
                                <label class="col-md-1 control-label">发件人</label>
                                <div class="col-md-4">
                                    <div class="input-icon right">
                                        <input type="email" class="form-control" placeholder="Email">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group form-md-line-input">
                                <label class="col-md-1 control-label">收件人</label>
                                <div class="col-md-4">
                                    <div class="input-icon right">
                                        <input type="password" class="form-control" placeholder="Password">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group form-md-line-input">
                                <label class="col-md-1 control-label">抄送</label>
                                <div class="col-md-4">
                                    <div class="input-icon right">
                                        <input type="password" class="form-control" placeholder="Password">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group form-md-line-input">
                                <div class="col-md-1"><input type="file" name="files" multiple></div>
                            </div>

                            <div class="form-group form-md-line-input">
                                <label class="col-md-6 control-label" style="text-align: left">帕卡德船务公司_致远一号_XJD012011-FJSL_维修工程询价</label>
                            </div>
                            <div class="form-group last">
                                <div class="col-md-12">
                                    <textarea name="summernote" id="summernote_1"></textarea>
                                </div>
                            </div>
                            <div class="form-actions">
                                <div class="btn-set pull-left">
                                    <button id="submit" type="button" class="btn green">发送</button>
                                    <button type="button" class="btn blue">放弃</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<script>
    var ComponentsEditors = function () {
        var handleSummernote = function () {
            $('#summernote_1').summernote({height: 300});
        }
        return {
            init: function () {
                handleSummernote();
            }
        };
    }();
    jQuery(document).ready(function () {
        ComponentsEditors.init();
    });

    $('#submit').on('click', function () {
        $("#defForm").ajaxSubmit({
            success: function (data) {
                if (data.success) {
                    alert("success");
                } else {
                    alert("false");
                }
            },
            error: function () {
                alert("error");
            }
        });
    })
</script>