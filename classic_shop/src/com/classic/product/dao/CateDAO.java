package com.classic.product.dao;

import java.util.List;

import com.classic.product.dto.CateDTO;

public interface CateDAO {
	public List<CateDTO> selectCateList() throws Exception; 
	public CateDTO selectCate(int num) throws Exception;
	public int selectCateNum(int mini_cate_num) throws Exception;

}
