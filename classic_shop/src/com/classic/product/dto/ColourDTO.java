package com.classic.product.dto;

public class ColourDTO {
/*	고유 번호	num				number
	상품번호	product_num		number
	코드값	code				varchar2
	색상명	name				varchar2*/
	
	private int num;
	private int product_num;
	private String code;
	private String name;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getProduct_num() {
		return product_num;
	}
	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "{\"num\":\"" + num + "\", \"product_num\":\"" + product_num + "\", \"code\":\"" + code
				+ "\", \"name\":\"" + name + "\"}";
	}
	
	/*@Override
	public String toString() {
		return "[num=" + num + ", product_num=" + product_num + ", code=" + code + ", name=" + name + "]";
	}*/
	
	
	
}
