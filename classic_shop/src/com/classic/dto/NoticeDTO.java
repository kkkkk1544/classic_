package com.classic.dto;

import java.sql.Date;

public class NoticeDTO {

	private int num;
	private int mem_num;
	private String title;
	private String content;
	private int count;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String loc) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Date getDate() {
		return indate;
	}
	public void setDate(Date indate) {
		this.indate = indate;
	}
	@Override
	public String toString() {
		return "NoticeDTO [num=" + num + ", mem_num=" + mem_num + ", title=" + title + ", content=" + content + ", indate=" + indate + "]";
	}
	
}
