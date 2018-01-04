package com.classic.comu.dto;

import java.util.Date;

public class QnaReplyDTO {

	/*
		이름      			널?       		유형             
		------- 			-------- 	-------------- 
		NUM    			NOT NULL 	NUMBER(8)      
		QNA_NUM          				NUMBER(8)      
		MEM_NUM          				NUMBER(8)      
		CONTENT 		NOT NULL 	VARCHAR2(4000) 
		INDATE  			NOT NULL 	DATE  
	 */

	private int num;
	private int qna_num;
	private int mem_num;
	private String content;
	private Date indate;
	
	private String name;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getQna_num() {
		return qna_num;
	}

	public void setQna_num(int qna_num) {
		this.qna_num = qna_num;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getIndate() {
		return indate;
	}

	public void setIndate(Date indate) {
		this.indate = indate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "{\"num\" : \"" + num + "\", \"qna_num\" : \"" + qna_num + "\", \"mem_num\" : \"" + mem_num
				+ "\", \"content\" : \"" + content + "\", \"indate\" : \"" + indate + "\", \"name\" : \"" + name
				+ "\"}";
	}
	

}
