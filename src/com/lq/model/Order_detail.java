package com.lq.model;

import java.io.Serializable;

public class Order_detail implements Serializable{
	//无参函数
	public Order_detail() {
	}
	//全参函数
	public Order_detail(int o_id, int p_kid, String p_name, String o_name,
			int o_phone, String o_address, int o_price, int o_number,
			String o_datetime) {
		super();
		this.o_id = o_id;
		this.p_kid = p_kid;
		this.p_name = p_name;
		this.o_name = o_name;
		this.o_phone = o_phone;
		this.o_address = o_address;
		this.o_price = o_price;
		this.o_number = o_number;
		this.o_datetime = o_datetime;
	}
	//部分参数
	public Order_detail(int p_kid,String p_name,String o_name, int o_phone, String o_address,
			int o_price, int o_number, String o_datetime) {
		//this.o_id = o_id;
		this.p_kid = p_kid;
		this.p_name = p_name;
		this.o_name = o_name;
		this.o_phone = o_phone;
		this.o_address = o_address;
		this.o_price = o_price;
		this.o_number = o_number;
		this.o_datetime = o_datetime;
	}
	//定义详细订单编号
	private int o_id;
	//订单的商品编号
	private int p_kid;
	//订单的商品名
	private String p_name;
	//定义用户名
	private String o_name;
	//定义用户电话
	private int o_phone;
	//定义用户的地址
	private String o_address;
	//订单的价钱
	private int o_price;
	//订单的件数
	private int o_number;
	//订单的生成日期
	private String o_datetime;
	public int getO_id() {
		return o_id;
	}
	public void setO_id(int o_id) {
		this.o_id = o_id;
	}
	public String getO_name() {
		return o_name;
	}
	public void setO_name(String o_name) {
		this.o_name = o_name;
	}
	public int getO_phone() {
		return o_phone;
	}
	public void setO_phone(int o_phone) {
		this.o_phone = o_phone;
	}
	public int getO_price() {
		return o_price;
	}
	public void setO_price(int o_price) {
		this.o_price = o_price;
	}
	public int getO_number() {
		return o_number;
	}
	public void setO_number(int o_number) {
		this.o_number = o_number;
	}
	public String getO_datetime() {
		return o_datetime;
	}
	public void setO_datetime(String o_datetime) {
		this.o_datetime = o_datetime;
	}
	public String getO_address() {
		return o_address;
	}
	public void setO_address(String o_address) {
		this.o_address = o_address;
	}
	public int getP_kid() {
		return p_kid;
	}
	public void setP_kid(int p_kid) {
		this.p_kid = p_kid;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	
}
