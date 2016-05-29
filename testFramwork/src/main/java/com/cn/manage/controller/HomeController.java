package com.cn.manage.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.manage.pojo.Module;
import com.cn.manage.pojo.ModuleMenu;
import com.cn.manage.service.IModuleService;
import com.cn.manage.unit.MenuGenerate;

@Controller
public class HomeController {
	
	@Autowired
	private IModuleService moduleService;
	
	@RequestMapping("/home/index")
	public String index(Model model){
		List<Module> lm = this.moduleService.findModuleAndMenu();
		model.addAttribute("module",lm);
		return "home/index";
	}
	@RequestMapping("/home/menu")
	public @ResponseBody List<ModuleMenu> menuTree(){
		List<ModuleMenu> moduleMenus = this.moduleService.findModuleAndMenuCreateTree();
		MenuGenerate menuGenerate = new MenuGenerate(moduleMenus);
		return menuGenerate.moduleMenusGenerate();
	}
}
