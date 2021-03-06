package com.classic.product.dao;

import java.util.List;

import com.classic.product.dto.ProductDTO;

public interface ProductDAO {

	//public List<ProductDTO> searchProduct(ProductDTO productDTO, PagingDTO pagingDTO) throws Exception; //상품 검색
	public List<ProductDTO> selectProductList(int cate_num) throws Exception;
	public List<ProductDTO> selectMiniCateProductList(int cate_num) throws Exception;
	//public List<ProductDTO> selectProductList(pagingDTO p) throws Exception;
	public ProductDTO selectProduct(int num) throws Exception;
	
}
