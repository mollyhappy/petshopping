package com.lq.model;

public class Pet {
	//�޲κ���
	public Pet() {
	}
	//ȫ�κ���
	public Pet(int p_id, String p_kind) {
		this.p_id = p_id;
		this.p_kind = p_kind;
	}
	//���岻ͬ����ĳ���ı��
	private int p_id;

	//���岻ͬ������
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
