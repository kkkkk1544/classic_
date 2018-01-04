package com.classic.order.dto;

public class RefundDTO {
	private int num;
	private int paid_num;
	private String refund_start;
	private int refund_state;
	private String refund_end;
	private int reason;
	private String refund_bank;
	private int refund_account;
	private String refund_name;
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
	public String getRefund_start() {
		return refund_start;
	}
	public void setRefund_start(String refund_start) {
		this.refund_start = refund_start;
	}
	public int getRefund_state() {
		return refund_state;
	}
	public void setRefund_state(int refund_state) {
		this.refund_state = refund_state;
	}
	public String getRefund_end() {
		return refund_end;
	}
	public void setRefund_end(String refund_end) {
		this.refund_end = refund_end;
	}
	public int getReason() {
		return reason;
	}
	public void setReason(int reason) {
		this.reason = reason;
	}
	public String getRefund_bank() {
		return refund_bank;
	}
	public void setRefund_bank(String refund_bank) {
		this.refund_bank = refund_bank;
	}
	public int getRefund_account() {
		return refund_account;
	}
	public void setRefund_account(int refund_account) {
		this.refund_account = refund_account;
	}
	public String getRefund_name() {
		return refund_name;
	}
	public void setRefund_name(String refund_name) {
		this.refund_name = refund_name;
	}
	@Override
	public String toString() {
		return "{ \"num\":\"" + num + "\", \"paid_num\":\"" + paid_num + "\", \"refund_start\":\"" + refund_start
				+ "\", \"refund_state\":\"" + refund_state + "\", \"refund_end\":\"" + refund_end + "\", \"reason\":\""
				+ reason + "\", \"refund_bank\":\"" + refund_bank + "\", \"refund_account\":\"" + refund_account
				+ "\", \"refund_name\":\"" + refund_name + "\"}";
	}
	
	
	
}
