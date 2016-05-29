package com.cn.manage.pojo;

import java.util.Date;

public class Module {
	
	private Integer id;//模块编号
	
	private String moduleName;//模块名称
	
	private String moduleCode;//模块code
	
	private String moduleUrl;//模块地址
	
	private String moduleParentCode;//模块父级地址
	private String moduleIcon;//模块父级地址
	
	private Date createDate;//模块创建时间

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

	public String getModuleCode() {
		return moduleCode;
	}

	public void setModuleCode(String moduleCode) {
		this.moduleCode = moduleCode;
	}

	public String getModuleUrl() {
		return moduleUrl;
	}

	public void setModuleUrl(String moduleUrl) {
		this.moduleUrl = moduleUrl;
	}

	public String getModuleParentCode() {
		return moduleParentCode;
	}

	public void setModuleParentCode(String moduleParentCode) {
		this.moduleParentCode = moduleParentCode;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getModuleIcon() {
		return moduleIcon;
	}

	public void setModuleIcon(String moduleIcon) {
		this.moduleIcon = moduleIcon;
	}
	
}
