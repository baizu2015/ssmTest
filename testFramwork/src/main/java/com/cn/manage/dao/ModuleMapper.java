package com.cn.manage.dao;

import java.util.List;

import com.cn.manage.pojo.Module;
import com.cn.manage.pojo.ModuleMenu;

public interface ModuleMapper {
	public List<Module> findModuleAndMenu();
	public List<ModuleMenu> findModuleAndMenuCreatTree();
}
