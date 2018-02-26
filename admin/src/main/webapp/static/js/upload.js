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

ossObj=null;

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
    if(ossObj==null){
        body = send_request(domain);
        ossObj = eval("(" + body + ")");
        host = ossObj['host'];
        policyBase64 = ossObj['policy'];
        accessid = ossObj['accessid'];
        signature = ossObj['signature'];
        expire = parseInt(ossObj['expire']);
        callbackbody = ossObj['callback'];
        key = ossObj['dir'];
    }
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
        'signature': signature,
       /* 'Content-Disposition':"attachment;filename="+nativeName+";filename*=UTF-8''"+nativeName*/
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
        url: 'https://oss.aliyuncs.com',
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
                    '<img src="https://' + bucket + '.img-cn-shanghai.aliyuncs.com/' + g_object_name + '?x-oss-process=image/resize,m_fill,h_100,w_100" ' +
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
        url: 'https://oss.aliyuncs.com',
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
                $("#" + imgId).attr("src", "https://" + bucket + ".img-cn-shanghai.aliyuncs.com/" + g_object_name + "?x-oss-process=image/resize,m_fill,h_100,w_100");
                $("#" + inputId).val(g_object_name);
            }
        }
    });
    uploader.init();
}


function initUploaders_quotation_oil_photo(buttonId, bucket, domain) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'https://oss.aliyuncs.com',
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
                var btn = $("#" + buttonId);
                var fileDiv = btn.siblings(".upload-file-div");
                fileDiv.css("display", "none");
                var href = "https://" + bucket + ".oss-cn-shanghai.aliyuncs.com/" + g_object_name;
                fileDiv.find("input").val(href);
                fileDiv.find("a").attr("href", href);
                fileDiv.css("display", "inline-block");
            }
        }
    });
    uploader.init();
}

function initUploaders_loi_without_sign_and_ship_particulars(buttonId, bucket, domain) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'https://oss.aliyuncs.com',
        multi_selection: false,

        filters: {
            mime_types: [
                {title: "Text files", extensions: "pdf,doc,docx"}
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
                var btn = $("#" + buttonId);
                var fileDiv = btn.siblings(".upload-file-div");
                fileDiv.css("display", "none");
                var href = "https://" + bucket + ".oss-cn-shanghai.aliyuncs.com/" + g_object_name;
                fileDiv.find("input").val(href);
                fileDiv.find("a").attr("href", href);
                fileDiv.css("display", "inline-block");
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
        url: 'https://oss.aliyuncs.com',
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
                var href = "https://" + bucket + ".oss-cn-shanghai.aliyuncs.com/" + g_object_name;
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
        url: 'https://oss.aliyuncs.com',
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
                var href = "https://" + bucket + ".oss-cn-shanghai.aliyuncs.com/" + g_object_name;
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
        url: 'https://oss.aliyuncs.com',
        multi_selection: false,

        filters: {
            mime_types: [
                {title: "Text files", extensions: "pdf,doc,docx"},
                {title: "Image files", extensions: "jpg,gif,png,bmp,jpeg"}
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
                var href = "https://" + bucket + ".oss-cn-shanghai.aliyuncs.com/" + g_object_name;
                $.ajax({
                    url: "surveyor/inspection/editUrl",
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
        url: 'https://oss.aliyuncs.com',
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
                var url = "https://" + bucket + ".oss-cn-shanghai.aliyuncs.com/" + g_object_name;
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

function initUploaders_attachment(buttonId, bucket, domain) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'https://oss.aliyuncs.com',
        filters: {
            mime_types: [ //上传pdf,txt和zip,rar文件
                {title: "Image files", extensions: "jpg,gif,png,bmp,jpeg"},
                {title: "Text files", extensions: "pdf"}
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
                var count=$("#"+buttonId).attr("data-count");
                var reportId=$("#"+buttonId).attr("data-reportId");
                var documentId=$("#"+buttonId).attr("data-documentId");
                var html = '<a target="_blank" href="https://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '">' + nativeName + '</a>' +
                    '<input type="hidden" name="documents[' + count + '].id" value="' + documentId + '">' +
                    '<input type="hidden" name="documents[' + count + '].inspectionReportId" value="' + reportId + '">' +
                    '<input name="documents[' + count + '].attachmentUrl" type="hidden" value="https://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '" >' +
                    '<input name="documents[' + count + '].attachmentName" type="hidden" value="' + nativeName + '"/>';
                $("#"+buttonId).parent().prev().html(html);
                var html1 = '<button class="btn red" onclick="clearTd(this,' + count + ',' + reportId + ',' + documentId + ')" type="button" >Delete</button>';
                $("#"+buttonId).parent().html(html1);
            }
        }
    });
    uploader.init();
}

function initUploaders_purchase_op_agency_loi(buttonId, bucket, domain) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'https://oss.aliyuncs.com',
        multi_selection: false,

        filters: {
            mime_types: [
                {title: "Text files", extensions: "pdf,doc,docx"},
                {title: "Image files", extensions: "jpg,gif,png,bmp,jpeg"},
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
                var btn = $("#" + buttonId);
                var href = "https://" + bucket + ".oss-cn-shanghai.aliyuncs.com/" + g_object_name;
                var fileDiv = btn.siblings(".upload-file-div");
                fileDiv.css("display", "none");
                fileDiv.find("input").val(href);
                fileDiv.find("a").attr("href", href);
                fileDiv.css("display", "inline-block");
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
        url: 'https://oss.aliyuncs.com',
        filters: {
            mime_types: [ //只允许上传图片和zip,rar文件
                {title: "Image files", extensions: "jpg,gif,png,bmp,jpeg"},
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
                var imgName1 = g_object_name;
                var imgName2 = nativeName;
                var galleriesId=$("#"+buttonId).attr("data-galleriesId")
                $.ajax({
                    url: "prepurchase/surveyor/addImg",
                    type: "GET",
                    dataType: "json",
                    data: {
                        fileName: nativeName,
                        fileUrl: "https://" + bucket + ".oss-cn-shanghai.aliyuncs.com/" + g_object_name,
                        galleriesId: galleriesId

                    },
                    success: function (data) {
                        if (data.mes) {
                            $("#" + divId).append('<div class="div-photo">' +
                                '<div class="div-img" onmouseover="mouseOverImg(this)">' +//文件原名称
                                '<div><span  onclick="javascript:;" class="span-left">' +
                                '<input class="icheck" data-imgId="" style=" margin-left: 3px; margin-top: 5px;" type="checkbox"/></span> ' +
                                ' <span onclick="javascript:removeImg(this);" class="span-right"> <li class="fa fa-trash-o span-li"></li> </span>' +
                                ' <a href="https://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + imgName1 + '"> <img src="https://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + imgName1 + '" style="width: 150px;height: 150px;"/></a></div>' +
                                '<div style="width: 150px"><input name="fileUrl" type="hidden" value="https://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + imgName1 + '" >' +
                                ' <p >' + imgName2 + '</p></div></div></div>');

                            $("#" + "album" + galleriesId).html("(" + data.number + ")");
                        }
                    },
                    error: function () {

                    }
                });
            }
        }
    });
    uploader.init();
}


function initUploaders_surveyor_head_img(buttonId, bucket, domain) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'https://oss.aliyuncs.com',
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
                var url = "https://" + bucket + ".oss-cn-shanghai.aliyuncs.com/" + g_object_name;
                $("#head-img").attr("src", url);
                $("#portraitUrl").val(url);
            }
        }
    });
    uploader.init();
}

