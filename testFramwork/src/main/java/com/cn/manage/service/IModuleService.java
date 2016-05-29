package com.cn.manage.service;

import java.util.List;

import com.cn.manage.pojo.Module;
import com.cn.manage.pojo.ModuleMenu;

public interface IModuleService {
	
	public List<Module> findModuleAndMenu();
	
	public List<ModuleMenu> findModuleAndMenuCreateTree();
}
