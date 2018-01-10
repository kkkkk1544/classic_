package com.classic.order.dto;

public class BankDTO {
	/*Name                    Null?    Type
	----------------------- -------- ---------------
	NUM                     NOT NULL NUMBER(8)
	BANK_NAME                        VARCHAR2(8)
	BANK_NUM                NOT NULL NUMBER(12)
	NAME                    NOT NULL VARCHAR2(10)*/
	
	private int num;
	private String bank_name;
	private int bank_num;
	private String name;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getBank_name() {
		return bank_name;
	}
	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}
	public int getBank_num() {
		return bank_num;
	}
	public void setBank_num(int bank_num) {
		this.bank_num = bank_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "{ \"num\":\"" + num + "\", \"bank_name\":\"" + bank_name + "\", \"bank_num\":\"" + bank_num
				+ "\", \"name\":\"" + name + "\"}";
	}
	
	
}
