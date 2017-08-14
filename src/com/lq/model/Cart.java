package com.lq.model;

import java.io.Serializable;

public class Cart implements Serializable{
	//无参函数
	public Cart() {
	}
	//全参函数
	public Cart(String u_name, String c_kinds, int c_id, int c_price,int c_num,int c_total,String c_path) {
		super();
		this.u_name = u_name;
		this.c_kinds = c_kinds;
		this.c_id = c_id;
		this.c_price = c_price;
		this.c_num = c_num;
		this.c_total = c_total;
		this.c_path = c_path;
	}

	//定义购买的用户的姓名
	private String u_name;
	//定义购买的种类
	private String c_kinds;
	//定义购买的商品的编号
	private int c_id;
	//定义购买的价钱
	private int c_price;
	//定义购买的数量
	private int c_num;
	//定义购买的总价钱
	private int c_total;
	//定义购买的商品的路径
	private String c_path;
	
	
	public int getC_num() {
		return c_num;
	}
	public void setC_num(int c_num) {
		this.c_num = c_num;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getC_kinds() {
		return c_kinds;
	}
	public void setC_kinds(String c_kinds) {
		this.c_kinds = c_kinds;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public int getC_price() {
		return c_price;
	}
	public void setC_price(int c_price) {
		this.c_price = c_price;
	}	
	public int getC_total() {
		return c_total;
	}
	public void setC_total(int c_total) {
		this.c_total = c_total;
	}
	public String getC_path() {
		return c_path;
	}
	public void setC_path(String c_path) {
		this.c_path = c_path;
	}

}
