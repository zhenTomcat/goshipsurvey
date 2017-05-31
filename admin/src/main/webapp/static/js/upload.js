//==========================

accessid = '';
accesskey = '';
host = '';
policyBase64 = '';
signature = '';
callbackbody = '';
filename = '';
key = '';
expire = 0;
g_object_name = '';
g_object_name_type = 'random_name';
now = timestamp = Date.parse(new Date()) / 1000;
/*原名称*/
nativeName = "";

function send_request() {
    var xmlhttp = null;
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    }
    else if (window.ActiveXObject) {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }

    if (xmlhttp != null) {
        serverUrl = 'oss/policy';
        xmlhttp.open("GET", serverUrl, false);
        xmlhttp.send(null);
        return xmlhttp.responseText
    }
    else {
        alert("Your browser does not support XMLHTTP.");
    }
}

function get_signature(domain) {
    //可以判断当前expire是否超过了当前时间,如果超过了当前时间,就重新取一下.3s 做为缓冲
    body = send_request(domain);
    var obj = eval("(" + body + ")");
    host = obj['host'];
    policyBase64 = obj['policy'];
    accessid = obj['accessid'];
    signature = obj['signature'];
    expire = parseInt(obj['expire']);
    callbackbody = obj['callback'];
    key = obj['dir'];
    return true;
}

function random_string(len) {
    len = len || 32;
    var chars = 'ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz2345678';
    var maxPos = chars.length;
    var pwd = '';
    for (i = 0; i < len; i++) {
        pwd += chars.charAt(Math.floor(Math.random() * maxPos));
    }
    return pwd;
}

function get_suffix(filename) {
    nativeName = filename;
    pos = filename.lastIndexOf('.');
    suffix = '';
    if (pos != -1) {
        suffix = filename.substring(pos)
    }
    return suffix;
}

function calculate_object_name(filename) {
    suffix = get_suffix(filename);
    g_object_name = key + random_string(10) + suffix
}

function set_upload_param(up, filename, ret, domain) {
    if (ret == false) {
        ret = get_signature(domain)
    }
    g_object_name = key;
    if (filename != '') {
        suffix = get_suffix(filename);
        calculate_object_name(filename)
    }
    new_multipart_params = {
        'key': g_object_name,
        'policy': policyBase64,
        'OSSAccessKeyId': accessid,
        'success_action_status': '200', //让服务端返回200,不然，默认会返回204
        'callback': callbackbody,
        'signature': signature
    };

    up.setOption({'url': host, 'multipart_params': new_multipart_params});

    up.start();
}


function initUploaders(buttonId, bucket, domain) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'http://oss.aliyuncs.com',
        filters: {
            mime_types: [ //只允许上传图片和zip,rar文件
                {title: "Image files", extensions: "jpg,gif,png,bmp,jpeg"},
                {title: "Zip files", extensions: "zip,rar"}
            ],
            max_file_size: '10mb', //最大只能上传10mb的文件
            prevent_duplicates: true //不允许选取重复文件
        },
        init: {
            FilesAdded: function (up) {
                set_upload_param(up, '', false, domain);
            },
            BeforeUpload: function (up, file) {
                set_upload_param(up, file.name, true, domain);
            },
            FileUploaded: function () {
                $("#" + buttonId).before('<div class="" onclick=""  style="float:left;position:relative;padding: 0px;margin-bottom: 5px;"><input name="images" type="hidden" value="' + g_object_name + '" >' +
                    '<span onclick="javascript:this.parentNode.remove();" class="glyphicon glyphicon-remove" style="background: rgba(0,0,0,.5);color:white;position:absolute;top:0px;right:5px;z-index: 999;"></span>' +
                    '<img src="http://' + bucket + '.img-cn-shanghai.aliyuncs.com/' + g_object_name + '?x-oss-process=image/resize,m_fill,h_100,w_100" ' +
                    'style="max-height: 100px;margin-right:5px;" onclick="" class="min-img" data-url="' + g_object_name + '" >' + '</div>');


            }
        }
    });
    uploader.init();
}


function initUploaders_logo(buttonId, bucket, domain, imgId, inputId) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'http://oss.aliyuncs.com',
        filters: {
            mime_types: [ //只允许上传图片和zip,rar文件
                {title: "Image files", extensions: "jpg,gif,png,bmp,jpeg"},
                {title: "Zip files", extensions: "zip,rar"}
            ],
            max_file_size: '10mb', //最大只能上传10mb的文件
            prevent_duplicates: true //不允许选取重复文件
        },
        init: {
            FilesAdded: function (up) {
                set_upload_param(up, '', false, domain);
            },
            BeforeUpload: function (up, file) {
                set_upload_param(up, file.name, true, domain);
            },
            FileUploaded: function () {
                $("#" + imgId).attr("src", "http://" + bucket + ".img-cn-shanghai.aliyuncs.com/" + g_object_name + "?x-oss-process=image/resize,m_fill,h_100,w_100");
                $("#" + inputId).val(g_object_name);
            }
        }
    });
    uploader.init();
}


