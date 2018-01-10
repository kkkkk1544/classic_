package com.classic.product.dao;

import java.util.List;

import com.classic.common.dto.PagingDTO;
import com.classic.product.dto.ProductDTO;

public interface ProductDAO {

	public List<ProductDTO> searchProduct(ProductDTO productDTO, PagingDTO pagingDTO) throws Exception; //상품 검색
}
