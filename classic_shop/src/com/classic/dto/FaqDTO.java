package com.classic.dto;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;

public class FaqDTO {

	int num;
	int mem_num;
	String q_title;
	String a_content;

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

	public FaqDTO() {
	}

	public FaqDTO(int num, int mem_num, String q_title, String a_content) {
		this.num = num;
		this.mem_num = mem_num;
		this.q_title = q_title;
		this.a_content = a_content;

	}

	public String getq_title() {
		return q_title;
	}

	public void setq_title(String q_title) {
		this.q_title = q_title;
	}

	public String geta_content() {
		return a_content;
	}

	public void seta_content(String a_content) {
		this.a_content = a_content;
	}

	@Override
	public String toString() {
		return "{\"num\":\"" + num + "\",\"mem_num\":\"" + mem_num + "\",\"q_title\":\"" + q_title
				+ "\",\"a_content\":\"" + a_content + "\"}";
	}

	public void setSelect(ResultSet rs) throws SQLException {
		this.setNum(rs.getInt("num"));
		this.setMem_num(rs.getInt("mem_num"));
		this.seta_content(rs.getString("a_content"));
		this.setq_title(rs.getString("q_title"));

	}

}
