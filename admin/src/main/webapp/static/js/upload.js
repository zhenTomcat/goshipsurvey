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

/*function send_request() {
 $.ajax({
 url:'oss/policy',
 type:'GET',
 success:function(data){
 return data;
 alert("ok");
 },
 error:function(xhr,textStatus){
 alert("错误");
 }
 });
 }*/
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
function initUploaders_img(buttonId, bucket, domain, divId,imgNum) {
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
                $("#"+divId).before('<div class="col-md-12" style="margin-top: 20px;border: 1px dashed #337ab7;padding: 0px">' +
                    '<input name="fileName" type="hidden" value="'+nativeName+'"/> '+//文件原名称
                    '<input name="fileType" type="hidden" value="0">'+
                    '<input name="oss" type="hidden" value="http://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '"/> '+
                    '<span onclick="removeImg(this)" class="glyphicon glyphicon-remove" style="background: rgba(0,0,0,.5);color:white;position:absolute;top:0px;right:0px;z-index: 999;"></span>' +
                    '<a target="_blank" href="http://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '">' +
                    '<img style="width:100%;height: 180px" src="http://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '"/></a></div>');
                var j=$("#"+imgNum).find("img").length;
                if(j==4){
                    $("#"+divId).hide();
                }
                $("#num").val(j);


            }
        }
    });
    uploader.init();
}

function initUploaders_attachment(buttonId, bucket, domain, tableId, trId) {
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
                var tr = '<tr>' +
                    '<td style="width: 80%">' + nativeName + '' +
                    '<a target="_blank" href="http://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '">' + nativeName + '</a>' +
                    '</td><td><button onclick="delTr(this)">删除</button>' +
                    '<input name="fileDiskName" type="hidden" value="' + g_object_name + '" >' +//文件存储磁盘的名称
                    '<input name="fileName" type="hidden" value="' + nativeName + '"/> ' +//文件原名称
                    '<input name="fileType" type="hidden" value="2"/>' +
                    '<input name="oss" type="hidden" value="http://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '"/> ' +
                    '</td></tr>';

                $("#" + trId).attr("rowspan", parseInt($("#" + trId).attr("rowspan")) + 1);
                $("#" + tableId + " tbody tr:last").after(tr);
            }
        }
    });
    uploader.init();
}

function initUploaders_report_img(buttonId, bucket, domain, imgId, divId) {
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
                $("#" + divId).before('<div style="float:left;position:relative;margin: 10px">' +
                    '<input name="fileDiskName" type="hidden" value="' + g_object_name + '" >' +//文件存储磁盘的名称
                    '<input name="fileName" type="hidden" value="' + nativeName + '"/> ' +//文件原名称
                    '<input name="fileType" type="hidden" value="0">' +
                    '<input name="oss" type="hidden" value="http://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '"/> ' +
                    '<span onclick="javascript:this.parentNode.remove();" class="glyphicon glyphicon-remove" style="background: rgba(0,0,0,.5);color:white;position:absolute;top:0px;right:4px;z-index: 999;"></span>' +
                    ' <a href="http://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '" target="_blank"><img src="http://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '" ' +
                    'style="width: 100px;height: 100px;"></a>' + '</div>');
            }
        }
    });
    uploader.init();
}

