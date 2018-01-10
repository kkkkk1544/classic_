package com.classic.order.dto;

public class ListDTO {
	int paid_num;
	String g_name;
	String g_color;
	String g_size;
	int payment;
	int order_state;
	public int getPaid_num() {
		return paid_num;
	}
	public void setPaid_num(int paid_num) {
		this.paid_num = paid_num;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public String getG_color() {
		return g_color;
	}
	public void setG_color(String g_color) {
		this.g_color = g_color;
	}
	public String getG_size() {
		return g_size;
	}
	public void setG_size(String g_size) {
		this.g_size = g_size;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public int getOrder_state() {
		return order_state;
	}
	public void setOrder_state(int order_state) {
		this.order_state = order_state;
	}
	@Override
	public String toString() {
		return "ListDTO [paid_num=" + paid_num + ", g_name=" + g_name + ", g_color=" + g_color + ", g_size=" + g_size
				+ ", payment=" + payment + ", order_state=" + order_state + "]";
	}
	
	
}
