package com.classic.order.dto;

public class WishDTO {
	/*NUM           NOT NULL NUMBER(8)
	PRODUCT_NUM              NUMBER(8)
	MEM_NUM                  NUMBER(8)
	INDATE                   DATE*/
	
	private String productName;
	private int price;
	private int wishQuantity;
	private int num;
	private int productNum;
	private int memNum;
	private String indate;
	private String sizu;
	private String colour;
	
	
	public String getProductName() {return productName;}
	public void setProductName(String productName) {this.productName = productName;}
	public int getPrice() {return price;}
	public void setPrice(int price) {this.price = price;}
	public int getWishQuantity() {return wishQuantity;}
	public void setWishQuantity(int wishQuantity) {this.wishQuantity = wishQuantity;}
	public int getNum() {return num;}
	public void setNum(int num) {this.num = num;}
	public int getProductNum() {return productNum;}
	public void setProductNum(int productNum) {this.productNum = productNum;}
	public int getMemNum() {return memNum;}
	public void setMemNum(int memNum) {this.memNum = memNum;}
	public String getIndate() {return indate;}
	public void setIndate(String indate) {this.indate = indate;}
	public String getSizu() {return sizu;}
	public void setSizu(String sizu) {this.sizu = sizu;}
	public String getColour() {return colour;}
	public void setColour(String colour) {this.colour = colour;}
	@Override
	public String toString() {
		return "{ \"productName\" : \"" + productName + "\", \"price\" : " + price + ", \"wishQuantity\" : "
				+ wishQuantity + ", \"num\" : " + num + ", \"productNum\" : " + productNum
				+ ", \"memNum\" : " + memNum + ", \"indate\" : \"" + indate + "\", \"sizu\" : \"" + sizu
				+ "\", \"colour\" : \"" + colour + "\"}";
	}
	
}
