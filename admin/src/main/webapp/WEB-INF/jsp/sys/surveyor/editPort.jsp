<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .modal-open .select2-dropdown {
        z-index: 100600;
    }
</style>

<form id="editPortForm" class="form-horizontal" method="post" action="surveyor/editPortComplete" role="form">
    <div class="modal-header">
        <div class='bootstrap-dialog-header'>
            <div class='bootstrap-dialog-close-button'
                 style='display: block;'>
                <button class='close' data-dismiss='modal' aria-label='Close'>×</button>
            </div>
            <div class='bootstrap-dialog-title'>Available port</div>
        </div>
    </div>
    <div class="modal-body">
        <div class="container-fluid">
            <div class="form-group col-md-12">
                <div>
                    <input type="hidden" name="id" value="${param.id}">
                    <select id="select2-button-addons-single-input-group-sm"
                            name="surveyPort"
                            class="form-control js-data-example-ajax" multiple>
                        <c:forEach items="${portList}" var="port">
                            <option value="${port.id}"
                                    selected="selected">${port.portEn},${port.countryCode}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" id="close-btn" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary" onclick="submitForm()">保存</button>
    </div>
</form>
<script>

    function submitForm() {
        if (check()) {
            $("#editPortForm").ajaxSubmit({
                complete: function () {
                    $("#editPortForm #close-btn").click();
                    refreshTable();
                }
            })
        }
    }

    function check() {
        var value = $("#select2-button-addons-single-input-group-sm").val();
        if (value == null || value == "") {
            $("#select2-button-addons-single-input-group-sm").tips({
                side: 1,
                msg: "cannot be empty",
                bg: '#FF5080',
                time: 3,
            });
            return false;
        }
        return true;
    }


    var PortMultiSelect = function () {
        var handleDemo = function () {
            $.fn.select2.defaults.set("theme", "bootstrap");
            function formatRepo(repo) {
                if (repo.loading) return repo.text;
                var markup = repo.portEn + "," + repo.countryCode;

                return markup;
            }

            function formatRepoSelection(repo) {
                if (repo.text == "" || repo.text == null) {
                    return repo.portEn + "," + repo.countryCode;
                }
                return repo.text;
            }

            $(".js-data-example-ajax").select2({
                width: "off",
                ajax: {
                    url: "port/searchList",
                    dataType: 'json',
                    data: function (params) {
                        return {
                            keyword: params.term,
                        };
                    },
                    processResults: function (data, page) {
                        return {
                            results: data.list
                        };
                    },
                    cache: true
                },
                escapeMarkup: function (markup) {
                    return markup;
                },
                minimumInputLength: 1,
                templateResult: formatRepo,
                templateSelection: formatRepoSelection
            });
            $(".select2, .select2-multiple, .select2-allow-clear, .js-data-example-ajax").on("select2:open", function () {
                if ($(this).parents("[class*='has-']").length) {
                    var classNames = $(this).parents("[class*='has-']")[0].className.split(/\s+/);
                    for (var i = 0; i < classNames.length; ++i) {
                        if (classNames[i].match("has-")) {
                            $("body > .select2-container").addClass(classNames[i]);
                        }
                    }
                }
            });
        }
        return {
            init: function () {
                handleDemo();
            }
        };
    }();

    if (App.isAngularJsApp() === false) {
        jQuery(document).ready(function () {
            PortMultiSelect.init();
        });
    }
</script>