function initUploaders_loi_without_sign(buttonId, bucket, domain) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'http://oss.aliyuncs.com',
        multi_selection: false,

        filters: {
            mime_types: [
                {title: "Text files", extensions: "pdf,doc,docx"}
            ],
            max_file_size: '10mb', //最大只能上传10mb的文件
            prevent_duplicates: true //不允许选取重复文件
        },
        init: {
            FilesAdded: function (up) {
                set_upload_param(up, '', false, domain);
            },
            BeforeUpload: function (up, file) {
                set_upload_param(up, file.name, true, domain);
            },
            FileUploaded: function () {
                var btn = $("#" + buttonId);
                var href = "http://" + bucket + ".oss-cn-shanghai.aliyuncs.com/" + g_object_name;
                var a = "<a class='btn btn-sm green' target='_blank' href='" + href + "'>DOWNLOAD</a>"
                btn.parent().find("input.blank-loi-url-input").attr("value", href);
                btn.parent().find(".view-loi").html(a);
            }
        }
    });
    uploader.init();
}

function initUploaders_ship_particulars(buttonId, bucket, domain) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'http://oss.aliyuncs.com',
        multi_selection: false,

        filters: {
            mime_types: [
                {title: "Text files", extensions: "pdf,doc,docx"}
            ],
            max_file_size: '10mb', //最大只能上传10mb的文件
            prevent_duplicates: true //不允许选取重复文件
        },
        init: {
            FilesAdded: function (up) {
                set_upload_param(up, '', false, domain);
            },
            BeforeUpload: function (up, file) {
                set_upload_param(up, file.name, true, domain);
            },
            FileUploaded: function () {
                var btn = $("#" + buttonId);
                var href = "http://" + bucket + ".oss-cn-shanghai.aliyuncs.com/" + g_object_name;
                var a = "<a class='btn btn-sm green' target='_blank' href='" + href + "'>DOWNLOAD</a>"
                btn.parent().find("input.ship-particulars-url-input").attr("value", href);
                btn.parent().find(".view-ship-particulars").html(a);
            }
        }
    });
    uploader.init();
}


function initUploaders_passprot_loi_report(buttonId, bucket, domain, type) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'http://oss.aliyuncs.com',
        multi_selection: false,

        filters: {
            mime_types: [
                {title: "Text files", extensions: "pdf,doc,docx"}
            ],
            max_file_size: '10mb', //最大只能上传10mb的文件
            prevent_duplicates: true //不允许选取重复文件
        },
        init: {
            FilesAdded: function (up) {
                set_upload_param(up, '', false, domain);
            },
            BeforeUpload: function (up, file) {
                set_upload_param(up, file.name, true, domain);
            },
            FileUploaded: function () {
                var btn = $("#" + buttonId);
                var href = "http://" + bucket + ".oss-cn-shanghai.aliyuncs.com/" + g_object_name;
                $.ajax({
                    url: "surveyor/surveyorInfo/editInfo",
                    type: "post",
                    data: {id: btn.attr("data-id"), type: type, url: href},
                    success: function (data) {
                        if (data.success) {
                            btn.siblings(".view-div").html("<a class='btn btn-sm green' target='_blank' href='" + href + "'>VIEW</a>");
                        } else {
                            btn.tips({
                                side: 1,
                                msg: "sorry failure...",
                                bg: '#FF5080',
                                time: 3,
                            });
                        }
                    },
                    error: function () {
                        btn.tips({
                            side: 1,
                            msg: "sorry error...",
                            bg: '#FF5080',
                            time: 3,
                        });
                    }
                })
            }
        }
    });
    uploader.init();
}


