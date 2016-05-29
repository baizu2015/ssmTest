package com.cn.manage.unit;

import java.util.ArrayList;
import java.util.List;

import com.cn.manage.pojo.ModuleMenu;

public class MenuGenerate {
	
	List<ModuleMenu> modulemenu = new ArrayList<>();
	public MenuGenerate(){
		
	}
	public MenuGenerate(List<ModuleMenu> moduleMenus){
		this.modulemenu = moduleMenus;
	}
	public List<ModuleMenu> moduleMenusGenerate(){
		List<ModuleMenu> modulemenusOnlyParentIsNull = new ArrayList<ModuleMenu>();
		List<ModuleMenu> modulemenusOnlyParentIsNotNull = new ArrayList<ModuleMenu>();
		for(ModuleMenu mm : modulemenu){
			if(mm.moduleParentCode == null){
				modulemenusOnlyParentIsNull.add(mm);
			}else{
				modulemenusOnlyParentIsNotNull.add(mm);
			}
		}
		generateModuleMenus(modulemenusOnlyParentIsNotNull,modulemenusOnlyParentIsNull);
		return modulemenusOnlyParentIsNull;
	}
	private void generateModuleMenus(List<ModuleMenu> modulemenus,List<ModuleMenu> modulemenuss){
		for(ModuleMenu moduleMenu:modulemenuss){
			List<ModuleMenu> moMenus = findSonModuleMenu(modulemenus,moduleMenu.getModuleCode());
			if(moMenus.size()>0){
				moduleMenu.setMenus(moMenus);
				generateModuleMenus(modulemenus,moMenus);
			}
		}
	}
	private List<ModuleMenu> findSonModuleMenu(List<ModuleMenu> modulemenus,String moduleCode){
		List<ModuleMenu> sonMenus = new ArrayList<ModuleMenu>();
		for(ModuleMenu moduleMenu:modulemenus){
			if(moduleMenu.getModuleParentCode().equals(moduleCode)){
				sonMenus.add(moduleMenu);
			}
		}
		return sonMenus;
	}
}
