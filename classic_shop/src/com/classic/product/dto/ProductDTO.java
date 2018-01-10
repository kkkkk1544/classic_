package com.classic.product.dto;

import java.sql.ResultSet;
import java.util.Date;

public class ProductDTO {

	/*
		이름        					널?       		유형             
		--------- 				-------- 	-------------- 
		NUM       				NOT NULL 	NUMBER(8)      
		CODE               					VARCHAR2(16)   
		CATE_NUM           					NUMBER(8)      
		NAME      				NOT NULL 	VARCHAR2(30)   
		SUB_INFO  				NOT NULL 	VARCHAR2(300)  
		MAIN_INFO 				NOT NULL 	VARCHAR2(4000) 
		PRICE     				NOT NULL 	NUMBER(12)     
		BUY_PRICE          					NUMBER(12)     
		SIZU      				NOT NULL 	VARCHAR2(20)   
		TOTAL_PCS 			NOT NULL 	NUMBER(4)      
		GUIDE_NUM          					NUMBER(8)      
		DATA_NUM           					NUMBER(8)      
		SELL_OX   				NOT NULL 	NUMBER(1)      
		OUT_OX    				NOT NULL 	NUMBER(1)      
		INDATE             						DATE           
		SALE               						NUMBER(2)      
		OUT_TIME           					DATE	 
	 */

	//toString은 아직 안만듦
	
	private int num;
	private String code;
	private int cate_num;
	private String name;
	private String sub_info;
	private String main_info;
	private int price;
	private int buy_price;
	private String sizu;
	private int total_pcs;
	private int guide_num;
	private int data_num;
	private int sell_ox;
	private int out_ox;
	private Date indate;
	private int sale;
	private Date out_time;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public int getCate_num() {
		return cate_num;
	}
	public void setCate_num(int cate_num) {
		this.cate_num = cate_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSub_info() {
		return sub_info;
	}
	public void setSub_info(String sub_info) {
		this.sub_info = sub_info;
	}
	public String getMain_info() {
		return main_info;
	}
	public void setMain_info(String main_info) {
		this.main_info = main_info;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getBuy_price() {
		return buy_price;
	}
	public void setBuy_price(int buy_price) {
		this.buy_price = buy_price;
	}
	public String getSizu() {
		return sizu;
	}
	public void setSizu(String sizu) {
		this.sizu = sizu;
	}
	public int getTotal_pcs() {
		return total_pcs;
	}
	public void setTotal_pcs(int total_pcs) {
		this.total_pcs = total_pcs;
	}
	public int getGuide_num() {
		return guide_num;
	}
	public void setGuide_num(int guide_num) {
		this.guide_num = guide_num;
	}
	public int getData_num() {
		return data_num;
	}
	public void setData_num(int data_num) {
		this.data_num = data_num;
	}
	public int getSell_ox() {
		return sell_ox;
	}
	public void setSell_ox(int sell_ox) {
		this.sell_ox = sell_ox;
	}
	public int getOut_ox() {
		return out_ox;
	}
	public void setOut_ox(int out_ox) {
		this.out_ox = out_ox;
	}
	public Date getIndate() {
		return indate;
	}
	public void setIndate(Date indate) {
		this.indate = indate;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public Date getOut_time() {
		return out_time;
	}
	public void setOut_time(Date out_time) {
		this.out_time = out_time;
	}
	
	//이거 쓰지 말기!
	public void setSelect(ResultSet rs) throws Exception{	
		this.setBuy_price(rs.getInt("buy_price"));
		this.setCate_num(rs.getInt("cate_num"));
		this.setCode(rs.getString("code"));
		this.setData_num(rs.getInt("data_num"));
		this.setGuide_num(rs.getInt("guide_num"));
		this.setIndate(rs.getDate("indate"));
		this.setMain_info(rs.getString("main_info"));
		this.setSizu(rs.getString("sizu"));
		this.setName(rs.getString("name"));
		this.setNum(rs.getInt("num"));
		this.setOut_ox(rs.getInt("out_ox"));
		this.setOut_time(rs.getDate("out_time"));
		this.setPrice(rs.getInt("price"));
		this.setSale(rs.getInt("sale"));
		this.setSell_ox(rs.getInt("sell_ox"));
		this.setSub_info(rs.getString("sub_info"));
		this.setTotal_pcs(rs.getInt("total_pcs"));	
	}
	
	@Override
	public String toString() {
		return "{\"num\":\"" + num + "\", \"code\":\"" + code + "\", \"cate_num\":\"" + cate_num
				+ "\", \"name\":\"" + name + "\", \"sub_info\":\"" + sub_info + "\", \"main_info\":\""
				+ main_info + "\", \"price\":\"" + price + "\", \"buy_price\":\"" + buy_price
				+ "\", \"sizu\":\"" + sizu + "\", \"total_pcs\":\"" + total_pcs + "\", \"guide_num\":\""
				+ guide_num + "\", \"data_num\":\"" + data_num + "\", \"sell_ox\":\"" + sell_ox
				+ "\", \"out_ox\":\"" + out_ox + "\", \"indate\":\"" + indate + "\", \"sale\":\"" + sale
				+ "\", \"out_time\":\"" + out_time + "\"}";
	}
	
	
}
