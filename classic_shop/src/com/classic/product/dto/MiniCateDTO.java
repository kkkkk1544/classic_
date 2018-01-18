package com.classic.product.dto;

public class MiniCateDTO {
	private int num;
	private int cate_num;
	private String name;
	private int state;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getCate_num() {
		return cate_num;
	}
	public void setCate_num(int cate_num) {
		this.cate_num = cate_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "{\"num\":\"" + num + "\", \"cate_num\":\"" + cate_num + "\", \"name\":\"" + name
				+ "\", \"state\":\"" + state + "\"}";
	}
	
	
	
}
