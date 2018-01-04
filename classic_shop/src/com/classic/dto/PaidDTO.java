package com.classic.dto;

public class PaidDTO {
	/*NUM              NOT NULL NUMBER(8)
	MEM_NUM                     NUMBER(8)
	PRODUCT_NUM                 NUMBER(8)
	COUPON_NUM                  NUMBER(8)
	ORDER_NUM          NOT NULL NUMBER(16)
	NAME               NOT NULL VARCHAR2(20)
	PHONE              NOT NULL NUMBER(11)
	ZIP_CODE           NOT NULL VARCHAR2(21)
	BASE_ADDR          NOT NULL VARCHAR2(200)
	DETAIL_ADDR        NOT NULL VARCHAR2(200)
	MEMO                        VARCHAR2(300)
	PAID_DATE                   DATE
	PAY_WITH           NOT NULL NUMBER(1)
	ORDER_MONEY        NOT NULL NUMBER(12)
	PAYMENT            NOT NULL NUMBER(12)
	ORDER_DATE         NOT NULL DATE
	ORDER_STATE        NOT NULL NUMBER(1)
	DEPOSIT_NAME       NOT NULL VARCHAR2(20)*/
	private int num;
	private int memNum;
	private int productNum;
	private int couponNum;
	private int orderNum;
	private String name;
	private int phone;
	private String zipCode;
	private String baseAddr;
	private String detailAddr;
	private String memo;
	private String paidDate;
	private int payWith;
	private int orderMoney;
	private int payment;
	private String orderDate;
	private int orderState;
	private String depositName;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getMemNum() {
		return memNum;
	}
	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	public int getProductNum() {
		return productNum;
	}
	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}
	public int getCouponNum() {
		return couponNum;
	}
	public void setCouponNum(int couponNum) {
		this.couponNum = couponNum;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getBaseAddr() {
		return baseAddr;
	}
	public void setBaseAddr(String baseAddr) {
		this.baseAddr = baseAddr;
	}
	public String getDetailAddr() {
		return detailAddr;
	}
	public void setDetailAddr(String detailAddr) {
		this.detailAddr = detailAddr;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getPaidDate() {
		return paidDate;
	}
	public void setPaidDate(String paidDate) {
		this.paidDate = paidDate;
	}
	public int getPayWith() {
		return payWith;
	}
	public void setPayWith(int payWith) {
		this.payWith = payWith;
	}
	public int getOrderMoney() {
		return orderMoney;
	}
	public void setOrderMoney(int orderMoney) {
		this.orderMoney = orderMoney;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getOrderState() {
		return orderState;
	}
	public void setOrderState(int orderState) {
		this.orderState = orderState;
	}
	public String getDepositName() {
		return depositName;
	}
	public void setDepositName(String depositName) {
		this.depositName = depositName;
	}
	@Override
	public String toString() {
		return "{ \"num\" : \"" + num + "\", \"memNum\" : \"" + memNum + "\", \"productNum\" : \"" + productNum
				+ "\", \"couponNum\" : \"" + couponNum + "\", \"orderNum\" : \"" + orderNum + "\", \"name\" : \"" + name
				+ "\", \"phone\" : \"" + phone + "\", \"zipCode\" : \"" + zipCode + "\", \"baseAddr\" : \"" + baseAddr
				+ "\", \"detailAddr\" : \"" + detailAddr + "\", \"memo\" : \"" + memo + "\", \"paidDate\" : \""
				+ paidDate + "\", \"payWith\" : \"" + payWith + "\", \"orderMoney\" : \"" + orderMoney
				+ "\", \"payment\" : \"" + payment + "\", \"orderDate\" : \"" + orderDate + "\", \"orderState\" : \""
				+ orderState + "\", \"depositName\" : \"" + depositName + "\"}";
	}
	
	
	
	
}
