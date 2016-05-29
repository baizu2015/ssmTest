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
     * Ȩ����֤
     */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		//��ȡ��¼����
		String loginName = (String) principals.fromRealm(getName()).iterator().next();
		User user = this.userService.getByUsername(loginName);
		if(user!=null){
			//Ȩ����Ϣ����info,������Ų�����û������еĽ�ɫ��role����Ȩ�ޣ�permission��  
            SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
		}
		return null;
	}
	/** 
     * ��֤��ǰ��¼��Subject 
     * @see  ������:�����и÷����ĵ���ʱ��ΪLoginController.login()������ִ��Subject.login()ʱ 
     */  
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authcToken) throws AuthenticationException {
		
        return null;
	}
}
