package com.classic.dto;

public class DeliveryDTO {
	private int num;
	private int paid_num;
	private String company;
	private int deilv_num;
	private int state;
	private String deilv_start;
	private String deilv_end;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getPaid_num() {
		return paid_num;
	}
	public void setPaid_num(int paid_num) {
		this.paid_num = paid_num;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getDeilv_num() {
		return deilv_num;
	}
	public void setDeilv_num(int deilv_num) {
		this.deilv_num = deilv_num;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getDeilv_start() {
		return deilv_start;
	}
	public void setDeilv_start(String deilv_start) {
		this.deilv_start = deilv_start;
	}
	public String getDeilv_end() {
		return deilv_end;
	}
	public void setDeilv_end(String deilv_end) {
		this.deilv_end = deilv_end;
	}
	@Override
	public String toString() {
		return "{ \"num\":\"" + num + "\", \"paid_num\":\"" + paid_num + "\", \"company\":\"" + company
				+ "\", \"deilv_num\":\"" + deilv_num + "\", \"state\":\"" + state + "\", \"deilv_start\":\""
				+ deilv_start + "\", \"deilv_end\":\"" + deilv_end + "\"}";
	}
	
	
}
