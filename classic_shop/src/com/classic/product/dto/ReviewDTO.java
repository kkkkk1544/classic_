package com.classic.product.dto;

public class ReviewDTO {
	/*
	 Name                                      Null?    Type
	----------------------------------------- -------- ----------------
	NUM                                       NOT NULL NUMBER(8)
	PAID_NUM                                           NUMBER(8)
	MEM_NUM                                            NUMBER(8)
	BODY_SIZE                                          VARCHAR2(10)
	CONTENT                                   NOT NULL VARCHAR2(4000)
	STAR                                      NOT NULL NUMBER(1)
	INDATE                                             DATE
	 */
	
	private int num;
	private int paid_num;
	private int mem_num;
	private String body_size;
	private String content;
	private int star;
	private String indate;
	private String id;
	
	
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
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public String getBody_size() {
		return body_size;
	}
	public void setBody_size(String body_size) {
		this.body_size = body_size;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	@Override
	public String toString() {
		return "{\"num\":\"" + num + "\", \"paid_num\":\"" + paid_num + "\", \"mem_num\":\"" + mem_num
				+ "\", \"body_size\":\"" + body_size + "\", \"content\":\"" + content + "\", \"star\":\""
				+ star + "\", \"indate\":\"" + indate + "\", \"id\":\"" + id + "\"}";
	}
	
	
	
}
