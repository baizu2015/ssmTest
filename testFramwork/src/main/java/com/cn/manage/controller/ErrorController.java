package com.cn.manage.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/error")
public class ErrorController {
	/**
	 * 404Ò³Ãæ
	 * @return
	 */
	@RequestMapping("/404")
	public String _404Page(HttpServletRequest request){
		return "error/404";
	}
	/**
	 * 500Ò³Ãæ
	 * @return
	 */
	@RequestMapping("/500")
	public String _500Page(){
		return "error/500";
	}
}
