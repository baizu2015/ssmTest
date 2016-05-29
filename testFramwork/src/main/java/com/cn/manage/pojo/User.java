package com.cn.manage.pojo;

import java.util.List;

public class User {
	
	private Integer Id;
	
	private String Name;
	
	private Integer Age;
	
	private List<ModuleMenu> lmm;
	
	
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public Integer getAge() {
		return Age;
	}
	public void setAge(Integer age) {
		Age = age;
	}
	public List<ModuleMenu> getLmm() {
		return lmm;
	}
	public void setLmm(List<ModuleMenu> lmm) {
		this.lmm = lmm;
	}
	
}
