package com.classic.product.service;

import java.util.List;

import com.classic.common.dto.PagingDTO;
import com.classic.product.dto.ProductDTO;

public interface ProductService {
	public List<ProductDTO> searchItems(PagingDTO pagingDTO, String searchField, String searchValue, String searchArray);
	public int searchTotal(String searchField, String searchValue);
}
