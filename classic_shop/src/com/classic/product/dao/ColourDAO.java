package com.classic.product.dao;

import java.util.List;

import com.classic.product.dto.ColourDTO;

public interface ColourDAO {
	
	public List<ColourDTO> selectColourList(int product_num) throws Exception;
	public List<ColourDTO> selectCateListColours(int cate_num) throws Exception;
	public List<ColourDTO> selectMiniCateListColours(int cate_num) throws Exception;
	
	//public String selectProductColour(int product_num) throws Exception;
}
