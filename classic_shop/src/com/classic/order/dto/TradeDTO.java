package com.classic.order.dto;

public class TradeDTO {
	/*NUM            NOT NULL NUMBER(8)
	 PAID_NUM                NUMBER(8)
	 DELIV_STATE    NOT NULL NUMBER(1)
	 TRADE_START    NOT NULL DATE
	 TRADE_END               DATE
	 REASON         NOT NULL NUMBER(1)*/
	private int num;
	private int paidNum;
	private int delivState;
	private String tradeStart;
	private String tradeEnd;
	private int reason;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getPaidNum() {
		return paidNum;
	}
	public void setPaidNum(int paidNum) {
		this.paidNum = paidNum;
	}
	public int getDelivState() {
		return delivState;
	}
	public void setDelivState(int delivState) {
		this.delivState = delivState;
	}
	public String getTradeStart() {
		return tradeStart;
	}
	public void setTradeStart(String tradeStart) {
		this.tradeStart = tradeStart;
	}
	public String getTradeEnd() {
		return tradeEnd;
	}
	public void setTradeEnd(String tradeEnd) {
		this.tradeEnd = tradeEnd;
	}
	public int getReason() {
		return reason;
	}
	public void setReason(int reason) {
		this.reason = reason;
	}
}
