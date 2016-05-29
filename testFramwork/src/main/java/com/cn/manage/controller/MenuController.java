package com.cn.manage.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.manage.pojo.Module;
import com.cn.manage.pojo.Result;
import com.cn.manage.service.impl.ModuleService;

@Controller
public class MenuController {

	@Resource
	private ModuleService moduleService;
	
	@RequestMapping("menu/index")
	public String index(){
		return "sys/menu/index";
	}
	/**
	 * 杨健
	 * 2016-2-2
	 * 返回菜单列表
	 * @return
	 */
	@RequestMapping("menu/list")
	public @ResponseBody Map<String, Object> list(){
		List<Module> planlist = this.moduleService.findModuleAndMenu();
        Map<String, Object> result = new HashMap<String, Object>();  
        result.put("iTotalRecords", planlist.size());  
        result.put("iTostatalDisplayRecords", 5);  
        result.put("aaData", planlist);  
		return result;
	}
	@RequestMapping("menu/add")
	public @ResponseBody Result add(Module menu){
		Result result = new Result();
		return result;
	}
}
