package com.cn.manage.dao;

import com.cn.manage.pojo.User;

public interface UserMapper {
	
	public User findUserList(Integer id);
	
	public User getUserByName(String name);
}
