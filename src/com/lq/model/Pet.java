package com.lq.model;

public class Pet {
	//无参函数
	public Pet() {
	}
	//全参函数
	public Pet(int p_id, String p_kind) {
		this.p_id = p_id;
		this.p_kind = p_kind;
	}
	//定义不同种类的宠物的编号
	private int p_id;

	//定义不同的种类
	private String p_kind;
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public String getP_kind() {
		return p_kind;
	}
	public void setP_kind(String p_kind) {
		this.p_kind = p_kind;
	}
	
}
