<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="tab-pane fade" id="step2">
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
                                <div class="timeline-icon">
                                    <div class="timeline-content">agency</div>
                                </div>
                            </div>
                            <div class="margin-bottom-40"></div>
                            <div class="timeline-badge">
                                <div class="timeline-icon">
                                    <div class="timeline-content">public</div>
                                </div>
                            </div>
                            <div class="margin-bottom-40"></div>
                            <div class="timeline-badge">
                                <div class="timeline-icon">
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
                        Data & Location
                    </div>
                </div>
                <div class="portlet-body form">
                    <form role="form" class="form-horizontal">
                        <div class="form-body">
                            <div class="row">
                                <div class="form-group form-md-line-input col-md-12">
                                    <label class="col-md-3 control-label">Date From</label>
                                    <div class="input-group col-md-6">
                                        <input type="text" class="form-control date-picker" name="startDate">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group form-md-line-input col-md-12">
                                    <label class="col-md-3 control-label">Date To</label>
                                    <div class="input-group col-md-6">
                                        <input type="text" class="form-control date-picker" name="endDate">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group form-md-line-input col-md-12">
                                    <label class="col-md-3 control-label">Location</label>
                                    <div class="input-group col-md-6">
                                        <input type="text" class="form-control" name="location">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-actions right">
                            <a data-toggle="tab" href="#step1"
                               class="btn default btn-back">Back</a>
                            <a data-toggle="tab" href="#step3"
                               class="btn default">Next</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>