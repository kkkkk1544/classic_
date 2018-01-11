package com.classic.product.dto;

public class SizuDTO {
	/*
	num		 number(8) 
	sizu 		varchar2(10),
	product_	num	 number(8) 
	*/
	int num;
	String sizu;
	int product_num;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getSizu() {
		return sizu;
	}
	public void setSizu(String sizu) {
		this.sizu = sizu;
	}
	public int getProduct_num() {
		return product_num;
	}
	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}
	@Override
	public String toString() {
		return "\"num\":\"" + num + "\", \"sizu\":\"" + sizu + "\", \"product_num\":\"" + product_num
				+ "\"";
	}
	
	
}
