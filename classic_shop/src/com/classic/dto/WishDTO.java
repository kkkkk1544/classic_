package com.classic.dto;

public class WishDTO {
	/*NUM           NOT NULL NUMBER(8)
	PRODUCT_NUM              NUMBER(8)
	MEM_NUM                  NUMBER(8)
	INDATE                   DATE*/
	private int num;
	private int productNum;
	private int memNum;
	private String indate;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getProductNum() {
		return productNum;
	}
	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}
	public int getMemNum() {
		return memNum;
	}
	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	@Override
	public String toString() {
		return "{ \"num\" : \"" + num + "\", \"productNum\" : \"" + productNum + "\", \"memNum\" : \"" + memNum
				+ "\", \"indate\" : \"" + indate + "\"}";
	}
}
