package com.classic.comu.dto;

import java.util.Date;

public class QnaDTO {
/*
			Name					Null?			Type
			--------------		-------- 	-------
			NUM                  NOT NULL 	NUMBER(8)
			MEM_NUM							NUMBER(8)
			SUBJECT				NOT NULL 	NUMBER(1)
			CONTENT			NOT NULL 	VARCHAR2(4000)
			COUNT				NOT NULL 	NUMBER(8)
			SECURE				NOT NULL 	NUMBER(1)
			PWD									VARCHAR2(30)
			INDATE				NOT NULL 	DATE
	*/

	
	private int num;
	private int mem_num;
	private int subject;
	private String content;
	private int count;
	private int secure;
	private String pwd;
	private Date indate;
	
	private String name;
	
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
	public int getSubject() {
		return subject;
	}
	public void setSubject(int subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getSecure() {
		return secure;
	}
	public void setSecure(int secure) {
		this.secure = secure;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Date getIndate() {
		return indate;
	}
	public void setIndate(Date indate) {
		this.indate = indate;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "{\"num\" : \"" + num + "\", \"mem_num\" : \"" + mem_num + "\", \"subject\" : \"" + subject
				+ "\", \"content\" : \"" + content + "\", \"count\" : \"" + count + "\", \"secure\" : \"" + secure
				+ "\", \"pwd\" : \"" + pwd + "\", \"indate\" : \"" + indate + "\", \"name\" : \"" + name + "\"}";
	}
}
