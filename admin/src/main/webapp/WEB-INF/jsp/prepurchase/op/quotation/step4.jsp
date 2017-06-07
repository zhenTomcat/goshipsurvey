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
                                        请核对所有信息正确无误,我们会立刻将您填写的信息(除代理信息和LOI外)
                                        推送给相关验船师及验船公司,请密切注意平台信息变化.同时一旦有公司接
                                        单,平台会在第一时间发邮件提醒贵公司,请贵公司及时操作,选择您需要的验船师.
                                        <hr style="margin: 10px 0;">
                                        如果您没有时间选择,也可以让本平台按照如下原则代为选择(平台将在验船开始前7天自动选择)
                                        <div class="md-radio-inline">
                                            <div class="md-radio">
                                                <input id="radio1" type="radio" name="radio" class="md-radiobtn">
                                                <label for="radio1">
                                                    <span class="inc"></span>
                                                    <span class="check"></span>
                                                    <span class="box"></span>
                                                    价格低优先
                                                </label>
                                            </div>
                                            <div class="md-radio">
                                                <input id="radio2" type="radio" name="radio" class="md-radiobtn">
                                                <label for="radio2">
                                                    <span class="inc"></span>
                                                    <span class="check"></span>
                                                    <span class="box"></span>
                                                    评价高优先
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6" style="padding:50px 0 0 100px;">
                                    <div style="margin: auto">
                                        如果已核对完毕,请点这里发布到网上
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
                        alert("success");
                        $("a[href='prepurchase/op/quotation']").click();
                    } else {
                        alert("failure");
                        btn.attr("disabled", false);
                    }
                },
                error: function () {
                    alert("error");
                    btn.prop("disabled", false);
                }
            })
        }else{
            btn.attr("disabled", false);
        }
    }

    function check() {
        return true;
    }
</script>