package com.classic.order.dto;

public class ReviewDTO {
	/*NUM             NOT NULL NUMBER(8)
	PAID_NUM                 NUMBER(8)
	MEM_NUM                  NUMBER(8)
	BODY_SIZE                VARCHAR2(10)
	CONTENT         NOT NULL VARCHAR2(4000)
	STAR            NOT NULL NUMBER(1)
	INDATE          DATE*/
	private int num;
	private int paidNum;
	private int memNum;
	private String bodySize;
	private String contents;
	private String star;
	private String date;
	
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
	public int getMemNum() {
		return memNum;
	}
	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	public String getBodySize() {
		return bodySize;
	}
	public void setBodySize(String bodySize) {
		this.bodySize = bodySize;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "{ \"num\" : \"" + num + "\", \"paidNum\" : \"" + paidNum + "\", \"memNum\" : \"" + memNum
				+ "\", \"bodySize\" : \"" + bodySize + "\", \"contents\" : \"" + contents + "\", \"star\" : \"" + star
				+ "\", \"date\" : \"" + date + "\"}";
	}
}
