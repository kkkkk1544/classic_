package com.classic.member.dto;

import java.util.Date;

public class MemberDTO {
	
	/*
	 	 Name                                      				Null?    		Type
 		----------------------------------------- 	-------- 	-------------
		 NUM                                      				NOT NULL 	NUMBER(8)
		 ID                                                 						VARCHAR2(12)
		 PW                                        				NOT NULL	VARCHAR2(12)
		 PHONE                                              						VARCHAR2(14)
		 MAIL                                               						VARCHAR2(50)
		 GRADE                                    				NOT NULL 	NUMBER(1)
		 INDATE																	DATE
	*/
	
	private int num;
	private String id;
	private String pw;
	private String phone;
	private String mail;
	private int grade;
	private Date indate;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public Date getIndate() {
		return indate;
	}
	public void setIndate(Date indate) {
		this.indate = indate;
	}
	@Override
	public String toString() {
		return "{\"num\":\"" + num + "\", \"id\":\"" + id + "\", \"pw\":\"" + pw + "\", \"phone\":\"" + phone
				+ "\", \"mail\":\"" + mail + "\", \"grade\":\"" + grade + "\", \"indate\":\"" + indate + "\"} ";
	}
	
	
}