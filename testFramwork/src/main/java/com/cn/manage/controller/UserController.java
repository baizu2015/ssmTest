package com.cn.manage.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.manage.service.IUserService;

@Controller  
@RequestMapping("/user")  
public class UserController {

	@Autowired  
    private IUserService userService;
	@RequestMapping("/index")  
    public String toIndex(HttpServletRequest request,Model model){
        return "user/index";  
    }
}
