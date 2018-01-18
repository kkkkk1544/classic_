package com.classic.product.dto;

public class ShopGuideDTO {
/*	고유 번호	num	number
	유형	state	number
	말머리	subject	number
	배송 안내	deliv_info	varchar2
	환불 안내	refund_info	varchar2
	교환 안내	trade_info	varchar2
	AS 안내	as_info	varchar2
	탈퇴 안내	unregi_info	varchar2*/
	
	private int num;
	private int state;
	private int subject;
	private String deliv_info;
	private String refund_info;
	private String trade_info;
	private String as_info;
	private String unregi_info;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getSubject() {
		return subject;
	}
	public void setSubject(int subject) {
		this.subject = subject;
	}
	public String getDeliv_info() {
		return deliv_info;
	}
	public void setDeliv_info(String deliv_info) {
		this.deliv_info = deliv_info;
	}
	public String getRefund_info() {
		return refund_info;
	}
	public void setRefund_info(String refund_info) {
		this.refund_info = refund_info;
	}
	public String getTrade_info() {
		return trade_info;
	}
	public void setTrade_info(String trade_info) {
		this.trade_info = trade_info;
	}
	public String getAs_info() {
		return as_info;
	}
	public void setAs_info(String as_info) {
		this.as_info = as_info;
	}
	public String getUnregi_info() {
		return unregi_info;
	}
	public void setUnregi_info(String unregi_info) {
		this.unregi_info = unregi_info;
	}
	@Override
	public String toString() {
		return "{\"num\":\"" + num + "\", \"state\":\"" + state + "\", \"subject\":\"" + subject
				+ "\", \"deliv_info\":\"" + deliv_info + "\", \"refund_info\":\"" + refund_info
				+ "\", \"trade_info\":\"" + trade_info + "\", \"as_info\":\"" + as_info
				+ "\", \"unregi_info\":\"" + unregi_info + "\"}";
	}
	
	
	
}
