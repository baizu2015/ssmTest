package com.cn.manage.pojo;

import java.util.Date;

public class Module {
	
	private Integer id;//ģ����
	
	private String moduleName;//ģ������
	
	private String moduleCode;//ģ��code
	
	private String moduleUrl;//ģ���ַ
	
	private String moduleParentCode;//ģ�鸸����ַ
	private String moduleIcon;//ģ�鸸����ַ
	
	private Date createDate;//ģ�鴴��ʱ��

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
