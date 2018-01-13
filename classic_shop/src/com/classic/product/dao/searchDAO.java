package com.classic.product.dao;

import java.util.List;

import com.classic.common.dto.PagingDTO;
import com.classic.product.dto.ProductDTO;

public interface searchDAO {
	
	//나중에 반장님이랑 합칠 것
	public List<ProductDTO> searchProduct(PagingDTO pagingDTO, String searchField, String searchValue, String searchArray) throws Exception;
	public int searchCount(String searchField, String searchValue) throws Exception; //검색한 글 수
	
}
