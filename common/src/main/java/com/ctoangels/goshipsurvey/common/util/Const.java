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


    //inspection_type
    public static final Integer INSPECTION_TYPE_ON_HIRE = 1;
    public static final Integer INSPECTION_TYPE_OFF_HIRE = 2;
    public static final Integer INSPECTION_TYPE_CONDITION = 3;

    //quotation
    //流程  0:记录生成   1:op询价中  1.5:surveyor申请  2:op选择一个surveyor>>生成inspection  3:已取消
    public static final Integer QUOTATION_INIT = 0;
    public static final Integer QUOTATION_ING = 1;
    public static final Integer QUOTATION_END = 2;
    public static final Integer QUOTATION_CANCEL = 3;

    //quotation_application
    //  0:申请中  1:成功  2:失败
    public static final Integer QUO_APPLY_ING = 0;
    public static final Integer QUO_APPLY_SUCCESS = 1;
    public static final Integer QUO_APPLY_FAILURE = 2;

    //inspection
    //0:记录生成  1:op上传船舶信息 2:surveyor上传本人护照等信息 3:等待surveyor上传验船报告  4:op确认完成 5:surveyor 确认完成
    public static final Integer INSPECTION_INIT = 0;
    public static final Integer INSPECTION_OP_OK = 1;
    public static final Integer INSPECTION_SURVEYOR_OK = 2;
    public static final Integer INSPECTION_REPORT_OK = 3;
    public static final Integer INSPECTION_OP_COMPLETE = 4;
    public static final Integer INSPECTION_SURVEYOR_COMPLETE = 5;


    //user type
    public static final Integer USER_TYPE_ADMIN = 0;
    public static final Integer USER_TYPE_OP = 1;
    public static final Integer USER_TYPE_SURVEYOR_PERSONAL = 2;
    public static final Integer USER_TYPE_SURVEYOR_COMPANY = 3;

}