function initUploaders_head_img(buttonId, bucket, domain) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'http://oss.aliyuncs.com',
        multi_selection: false,
        filters: {
            mime_types: [ //只允许上传图片
                {title: "Image files", extensions: "jpg,gif,png,bmp,jpeg"},
            ],
            max_file_size: '10mb', //最大只能上传10mb的文件
            prevent_duplicates: true //不允许选取重复文件
        },
        init: {
            FilesAdded: function (up) {
                set_upload_param(up, '', false, domain);
            },
            BeforeUpload: function (up, file) {
                set_upload_param(up, file.name, true, domain);
            },
            FileUploaded: function () {
                var btn = $("#" + buttonId);
                var url = "http://" + bucket + ".oss-cn-shanghai.aliyuncs.com/" + g_object_name;
                $.ajax({
                    url: "surveyor/surveyorInfo/editHeadImg",
                    type: "post",
                    data: {url: url},
                    success: function (data) {
                        if (data.success) {
                            $("#head-img").attr("src", url);
                        } else {
                            btn.tips({
                                side: 1,
                                msg: "sorry failure...",
                                bg: '#FF5080',
                                time: 3,
                            });
                        }
                    },
                    error: function () {
                        btn.tips({
                            side: 1,
                            msg: "sorry error...",
                            bg: '#FF5080',
                            time: 3,
                        });
                    }
                })
            }
        }
    });
    uploader.init();
}

function initUploaders_attachment(buttonId, bucket, domain, obj, remove) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'http://oss.aliyuncs.com',
        filters: {
            mime_types: [ //上传pdf,txt和zip,rar文件
                {title: "Zip files", extensions: "zip,rar"},
                {title: "Text files", extensions: "txt,pdf"}
            ],
            max_file_size: '100mb', //最大只能上传10mb的文件
            prevent_duplicates: true //不允许选取重复文件
        },
        init: {
            FilesAdded: function (up) {
                set_upload_param(up, '', false, domain);
            },
            BeforeUpload: function (up, file) {
                set_upload_param(up, file.name, true, domain);
            },
            FileUploaded: function () {
                var html = '<a target="_blank" href="http://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '">' + nativeName + '</a>' +
                    '<input name="attachmentUrl" type="hidden" value="http://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '" >' +
                    '<input name="attachmentName" type="hidden" value="' + nativeName + '"/>';
                $(obj).parent().prev().html(html);
                var html1 = '<button onclick="clearTd(this)" type="button" style="color: red">Delete</button>';
                $(obj).parent().html(html1);
            }
        }
    })
}

function initUploaders_purchase_op_agency_loi(buttonId, bucket, domain) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'http://oss.aliyuncs.com',
        multi_selection: false,

        filters: {
            mime_types: [
                {title: "Text files", extensions: "pdf,doc,docx"}
            ],
            max_file_size: '10mb', //最大只能上传10mb的文件
            prevent_duplicates: true //不允许选取重复文件
        },
        init: {
            FilesAdded: function (up) {
                set_upload_param(up, '', false, domain);
            },
            BeforeUpload: function (up, file) {
                set_upload_param(up, file.name, true, domain);
            },
            FileUploaded: function () {
                var btn = $("#" + buttonId);
                var href = "http://" + bucket + ".oss-cn-shanghai.aliyuncs.com/" + g_object_name;
                btn.parent().find("input").attr("value", href);
                var a = btn.parent().find("a");
                a.attr("href", href);
                a.css("display", "inline-block");
            }
        }
    });
    uploader.init();
}

function initUploaders_img(buttonId, bucket, domain, divId) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'http://oss.aliyuncs.com',
        filters: {
            mime_types: [ //只允许上传图片和zip,rar文件
                {title: "Image files", extensions: "jpg,gif,png,bmp,jpeg"},
                {title: "Zip files", extensions: "zip,rar"}
            ],
            max_file_size: '10mb', //最大只能上传10mb的文件
            prevent_duplicates: false //不允许选取重复文件
        },
        init: {
            FilesAdded: function (up) {
                set_upload_param(up, '', false, domain);
            },
            BeforeUpload: function (up, file) {
                set_upload_param(up, file.name, true, domain);
            },
            FileUploaded: function () {
                $("#" + divId).append('<div class="div-photo">' +
                    '<div class="div-img" onmouseover="mouseOverImg(this)">' +//文件原名称
                    '<div><span  onclick="javascript:;" class="span-left">' +
                    '<input class="icheck" style=" margin-left: 3px; margin-top: 5px;" type="checkbox"/></span> ' +
                    ' <span onclick="javascript:removeImg(this);" class="span-right"> <li class="fa fa-remove span-li"></li> </span>' +
                    ' <img src="http://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '" style="width: 150px;height: 150px;"/></div>' +
                    '<div style="width: 150px"><input name="fileUrl" type="hidden" value="http://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '" >' +
                    '<input name="fileName" type="hidden" value="' + nativeName + '"/>' +
                    ' <p >' + nativeName + '</p></div></div></div>');
            }
        }
    });
    uploader.init();


}



