package com.classic.comu.dto;

public class FaqDTO {

	/*
Name                Null?    		Type
---------------- -------- 		----------------
NUM					NOT NULL 	NUMBER(8)
MEM_NUM			NOT NULL 	NUMBER(8)
Q_TITLE				NOT NULL 	VARCHAR2(100)
A_CONTENT		NOT NULL 	VARCHAR2(4000)
	 */
	
	private int num;
	private int mem_num;
	private String q_title;
	private String a_content;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public String getQ_title() {
		return q_title;
	}
	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}
	public String getA_content() {
		return a_content;
	}
	public void setA_content(String a_content) {
		this.a_content = a_content;
	}
	@Override
	public String toString() {
		return "{\"num\":\"" + num + "\", \"mem_num\":\"" + mem_num + "\", \"q_title\":\"" + q_title
				+ "\", \"a_content\":\"" + a_content + "\"} ";
	}
}