function initUploaders_surveyor_loi(buttonId, bucket, domain, obj) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'https://oss.aliyuncs.com',
        filters: {
            mime_types: [ //上传pdf,txt和zip,rar文件
                {title: "Image files", extensions: "jpg,gif,png,bmp,jpeg"},
                {title: "Text files", extensions: "doc,docx,pdf"}
            ],
            max_file_size: '100mb', //最大只能上传100mb的文件
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
                var html = '<a target="_blank" href="https://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '">' + nativeName + '</a>' +
                    '<input type="hidden" name="loi" value="' + nativeName + '">' +
                    '<input type="hidden" name="loiUrl" value="https://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '">';
                $(obj).parent().prev().html(html);
            }
        }
    });
    uploader.init();
}

function initUploaders_surveyor_passport(buttonId, bucket, domain, obj) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'https://oss.aliyuncs.com',
        filters: {
            mime_types: [ //上传pdf,txt和zip,rar文件
                {title: "Image files", extensions: "jpg,gif,png,bmp,jpeg"},
                {title: "Text files", extensions: "doc,docx,pdf"}
            ],
            max_file_size: '100mb', //最大只能上传100mb的文件
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
                var html = '<a target="_blank" href="https://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '">' + nativeName + '</a>' +
                    '<input type="hidden" name="passport" value="' + nativeName + '">' +
                    '<input type="hidden" name="passportUrl" value="https://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '">';
                $(obj).parent().prev().html(html);
            }
        }
    });
    uploader.init();
}


