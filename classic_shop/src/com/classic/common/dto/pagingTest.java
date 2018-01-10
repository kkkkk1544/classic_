package com.classic.common.dto;

public class pagingTest {
	
	private int page; //유일하게 주어지는 값(parameter) //현재 페이지가 몇번 페이지다
	private int row; //설정되는 값 //한 페이지당 보이는 게시물 수
	private int start; //계산에 사용되는 값 //한 페이지에 출력되는 rownum의 시작번호
	private int end; //계산에 사용되는 값 //한 페이지에 출력되는 rownum의 끝번호
	
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
		//개발자가 재정의 해야 되는 부분
		this.start = row*(page-1)+1;
		this.end = row*page;
	}
	public int getRow() {
		return row;
	}
	public void setRow(int row) {
		this.row = row;
	}
	public int getStart() {
		return start;
	}
	public int getEnd() {
		return end;
	}
	
	

}
