<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="tab-pane fade active in" id="step1">
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
                                <div class="timeline-icon">
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
                        Ship details
                    </div>
                    <div class="tools col-md-6">
                        <div class="form-group form-md-line-input col-md-12"
                             style="margin-bottom: 4px;margin-top: -20px;color: white">
                            <label class="col-md-5 control-label" style="color: white">Search ship</label>
                            <div class="input-group col-md-7">
                                <input type="text" class="form-control search-input" placeholder="ship name / imo"
                                       style="padding: 0;height: 30px;color: white;">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="portlet-body form">
                    <div class="form-body">
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Ship name</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">LOA(m)</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">IMO</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Beam(m)</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Type</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Dwt(ton)</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">ex.Name</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Call Sign</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Class</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">GT</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Flag</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">LDT(ton)</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Build Year</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Draft(m)</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group form-md-line-input col-md-6">
                                <label class="col-md-3 control-label">Builder</label>
                                <div class="input-group col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions right">
                        <a data-toggle="tab" href="#step2"
                           class="btn default">Next</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>