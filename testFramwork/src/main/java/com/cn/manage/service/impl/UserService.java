package com.cn.manage.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.manage.dao.UserMapper;
import com.cn.manage.pojo.User;
import com.cn.manage.service.IUserService;

@Service("userService") 
public class UserService implements IUserService{

	@Autowired
    private UserMapper userMapper;

	@Override
	public User getUserById(Integer id) {
		// TODO Auto-generated method stub
		return this.userMapper.findUserList(id);
	}

	@Override
	public User getByUsername(String userName) {
		// TODO Auto-generated method stub
		return this.userMapper.getUserByName(userName);
	}
	
}
