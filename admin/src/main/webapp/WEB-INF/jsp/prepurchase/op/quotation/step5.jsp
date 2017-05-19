<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="tab-pane fade" id="step5">
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
                                <div class="timeline-icon selected">
                                    <div class="timeline-content">agency</div>
                                </div>
                            </div>
                            <div class="margin-bottom-40"></div>
                            <div class="timeline-badge">
                                <div class="timeline-icon selected">
                                    <div class="timeline-content">public</div>
                                </div>
                            </div>
                            <div class="margin-bottom-40"></div>
                            <div class="timeline-badge">
                                <div class="timeline-icon selected">
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
                        Price & choose surveyor
                    </div>
                </div>
                <div class="portlet-body form">
                    <div class="form-body">
                        <div class="row">
                            <table class="table table-striped table-bordered table-hover  ">
                                <thead>
                                <tr>
                                    <th>Apply company</th>
                                    <th>Company detail</th>
                                    <th>Location</th>
                                    <th>Surveyor</th>
                                    <th>Surveyor CV</th>
                                    <th>Past evaluation</th>
                                    <th>Quotation</th>
                                    <th>Choose</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th>Ao Yang Company</th>
                                    <th><a>View</a></th>
                                    <th>Shanghai</th>
                                    <th>David</th>
                                    <th><a>View</a></th>
                                    <th>
                                        <div class="rating">
                                            <div class="op-point-div" style="width: 100px;margin: auto">
                                                <input type="radio" value="5" checked>
                                                <label><i class="fa fa-star"></i></label>
                                                <input type="radio" value="4">
                                                <label><i class="fa fa-star"></i></label>
                                                <input type="radio" value="3">
                                                <label><i class="fa fa-star"></i></label>
                                                <input type="radio" value="2">
                                                <label><i class="fa fa-star"></i></label>
                                                <input type="radio" value="1">
                                                <label><i class="fa fa-star"></i></label>
                                            </div>
                                        </div>
                                    </th>
                                    <th>$3000</th>
                                    <th><a class="btn green btn-circle">confirm</a></th>
                                </tr>
                                <tr>
                                    <th>Duo Yang Company</th>
                                    <th><a>View</a></th>
                                    <th>Shanghai</th>
                                    <th>Peter</th>
                                    <th><a>View</a></th>
                                    <th>
                                        <div class="rating">
                                            <div class="op-point-div" style="width: 100px;margin: auto">
                                                <input type="radio" value="5">
                                                <label><i class="fa fa-star"></i></label>
                                                <input type="radio" value="4" checked>
                                                <label><i class="fa fa-star"></i></label>
                                                <input type="radio" value="3">
                                                <label><i class="fa fa-star"></i></label>
                                                <input type="radio" value="2">
                                                <label><i class="fa fa-star"></i></label>
                                                <input type="radio" value="1">
                                                <label><i class="fa fa-star"></i></label>
                                            </div>
                                        </div>
                                    </th>
                                    <th>$2800</th>
                                    <th><a class="btn green btn-circle">confirm</a></th>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="form-actions right">
                        <a data-toggle="tab" href="#step4"
                           class="btn default btn-back">Back</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>