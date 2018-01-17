package com.classic.product.dto;

public class CateDTO {
	private int num;
	private String name;
	private int state;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
		return "{\"num\":\"" + num + "\", \"name\":\"" + name + "\", \"state\":\"" + state + "\"}";
	}
	
	
}
