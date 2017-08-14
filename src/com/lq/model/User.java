package com.lq.model;

public class User {
	//无参函数
	public User() {
		
	}
	//全参函数
	public User(int u_id, String u_name, String u_passwd, String u_email) {
		this.u_id = u_id;
		this.u_name = u_name;
		this.u_passwd = u_passwd;
		this.u_email = u_email;
	}

	//定义用户编号
	private int u_id;
	//定义用户名
	private String u_name;
	//定义用户密码
	private String u_passwd;
	//定义邮箱
	private String u_email;
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_passwd() {
		return u_passwd;
	}
	public void setU_passwd(String u_passwd) {
		this.u_passwd = u_passwd;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}	
}
