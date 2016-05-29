package com.cn.manage.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.manage.dao.ModuleMapper;
import com.cn.manage.pojo.Module;
import com.cn.manage.pojo.ModuleMenu;
import com.cn.manage.service.IModuleService;

@Service("moduleService")
public class ModuleService implements IModuleService{

	@Autowired
	private ModuleMapper moduleMapper;
	
	@Override
	public List<Module> findModuleAndMenu() {
		// TODO Auto-generated method stub
		return this.moduleMapper.findModuleAndMenu();
	}

	@Override
	public List<ModuleMenu> findModuleAndMenuCreateTree() {
		// TODO Auto-generated method stub
		return this.moduleMapper.findModuleAndMenuCreatTree();
	}
	

}
