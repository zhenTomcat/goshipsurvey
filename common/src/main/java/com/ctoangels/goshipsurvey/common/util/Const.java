package com.ctoangels.goshipsurvey.common.util;

import org.springframework.context.ApplicationContext;

/**
 * @author Sun.Han
 * @version 1.0
 * @FileName Const.java
 * @Description:
 * @Date Apr 19, 2015
 */
public class Const {

    public static final String COMMA = ",";

    public static final String SESSION_ROLES_NAME = "SESSION_ROLES_NAME";
    public static final String SESSION_ALL_RIGHTS_URL = "SESSION_ALL_RIGHTS_URL";


    public static final String SESSION_SECURITY_CODE = "sessionSecCode";
    public static final String SESSION_USER = "sessionUser";
    public static final String SESSION_ROLE_RIGHTS = "sessionRoleRights";

    public static final String SESSION_menuList = "menuList";            //当前菜单
    public static final String SESSION_ALLMENULIST = "allMenuList";        //全部菜单
    public static final String SESSION_ALLBUTTONLIST = "allButtonList"; //全部按钮
    public static final String SESSION_ALLUSERURL = "allUserUrl"; //全部按钮

    public static final String SESSION_userpds = "userpds";

    public static final String SESSION_USERROL = "USERROL";                //用户对象
    public static final String SESSION_USERNAME = "loginName";            //用户名

    public static final String TRUE = "T";
    public static final String FALSE = "F";
    public static final String LOGIN = "/login_toLogin.do";                //登录地址


    public static final String FILEPATHIMG = "uploadFiles/uploadImgs/";    //图片上传路径
    public static final String FILEPATHFILE = "uploadFiles/file/";        //文件上传路径

    /**
     * datatable插件显示分页表格所需要的数据字段名称（已废弃）
     */
    public static final String DISPLAYSTART = "iDisplayStart";
    public static final String DISPLAYLENGTH = "iDisplayLength";
    public static final String SECHO = "sEcho";
    public static final String TOTALRECORDS = "iTotalRecords";
    public static final String TOTALDISPLAYRECORDS = "iTotalDisplayRecords";
    public static final String DATA = "aaData";

    /**
     * 原生的datatable插件显示分页表格所需要的数据字段名称（推荐使用）
     */
    public static final String START = "start";
    public static final String LENGTH = "length";
    public static final String DRAW = "draw";
    public static final String RECORDSTOTAL = "recordsTotal";
    public static final String RECORDSFILTERED = "recordsFiltered";
    public static final String NDATA = "data";

    public static ApplicationContext WEB_APP_CONTEXT = null; //该值会在web容器启动时由WebAppContextListener初始化


    public static final String ADMIN_ROLE = "1";

    public static final int DEL_FLAG_NORMAL = 0; //正常
    public static final int DEL_FLAG_DELETE = 1; // 删除

    public static final String SITE_SESSION_USER = "siteSessionUser";


    public static final Integer EMAIL_ACTIVATE_STATUS_NOT = 0;//未进行邮箱验证
    public static final Integer EMAIL_ACTIVATE_STATUS_HAVE = 1;//已经行邮箱验证

    //维修进度子项完成进度
    public static final Integer TASK_COMPLETE = 0;//该项已完成
    public static final Integer TASK_NOW = 1;//该项进行中
    public static final Integer TASK_NOT_START = 2;//该项未开始
    public static final Integer TASK_CANCEL = 3;//该项已取消

    //报告详单提交状态
    public static final Integer REPORT_DETAIL_SUBMIT_HAVE = 0;//报告详单已提交
    public static final Integer REPORT_DETAIL_SUBMIT_NOT = 1;//报告详单未提交

    //报告文件类型
    public static final Integer REPORT_DETAIL_FILE_TYPE_IMAGE = 0;
    public static final Integer REPORT_DETAIL_FILE_TYPE_MP3 = 1;
    public static final Integer REPORT_DETAIL_FILE_TYPE_OTHER = 2;


}
