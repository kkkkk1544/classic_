package com.classic.common.dto;

public class PagingDTO {
	
	private String pageNum_temp; //현재 페이지(문자열) : 파라미터로 받아오는 값
	private int pageNum; //현재 페이지(정수)
	private int totalRecord; //총 게시물 수
	private int rowNum=10; //페이지 당 보여줄 게시물 수
	private int pageBlock=5; //보여줄 페이징 블록 수 [1][2][3][4][5]
	private int totalBlock; //페이징 전체 블록 수 [1]...[n]
	private int startRecord;//시작 게시물
	private int endRecord;//끝 게시물
	private int startBlock; //시작 페이징
	private int endBlock; //끝 페이징
	
	public String getPageNum_temp() {
		return pageNum_temp;
	}
	public void setPageNum_temp(String pageNum_temp) {
		this.pageNum_temp = pageNum_temp;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getRowNum() {
		return rowNum;
	}
	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}
	public int getPageBlock() {
		return pageBlock;
	}
	public void setPageBlock(int pageBlock) {
		this.pageBlock = pageBlock;
	}
	public int getTotalBlock() {
		return totalBlock;
	}
	public void setTotalBlock(int totalBlock) {
		this.totalBlock = totalBlock;
	}
	public int getStartRecord() {
		return startRecord;
	}
	public void setStartRecord(int startRecord) {
		this.startRecord = startRecord;
	}
	public int getEndRecord() {
		return endRecord;
	}
	public void setEndRecord(int endRecord) {
		this.endRecord = endRecord;
	}
	public int getStartBlock() {
		return startBlock;
	}
	public void setStartBlock(int startBlock) {
		this.startBlock = startBlock;
	}
	public int getEndBlock() {
		return endBlock;
	}
	public void setEndBlock(int endBlock) {
		this.endBlock = endBlock;
	}
	@Override
	public String toString() {
		return "{\"pageNum_temp\":" + pageNum_temp + ", \"pageNum\":" + pageNum + ", \"totalRecord\":"
				+ totalRecord + ", \"rowNum\":" + rowNum + ", \"pageBlock\":" + pageBlock
				+ ", \"totalBlock\":" + totalBlock + ", \"startRecord\":" + startRecord + ", \"endRecord\":"
				+ endRecord + ", \"startBlock\":" + startBlock + ", \"endBlock\":" + endBlock
				+ "} ";
	}

}
