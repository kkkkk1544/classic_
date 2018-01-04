package com.classic.order.dto;

public class CancelDTO {
	/* NUM                                       NOT NULL NUMBER(8)
	 PAID_NUM                                           NUMBER(8)
	 CANCEL_START                                       DATE
	 CANCEL_END                                         DATE*/
	private int num;
	private int paidNum;
	private String cancelStart;
	private String cancelEnd;
	public int getNum() {return num;}
	public void setNum(int num) {this.num = num;}
	public int getPaidNum() {return paidNum;}
	public void setPaidNum(int paidNum) {this.paidNum = paidNum;}
	public String getCancelStart() {return cancelStart;}
	public void setCancelStart(String cancelStart) {this.cancelStart = cancelStart;}
	public String getCancelEnd() {return cancelEnd;}
	public void setCancelEnd(String cancelEnd) {this.cancelEnd = cancelEnd;}
	@Override
	public String toString() {
		return "{ \"num\" : \"" + num + "\", \"paidNum\" : \"" + paidNum + "\", \"cancelStart\" : \"" + cancelStart
				+ "\", \"cancelEnd\" : \"" + cancelEnd + "\"}";
	}
}
