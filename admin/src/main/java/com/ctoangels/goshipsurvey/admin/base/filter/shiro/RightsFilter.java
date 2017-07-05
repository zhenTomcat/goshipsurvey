package com.ctoangels.goshipsurvey.admin.base.filter.shiro;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ctoangels.goshipsurvey.common.util.Const;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.StringUtils;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.apache.shiro.web.util.WebUtils;



/**
 * @author Sun.Han
 * @version 1.0
 * @FileName RightsFilter.java
 * @Description:
 * @Date May 6, 2015
 */
public class RightsFilter extends AccessControlFilter {

    private String unauthorizedUrl = "/user/unauthorized";
    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception {
        if (isLoginRequest(request, response)) {
            return true;
        } else {
            HttpServletRequest req = (HttpServletRequest) request;
            String url = req.getServletPath();
            Subject subject = SecurityUtils.getSubject();

            //if(url.equals("main/index")) return true;
            if (subject.getPrincipal() != null) {
                // 判断该请求是否包含在要求过滤的列表中，如果是则判断访问的用户是否有权限访问资源。
                if (url.startsWith("/"))
                    url = url.substring(1);
                /*if (url.endsWith("/list"))
                    url = url.substring(0, url.lastIndexOf("/list"));*/
                if (url.endsWith("/form"))
                    url = url.substring(0, url.lastIndexOf("/form"));
                boolean hasPermition = subject.isPermitted(url);
                boolean isAdmin = subject.hasRole(Const.ADMIN_ROLE);
                return (hasPermition || isAdmin);
            }
            return true;
        }
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {

        Subject subject = SecurityUtils.getSubject();
        if (subject.isAuthenticated()) {
            HttpServletRequest req = (HttpServletRequest) request;
            String url = req.getServletPath();
            if (StringUtils.hasText(unauthorizedUrl)) {//如果有未授权页面跳转过去
                WebUtils.issueRedirect(request, response, unauthorizedUrl);
            } else {//否则返回401未授权状态码  
                WebUtils.toHttp(response).sendError(HttpServletResponse.SC_UNAUTHORIZED);
            }

            return false;
        }
        return false;
    }
}