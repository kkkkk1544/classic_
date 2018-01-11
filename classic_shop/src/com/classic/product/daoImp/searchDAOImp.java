package com.classic.product.daoImp;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.classic.product.dao.searchDAO;
import com.classic.product.dto.ProductDTO;

public class searchDAOImp implements searchDAO{

	private Connection conn=null;
	public searchDAOImp(Connection conn) {
		this.conn = conn;
	}
	//최신순, 인기순, 리뷰순, 높은가격, 낮은가격
	@Override
	public List<ProductDTO> searchProduct(String searchField, String searchValue, String searchArray) throws Exception {
		List<ProductDTO> itemSearchList = new ArrayList<ProductDTO>();
		String sql = "SELECT * FROM product WHERE "+searchField+" like '%"+searchValue+"%' ORDER BY "+searchArray;
		
		return itemSearchList;
	}
}
