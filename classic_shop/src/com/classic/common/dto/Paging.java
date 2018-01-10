package com.classic.common.dto;

public class Paging {
	
	public static PagingDTO setPagingInfo(PagingDTO pagingDTO) {
		
		String pageNum_str = pagingDTO.getPageNum_str();
		if(pageNum_str==null) {
			pageNum_str = "1"; //현재 페이지 번호가 null이면 "1"페이지로 초기값 설정
			int pageNum = Integer.parseInt(pageNum_str);
			int pageCount = (pagingDTO.getTotal() / pagingDTO.getRowNum())
					+ (pagingDTO.getTotal() % pagingDTO.getRowNum() == 0? 0:1);
		}
		return pagingDTO;
	}

}
