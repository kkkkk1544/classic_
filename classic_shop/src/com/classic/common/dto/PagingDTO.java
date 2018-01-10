package com.classic.common.dto;

public class PagingDTO {
	private String keyword; //검색 컬럼
	private String keyValue; //검색 값
	private int total; //게시물 총 개수
	private String pageNum_str; //◀[1][2][3][4][5]▶ 현재 페이지 번호(문자열)
	private int pageNum; //현재 페이지 번호(정수)
	private int pageBlock; //페이징 블럭 수◀[1][2][3][4][5]▶ --> [1] 얘가 블럭 한 개
	private int pageCount; //페이징 블럭 전체 수 ◀[1][2][3][4][5]...[10] --> 10개
	private int rowNum; //페이지당 보여줄 게시물 수
	private int startRowNum; //한 페이지에 보이는 게시물의 첫번호
	private int endRowNum; //한 페이지에 보이는 게시물의 끝번호
	private int startPage; //시작 페이지 ◀[1][2][3][4][5]▶ --> [1]
	private int endPage; //끝 페이지 ◀[1][2][3][4][5]...[10]▶ --> [10]
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getKeyValue() {
		return keyValue;
	}
	public void setKeyValue(String keyValue) {
		this.keyValue = keyValue;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public String getPageNum_str() {
		return pageNum_str;
	}
	public void setPageNum_str(String pageNum_str) {
		this.pageNum_str = pageNum_str;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getPageBlock() {
		return pageBlock;
	}
	public void setPageBlock(int pageBlock) {
		this.pageBlock = pageBlock;
		this.pageBlock = 5;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getRowNum() {
		return rowNum;
	}
	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
		this.rowNum = 10;
	}
	public int getStartRowNum() {
		return startRowNum;
	}
	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}
	public int getEndRowNum() {
		return endRowNum;
	}
	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	
	
	/*
	startRowNum = (pageNum-1)*10+1;
	endRowNum = pageNum*10;
	
	temp = (pageNum-1)%10;
	startPage = pageNum - temp;
	endPage = startPage+4;
	//ex) pageNum = 31
	 * temp = 3
	 * startPage = 31 - 3 => 28
	 * endPage = 28+4 => 32
	 * 즉, [28][29][30][31][32]가 페이징 블럭이 됨
	 * 왜 4를 넣느냐면, 우린 페이징 블럭 전체 수를 5개로 정했으니까!
	 
	 if(endPage > pageCount) endPage = pageCount;
	 이전(◀[1][2]..) : if(startPage > 5) pageNum = startPage-5
	 다음(..[4][5]▶) : if(endPage < pageCount) pageNum = startPage+5
	 
	 
	 */
	
	
}
