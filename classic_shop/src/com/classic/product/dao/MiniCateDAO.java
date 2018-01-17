package com.classic.product.dao;

import java.util.List;

import com.classic.product.dto.MiniCateDTO;

public interface MiniCateDAO {
	public List<MiniCateDTO> selectMiniCateList(int cate_num) throws Exception; 
	public List<MiniCateDTO> selectMiniCateListAll() throws Exception; 

}
