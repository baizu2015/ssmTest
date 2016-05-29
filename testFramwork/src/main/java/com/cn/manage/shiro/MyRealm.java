package com.cn.manage.shiro;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

import com.cn.manage.dao.UserMapper;
import com.cn.manage.pojo.ModuleMenu;
import com.cn.manage.pojo.User;
import com.cn.manage.service.impl.UserService;

public class MyRealm  extends AuthorizingRealm{
	
	@Autowired
    private UserService userService;
	/** 
     * 权限验证
     */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		//获取登录名称
		String loginName = (String) principals.fromRealm(getName()).iterator().next();
		User user = this.userService.getByUsername(loginName);
		if(user!=null){
			//权限信息对象info,用来存放查出的用户的所有的角色（role）及权限（permission）  
            SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
		}
		return null;
	}
	/** 
     * 验证当前登录的Subject 
     * @see  经测试:本例中该方法的调用时机为LoginController.login()方法中执行Subject.login()时 
     */  
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authcToken) throws AuthenticationException {
		
        return null;
	}
}
