package com.classic.product.dao;

import java.util.ArrayList;
import java.util.List;

import com.classic.product.dto.ProductDataDTO;

public interface ProductDataDAO {
	public List<ProductDataDTO> selectProductDataList() throws Exception;
	public ProductDataDTO selectProductData(int num) throws Exception;
	
}