function initUploaders_report_grade(buttonId, bucket, domain, gradeId) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'https://oss.aliyuncs.com',
        filters: {
            mime_types: [ //上传pdf,txt和zip,rar文件
                {title: "Image files", extensions: "jpg,gif,png,bmp,jpeg"},
            ],
            max_file_size: '100mb', //最大只能上传100mb的文件
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
                $.ajax({
                    url: "prepurchase/surveyor/reportEditGrade",
                    type: "GET",
                    dataType: "json",
                    data: {
                        fileName: nativeName,
                        sitePhoto: "https://" + bucket + ".oss-cn-shanghai.aliyuncs.com/" + g_object_name,
                        id: gradeId

                    },
                    success: function (data) {
                        if (data.mes) {
                            var html = '<a target="_blank" href="https://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '">' + nativeName + '</a>';
                            $("#" + buttonId).parent().prev().html(html);
                            $("#" + buttonId).parent().html('<button onclick="removeGrade(this,' + gradeId + ')" type="button" class="btn red">Delete</button>');

                            $("#album" + parseInt(data.totalGrades[0])).html('(' + parseInt(data.totalGrades[1]) + ')');

                            console.log(parseInt(data.totalGrades[0]));
                            console.log(parseInt(data.totalGrades[1]));
                        }
                    },
                    error: function () {

                    }
                });
            }
        }
    });
    uploader.init();
}

function initUploaders_ship_img(buttonId, bucket, domain) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'https://oss.aliyuncs.com',
        filters: {
            mime_types: [ //只允许上传图片和zip,rar文件
                {title: "Image files", extensions: "jpg,gif,png,bmp,jpeg"}
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

                var html='<div onmouseover="mouseOverShipImg(this)">'+
                        '<button onclick="javascript:removeShipImg(this);" style="width:30px;display:none;background: rgb(0, 0, 0);color:white;position:absolute;top:0px;right:15px;z-index: 999;">'+
                        '<li class="li-right fa fa-trash-o"></li></button>'+
                        '<img src="https://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '" style="width: 100%;height: 250px"/> '+
                        '<input value="https://' + bucket + '.oss-cn-shanghai.aliyuncs.com/' + g_object_name + '" name="shipImg" type="hidden"></div>';
                $("#"+buttonId).parent().html(html);
            }
        }
    });
    uploader.init();
}

function initUploaders_sitePicture(buttonId, bucket, domain) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'https://oss.aliyuncs.com',
        filters: {
            //max_file_size: '1024mb', //最大只能上传10mb的文件
            prevent_duplicates: true //不允许选取重复文件
        },
        init: {
            FilesAdded: function (up,files) {
                set_upload_param(up, '', false, domain);
                plupload.each(files, function(file) {
                    var html= '<div id="' + file.id + '">' + file.name + ' (' + plupload.formatSize(file.size) + ')<b></b>'
                        +'<div class="progress"><div class="progress-bar" style="width: 0%"></div></div>';
                    $("#"+buttonId).closest("div").next().html(html);
                });
            },
            BeforeUpload: function (up, file) {
                set_upload_param(up, file.name, true, domain);
            },
            UploadProgress: function(up, file) {
                var d = document.getElementById(file.id);
                d.getElementsByTagName('b')[0].innerHTML = '<span>' + file.percent + "%</span>";

                var prog = d.getElementsByTagName('div')[0];
                var progBar = prog.getElementsByTagName('div')[0]
                progBar.style.width= 2*file.percent+'px';
                progBar.setAttribute('aria-valuenow', file.percent);
            },
            FileUploaded: function () {
                var ossUrl = "https://shipinfo.oss-cn-shanghai.aliyuncs.com/"+g_object_name;
                var fileName = nativeName;
                var html='<input name="sitePictureName" value="'+fileName+'" type="hidden"/>' +
                    '<input name="sitePictureOss" value="'+ossUrl+'" type="hidden"/>';
                var m =$("#"+buttonId).after(html);
            }
        }
    });
    uploader.init();
}

function initUploaders_shipinfo(buttonId, bucket, domain) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'https://oss.aliyuncs.com',
        filters: {
            mime_types: [ //只允许上传图片和zip,rar文件
                {title: "Image files", extensions: "jpg,gif,png,bmp,jpeg"}
            ],
            //max_file_size: '1024mb', //最大只能上传10mb的文件
            prevent_duplicates: true //不允许选取重复文件
        },
        init: {
            FilesAdded: function (up,files) {
                set_upload_param(up, '', false, domain);
                plupload.each(files, function(file) {
                    var html= '<div id="' + file.id + '">' + file.name + ' (' + plupload.formatSize(file.size) + ')<b></b>'
                        +'<div class="progress"><div class="progress-bar" style="width: 0%"></div></div>';
                    $("#"+buttonId).closest("div").next().html(html);
                });
            },
            BeforeUpload: function (up, file) {
                set_upload_param(up, file.name, true, domain);
            },
            UploadProgress: function(up, file) {
                var d = document.getElementById(file.id);
                d.getElementsByTagName('b')[0].innerHTML = '<span>' + file.percent + "%</span>";

                var prog = d.getElementsByTagName('div')[0];
                var progBar = prog.getElementsByTagName('div')[0]
                progBar.style.width= 2*file.percent+'px';
                progBar.setAttribute('aria-valuenow', file.percent);
            },
            FileUploaded: function () {
                 var ossUrl = "https://shipinfo.oss-cn-shanghai.aliyuncs.com/"+g_object_name;
                 var fileName = nativeName;
                 var html='<input name="shipInfoName" value="'+fileName+'" type="hidden"/>' +
                           '<input name="shipInfoOss" value="'+ossUrl+'" type="hidden"/>';
                 var m =$("#"+buttonId).after(html);
            }
        }
    });
    uploader.init();
}

