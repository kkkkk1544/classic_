package com.classic.member.dto;

import java.sql.Date;

public class MileageDTO {
/*
		 Name                                      Null?    Type
		 ----------------------------------------- -------- ----------------
		 NUM                                       NOT NULL NUMBER(8)
		 MEM_NUM                                            NUMBER(8)
		 PAID_NUM                                           NUMBER(8)
		 NOW_MILEAGE                               NOT NULL NUMBER(12)
		 INDATE                                             DATE
		 STATE                                     NOT NULL NUMBER(1)
*/
	private int num;
	private int mem_num;
	private int paid_num;
	private int now_mileage;
	private Date indate;
	private int state;
	
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
	public int getPaid_num() {
		return paid_num;
	}
	public void setPaid_num(int paid_num) {
		this.paid_num = paid_num;
	}
	public int getNow_mileage() {
		return now_mileage;
	}
	public void setNow_mileage(int now_mileage) {
		this.now_mileage = now_mileage;
	}
	public Date getIndate() {
		return indate;
	}
	public void setIndate(Date indate) {
		this.indate = indate;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "MileageDTO [num=" + num + ", mem_num=" + mem_num + ", paid_num=" + paid_num + ", now_mileage="
				+ now_mileage + ", indate=" + indate + ", state=" + state + "]";
	}
}
