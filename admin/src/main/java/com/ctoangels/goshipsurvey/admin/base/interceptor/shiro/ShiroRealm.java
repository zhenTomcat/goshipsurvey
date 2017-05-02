package com.ctoangels.goshipsurvey.admin.base.interceptor.shiro;

import com.ctoangels.goshipsurvey.admin.base.interceptor.dataSourceSelect.DataSourceInterceptor;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.Permission;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;


/**
 * @author Sun.Han
 * @version 1.0
 * @FileName ShiroRealm.java
 * @Description: 认证和鉴权
 * @Date Apr 17, 2015
 */
public class ShiroRealm extends AuthorizingRealm {

    private static Logger logger = LoggerFactory.getLogger(ShiroRealm.class);

    /*
         * (non-Javadoc)

         *
         * @see
         * org.apache.shiro.realm.AuthenticatingRealm#doGetAuthenticationInfo(org
         * .apache.shiro.authc.AuthenticationToken) 认证
         */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

        String username = (String) token.getPrincipal(); // user account
        String password = new String((char[]) token.getCredentials()); // password

        // 已经在login_login验证过用户名和密码
        if (null != username && null != password) {
            Subject subject = SecurityUtils.getSubject();
            User user = (User) subject.getSession().getAttribute(Const.SESSION_USER);
            return new SimpleAuthenticationInfo(user, password, getName());// TODO:

        } else {
            return null;
        }

    }

    @Override
    public boolean isPermitted(PrincipalCollection principals, String permission) {
        Permission p = getPermissionResolver().resolvePermission(permission);
        Subject subject = SecurityUtils.getSubject();
        boolean isAdmin = subject.hasRole(Const.ADMIN_ROLE);
        if (isAdmin) return true;
        return isPermitted(principals, p);
    }

    /*
     * 授权查询回调函数, 进行鉴权但缓存中无用户的授权信息时调用,负责在应用程序中决定用户的访问控制的方法(non-Javadoc)
     *
     * @see
     * org.apache.shiro.realm.AuthorizingRealm#doGetAuthorizationInfo(org.apache
     * .shiro.subject.PrincipalCollection) 鉴权
     */
    @SuppressWarnings("unchecked")
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {

        User sysUser = (User) principals.fromRealm(getName()).iterator().next();
        if (null != sysUser) {
            SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();

            Subject subject = SecurityUtils.getSubject();
            Session session = subject.getSession();
            if (session.getAttribute(Const.SESSION_ROLES_NAME) != null)
                info.addRoles((List<String>) session.getAttribute(Const.SESSION_ROLES_NAME));
            if (session.getAttribute(Const.SESSION_ALL_RIGHTS_URL) != null)
                info.addStringPermissions((List<String>) session.getAttribute(Const.SESSION_ALL_RIGHTS_URL));
            return info;
        }
        return null;
    }

}
