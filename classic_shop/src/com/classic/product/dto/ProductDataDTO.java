package com.classic.product.dto;

public class ProductDataDTO {
/*	고유번호	num		NUMBER
	상품소개	info		VARCHAR2
	소재		material	VARCHAR2
	색상		colour		VARCHAR2
	사이즈		sizu		VARCHAR2
	세탁법		wash		VARCHAR2
	제조사		maker		VARCHAR2
	제조국		nation		VARCHAR2
	제조일		make_date	VARCHAR2
	공급사		supply		VARCHAR2
	품질보증기준	q_standard	VARCHAR2
	AS책임자	as_person	VARCHAR2
	as번호		as_phone	VARCHAR2
	상품무게	weight		VARCHAR2*/
	
	private int num;
	private String info;
	private String material;
	private String colour;
	private String sizu;
	private String wash;
	private String maker;
	private String nation;
	private String make_date;
	private String supply;
	private String q_standard;
	private String as_person;
	private String as_phone;
	private String weight;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public String getColour() {
		return colour;
	}
	public void setColour(String colour) {
		this.colour = colour;
	}
	public String getSizu() {
		return sizu;
	}
	public void setSizu(String sizu) {
		this.sizu = sizu;
	}
	public String getWash() {
		return wash;
	}
	public void setWash(String wash) {
		this.wash = wash;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getMake_date() {
		return make_date;
	}
	public void setMake_date(String make_date) {
		this.make_date = make_date;
	}
	public String getSupply() {
		return supply;
	}
	public void setSupply(String supply) {
		this.supply = supply;
	}
	public String getQ_standard() {
		return q_standard;
	}
	public void setQ_standard(String q_standard) {
		this.q_standard = q_standard;
	}
	public String getAs_person() {
		return as_person;
	}
	public void setAs_person(String as_person) {
		this.as_person = as_person;
	}
	public String getAs_phone() {
		return as_phone;
	}
	public void setAs_phone(String as_phone) {
		this.as_phone = as_phone;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	@Override
	public String toString() {
		return "\"num\":\"" + num + "\", \"info\":\"" + info + "\", \"material\":\"" + material
				+ "\", \"colour\":\"" + colour + "\", \"sizu\":\"" + sizu + "\", \"wash\":\"" + wash
				+ "\", \"maker\":\"" + maker + "\", \"nation\":\"" + nation + "\", \"make_date\":\""
				+ make_date + "\", \"supply\":\"" + supply + "\", \"q_standard\":\"" + q_standard
				+ "\", \"as_person\":\"" + as_person + "\", \"as_phone\":\"" + as_phone
				+ "\", \"weight\":\"" + weight + "\"";
	}
	
	
}
