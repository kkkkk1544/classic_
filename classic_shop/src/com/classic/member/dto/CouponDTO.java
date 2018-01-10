package com.classic.member.dto;

import java.sql.Date;

public class CouponDTO {
/*
 		 Name                                      Null?    Type
		 ----------------------------------------- -------- -------------
		 NUM                                       NOT NULL NUMBER(8)
		 MEM_NUM                                            NUMBER(8)
		 LOG_NUM                                            NUMBER(8)
		 STATE                                              NUMBER(1)
		 INDATE                                             DATE
*/
	private int num;
	private int mem_num;
	private int log_num;
	private int state;
	private Date indate;
	
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
	public int getLog_num() {
		return log_num;
	}
	public void setLog_num(int log_num) {
		this.log_num = log_num;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Date getIndate() {
		return indate;
	}
	public void setIndate(Date indate) {
		this.indate = indate;
	}
	@Override
	public String toString() {
		return "CouponDTO [num=" + num + ", mem_num=" + mem_num + ", log_num=" + log_num + ", state=" + state
				+ ", indate=" + indate + "]";
	}
}
