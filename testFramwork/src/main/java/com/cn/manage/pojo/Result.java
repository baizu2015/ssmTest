package com.cn.manage.pojo;

public class Result {

	public String msg;
	public Code code;
	public enum Code{
		ERROR,SUCCESS;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Code getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = Code.SUCCESS;
	}
	
}
