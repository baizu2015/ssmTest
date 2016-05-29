package com.cn.manage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoleController {
	
	@RequestMapping("/role/index")
	public String index(){
		return "role/index";
	}
	@RequestMapping("/role/user/index")
	public String role_user(){
		return "role/user/index";
	}
}
