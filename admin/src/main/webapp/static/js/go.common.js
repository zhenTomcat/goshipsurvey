//获得选中项
function getCheckboxItem(checkBoxName) {
    var allSel = "";
    var ids = $("input[name='" + checkBoxName + "']");

    $(ids).each(function (i) {
        if (this.disabled == false) {
            if (this.checked) {
                if (allSel == "")
                    allSel = this.value;
                else
                    allSel = allSel + "," + this.value;
            }
        }
    });
    return allSel;
}
function drawICheck(cId, oName) {
    var cCheck = $('#' + cId);
    var oChecks = $('.table input[name="' + oName + '"]');

    // Enable iCheck plugin for checkboxes
    // iCheck for checkbox and radio inputs
    cCheck.iCheck({
        checkboxClass: 'icheckbox_minimal-blue my-check',
        increaseArea: '20%' // optional
    });

    oChecks.iCheck({
        checkboxClass: 'icheckbox_minimal-blue',
        radioClass: 'icheckbox_minimal-blue'
    });

    cCheck.on('ifChanged', function (event) {
        if ($(this).is(':checked')) {
            oChecks.iCheck("check");
        } else {
            oChecks.iCheck("uncheck");
        }

    });
}
function initSearchForm(others, placeholderText) {
    others = others || "";
    placeholderText = placeholderText || "关键字搜索";
    $(".table-toolbar .row")
        .append(
            others
            + '<div class="col-md-3">'
            + '<div class="input-group input-group-sm input-adjust">'
            + '<input type="text" placeholder="' + placeholderText + '" name="keyword" id="keyword" class="form-control">'
            + '<span class="input-group-btn">'
            + '<button type="button" class="btn btn-primary btn-flat" id="mybtn" onclick="javacript:refreshTable(1);"><i class="fa fa-search"></i> 搜索</button>'
            + '</span>' + '</div>')
            + '</div>';
    $("#defTool").keydown(function (e) {
        var curKey = e.which;
        if (curKey == 13) {
            $("#mybtn").click();
            return false;
        }
    });
}

htmlTpl = {
    dropdown: {
        prefix: '<div class="btn-group">'
        + '<a title="更多操作" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-lg fa-cog"></i></a>'
        + '<ul role="menu" class="dropdown-menu">',
        suffix: '</ul></div>',
    }
};


// 对Date的扩展，将 Date 转化为指定格式的String
// 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符，
// 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字)
// 例子：
// (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423
// (new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18
Date.prototype.Format = function (fmt) { //author: meizz
    var o = {
        "M+": this.getMonth() + 1, //月份
        "d+": this.getDate(), //日
        "h+": this.getHours(), //小时
        "m+": this.getMinutes(), //分
        "s+": this.getSeconds(), //秒
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度
        "S": this.getMilliseconds() //毫秒
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}

