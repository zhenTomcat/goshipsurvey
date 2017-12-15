package com.ctoangels.goshipsurvey.admin.base.interceptor.log;

import com.ctoangels.goshipsurvey.admin.base.interceptor.dataSourceSelect.DataSourceInterceptor;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IIpInfoService;
import com.ctoangels.goshipsurvey.common.modules.sys.service.UserService;
import com.ctoangels.goshipsurvey.common.util.DataSourceTypeManager;
import com.ctoangels.goshipsurvey.common.util.DataSources;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.regex.Pattern;

/**
 * Created by lenovo on 2017/9/8.
 */

public class LogInterceptor implements HandlerInterceptor {

    @Autowired
    private UserService userService;

    @Autowired
    private IIpInfoService iIpInfoService;


    private static Logger logger = LoggerFactory.getLogger(LogInterceptor.class);

    public LogInterceptor() {
        logger.info("logInterceptor 启动");
    }

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        logger.info("logInterceptor 前");
        String ip = getUsrIPAddr(httpServletRequest);
        httpServletRequest.setAttribute("ip", ip);
        logger.info("ip : " + ip);

        String uri=httpServletRequest.getRequestURI();
        /*if(!ip.equals("The ip is invalid.")){

        }*/
        iIpInfoService.setIpAndUri(ip,uri);
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
        logger.info("logInterceptor 后");
    }

    public String getUsrIPAddr(HttpServletRequest request) {
        String ip = "";
        //1.首先考虑有反向代理的情况，如果有代理，通过“x-forwarded-for”获取真实ip地址
        ip = request.getHeader("x-forwarded-for");
        //2.如果squid.conf的配制文件forwarded_for项默认是off，则：X-Forwarded-For：unknown。考虑用Proxy-Client-IP或WL-Proxy-Client-IP获取
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        //3.最后考虑没有代理的情况，直接用request.getRemoteAddr()获取ip
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        //4.如果通过多级反向代理，则可能产生多个ip，其中第一个非unknown的IP为客户端真实IP（IP按照','分割）
        if (ip != null && ip.split(",").length > 1) {
            ip = (ip.split(","))[0];
        }
        //5.如果是服务器本地访问，需要根据网卡获取本机真实ip
        if ("127.0.0.1".equals(ip)) {
            try {
                ip = InetAddress.getLocalHost().getHostAddress();
            } catch (UnknownHostException e) {
                logger.error(e.getMessage(), e);//获取服务器(本地)ip信息失败
                return "";
            }
        }
//        6.校验ip的合法性，不合法返回""
        if (!isValidIp(ip)) {
            return "The ip is invalid.";
        } else {
            return ip;
        }
//        return ip;
    }

    /**
     * 判断是否为合法IP地址
     *
     * @param ipAddress
     * @return
     */
    private boolean isValidIp(String ipAddress) {
        boolean retVal = false;
        try {
            if (ipAddress != null && !"".equals(ipAddress)) {
                Pattern pattern = Pattern.compile("([1-9]|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3}");
                retVal = pattern.matcher(ipAddress).matches();
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return retVal;
    }
}
