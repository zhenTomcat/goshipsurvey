<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="tab-pane fade" id="step4">
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
                        Public
                    </div>
                </div>
                <div class="portlet-body form">
                    <form role="form" class="form-horizontal">
                        <div class="form-body">
                            <div class="row">
                                <div class=" col-md-6">
                                    <div style="margin: 10px 0px 0 50px;">
                                        Notice:
                                        <hr style="margin: 10px 0;">
                                        Please kindly check all the details provided by your good company, we shall
                                        immediately send all the information (except the local agent details as well as
                                        the LOI) to the relevant surveyors and/or the survey companies. Please closely
                                        monitor the the status of your order on the platform. Once the order is
                                        accepted, the platform is to send you the email in the first place to remind you
                                        to follow up with the selection of the surveyor.
                                        <hr style="margin: 10px 0;">
                                        If you simply have no time to make such selection, the platform is then to make
                                        the selection on your behalf in accordance with the following listed criteria
                                        (the selection is automatically made by the platform 7 days prior to the
                                        inspection)
                                        <div class="md-radio-inline">
                                            <div class="md-radio">
                                                <input id="radio1" type="radio" name="radio" class="md-radiobtn">
                                                <label for="radio1">
                                                    <span class="inc"></span>
                                                    <span class="check"></span>
                                                    <span class="box"></span>
                                                    Low price preferred
                                                </label>
                                            </div>
                                            <div class="md-radio">
                                                <input id="radio2" type="radio" name="radio" class="md-radiobtn">
                                                <label for="radio2">
                                                    <span class="inc"></span>
                                                    <span class="check"></span>
                                                    <span class="box"></span>
                                                    High rating preferred
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6" style="padding:50px 0 0 100px;">
                                    <div style="margin: auto">
                                        Please click here to upload once you finish off checking.
                                        <button type="button" onclick="public_to_net(this)" class="btn blue"
                                                data-target="navTab"
                                                id="publicBtn"
                                                style="display: block;margin-top: 20px;width: 200px">PUBLIC TO NET
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-actions right">
                            <a data-toggle="tab" href="#step3"
                               class="btn default btn-back">Back</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function public_to_net(obj) {
        var btn = $(obj);
        btn.attr("disabled", true);
        if (check()) {
            $("#add_purchase_quotation_form").ajaxSubmit({
                success: function (data) {
                    if (data.success) {
                        swal({type: "success", title: "Success!"});
                        $("a[href='prepurchase/op/quotation']").click();
                    } else {
                        swal({type: "warning", title: "Error!"});
                        btn.attr("disabled", false);
                    }
                },
                error: function () {
                    swal({type: "warning", title: "Error!"});
                    btn.prop("disabled", false);
                }
            })
        } else {
            btn.attr("disabled", false);
        }
    }

    function check() {
        return true;
    }
</script>