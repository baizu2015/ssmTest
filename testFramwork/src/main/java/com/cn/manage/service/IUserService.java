package com.cn.manage.service;

import com.cn.manage.pojo.User;

public interface IUserService {
	public User getUserById(Integer id);
	
	public User getByUsername(String userName);
}
