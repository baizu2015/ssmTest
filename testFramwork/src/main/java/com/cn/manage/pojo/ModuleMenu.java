package com.cn.manage.pojo;

import java.util.List;

/**
 * ²Ëµ¥À¸
 * @author Ñî½¡
 *
 */
public class ModuleMenu {
	
	public Integer id;
	
	public String moduleName;
	
	public String moduleIcon;
	
	public String moduleUrl;
	
	public String moduleCode;
	
	public String moduleParentCode;
	
	public List<ModuleMenu> menus;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getModuleName() {
		return moduleName;
	}
	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}
	
	public String getModuleIcon() {
		return moduleIcon;
	}
	public void setModuleIcon(String moduleIcon) {
		this.moduleIcon = moduleIcon;
	}
	public String getModuleUrl() {
		return moduleUrl;
	}
	public void setModuleUrl(String moduleUrl) {
		this.moduleUrl = moduleUrl;
	}
	public String getModuleCode() {
		return moduleCode;
	}
	public void setModuleCode(String moduleCode) {
		this.moduleCode = moduleCode;
	}
	public String getModuleParentCode() {
		return moduleParentCode;
	}
	public void setModuleParentCode(String moduleParentCode) {
		this.moduleParentCode = moduleParentCode;
	}
	public List<ModuleMenu> getMenus() {
		return menus;
	}
	public void setMenus(List<ModuleMenu> menus) {
		this.menus = menus;
	}
	
}
