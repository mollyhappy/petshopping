package com.lq.model;

import java.io.Serializable;

public class Products implements Serializable{
	//�޲κ���
	public Products() {
	}
	//ȫ�κ���
	public Products( String p_path,int p_kid, String p_kind, int p_id,
			String p_age, int p_num, String p_sex, int p_price) {
		this.p_kid = p_kid;
		this.p_path = p_path;
		this.p_kind = p_kind;
		this.p_id = p_id;
		this.p_age = p_age;
		this.p_num = p_num;
		this.p_sex = p_sex;
		this.p_price = p_price;
	}
	//���������ı��
	private int p_kid;	
	//���������ͼƬ��·��
	private String p_path;
	//��������������
	private String p_kind;
	public String getP_path() {
		return p_path;
	}
	public void setP_path(String p_path) {
		this.p_path = p_path;
	}
	//������ֲ�ͬ����ı��
	private int p_id;
	//������������
	private String p_age;
	//������������
	private int p_num;
	//�������Ĺ�ĸ
	private String p_sex;
	//�������ļ۸�
	private int p_price;
	public int getP_kid() {
		return p_kid;
	}
	public void setP_kid(int p_kid) {
		this.p_kid = p_kid;
	}
	public String getP_kind() {
		return p_kind;
	}
	public void setP_kind(String p_kind) {
		this.p_kind = p_kind;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public String getP_age() {
		return p_age;
	}
	public void setP_age(String p_age) {
		this.p_age = p_age;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getP_sex() {
		return p_sex;
	}
	public void setP_sex(String p_sex) {
		this.p_sex = p_sex;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}	
}
