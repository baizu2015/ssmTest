package com.cn.manage.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/error")
public class ErrorController {
	/**
	 * 404ҳ��
	 * @return
	 */
	@RequestMapping("/404")
	public String _404Page(HttpServletRequest request){
		return "error/404";
	}
	/**
	 * 500ҳ��
	 * @return
	 */
	@RequestMapping("/500")
	public String _500Page(){
		return "error/500";
	}
}