function initUploaders_report(buttonId, bucket, domain) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'https://oss.aliyuncs.com',
        filters: {
            mime_types: [
                {title: "Text files", extensions: "pdf,doc,docx"}
            ],
            //max_file_size: '1024mb', //最大只能上传10mb的文件
            prevent_duplicates: true //不允许选取重复文件
        },
        init: {
            FilesAdded: function (up,files) {
                set_upload_param(up, '', false, domain);
                plupload.each(files, function(file) {
                    var html= '<div id="' + file.id + '">' + file.name + ' (' + plupload.formatSize(file.size) + ')<b></b>'
                        +'<div class="progress"><div class="progress-bar" style="width: 0%"></div></div>';
                    $("#"+buttonId).closest("div").next().html(html);
                });
            },
            BeforeUpload: function (up, file) {
                set_upload_param(up, file.name, true, domain);
            },
            UploadProgress: function(up, file) {
                var d = document.getElementById(file.id);
                d.getElementsByTagName('b')[0].innerHTML = '<span>' + file.percent + "%</span>";

                var prog = d.getElementsByTagName('div')[0];
                var progBar = prog.getElementsByTagName('div')[0]
                progBar.style.width= 2*file.percent+'px';
                progBar.setAttribute('aria-valuenow', file.percent);
            },
            FileUploaded: function () {
                var ossUrl = "https://shipinfo.oss-cn-shanghai.aliyuncs.com/"+g_object_name;
                var fileName = nativeName;
                var html='<input name="inspectReportName" value="'+fileName+'" type="hidden"/>' +
                    '<input name="inspectReportOss" value="'+ossUrl+'" type="hidden"/>';
                var m =$("#"+buttonId).after(html);
            }
        }
    });
    uploader.init();
}

function initUploaders_resume(buttonId, bucket, domain,flag) {
    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: buttonId,
        flash_swf_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.swf',
        silverlight_xap_url: domain + 'assets/plugins/plupload-2.1.2/js/Moxie.xap',
        url: 'https://oss.aliyuncs.com',
        filters: {
            mime_types: [
                {title: "Text files", extensions: "pdf,doc,docx"}
            ],
            //max_file_size: '1024mb', //最大只能上传10mb的文件
            prevent_duplicates: true //不允许选取重复文件
        },
        init: {
            FilesAdded: function (up,files) {
                set_upload_param(up, '', false, domain);
                plupload.each(files, function(file) {
                    var html= '<div id="' + file.id + '">' + file.name + ' (' + plupload.formatSize(file.size) + ')<b></b>'
                        +'<div class="progress"><div class="progress-bar" style="width: 0%"></div></div>';
                    $("#"+buttonId).closest("div").next().html(html);
                });
            },
            BeforeUpload: function (up, file) {
                set_upload_param(up, file.name, true, domain);
            },
            UploadProgress: function(up, file) {
                var d = document.getElementById(file.id);
                d.getElementsByTagName('b')[0].innerHTML = '<span>' + file.percent + "%</span>";

                var prog = d.getElementsByTagName('div')[0];
                var progBar = prog.getElementsByTagName('div')[0]
                progBar.style.width= 2*file.percent+'px';
                progBar.setAttribute('aria-valuenow', file.percent);
            },
            FileUploaded: function () {
                var ossUrl = "https://shipinfo.oss-cn-shanghai.aliyuncs.com/"+g_object_name;
                var fileName = nativeName;
                if(flag=="a"){
                    var html='<input name="surveyorAResumeName" value="'+fileName+'" type="hidden"/>' +
                        '<input name="surveyorAResumeOss" value="'+ossUrl+'" type="hidden"/>';
                }else {
                    var html='<input name="surveyorBResumeName" value="'+fileName+'" type="hidden"/>' +
                        '<input name="surveyorBResumeOss" value="'+ossUrl+'" type="hidden"/>';
                }

                var m =$("#"+buttonId).after(html);
            }
        }
    });
    uploader.init();
}




