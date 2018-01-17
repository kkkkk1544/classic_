package com.classic.product.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.classic.common.dto.PagingDTO;
import com.classic.product.dao.searchDAO;
import com.classic.product.dto.ProductDTO;

public class searchDAOImp implements searchDAO{

	private Connection conn=null;
	public searchDAOImp(Connection conn) {
		this.conn = conn;
	}
	//최신순, 인기순, 리뷰순, 높은가격, 낮은가격
	//최신순 : indate DESC
	//인기순 : 주문에서 끌어와야하나?
	//리뷰순 : 리뷰에서 끌어와야하나?
	//높은 : price DESC
	//낮은 : price 
	@Override
	public List<ProductDTO> searchProduct(PagingDTO pagingDTO, String searchField, String searchValue, String searchArray) throws Exception {
		List<ProductDTO> itemSearchList = new ArrayList<ProductDTO>();
		String sql = "SELECT * FROM"
				+ " (SELECT ROWNUM row_num, goods.* FROM"
				+ " (SELECT * FROM product"
				+ " WHERE "+searchField+" like '%"+searchValue+"%' ORDER BY "+searchArray+") goods"
				+ " WEHRE ROWNUM <= ?)"
				+ " WHERE row_num >= ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, pagingDTO.getEndRecord());
		pstmt.setInt(2, pagingDTO.getStartRecord());
		rs = pstmt.executeQuery();
		while(rs.next()) {
			ProductDTO productDTO = new ProductDTO();
			productDTO.setRow_num(rs.getInt("row_num"));
			productDTO.setNum(rs.getInt("num"));
			productDTO.setCode(rs.getString("code"));
			productDTO.setCate_num(rs.getInt("cate_num"));
			productDTO.setName(rs.getString("name"));
			productDTO.setSub_info(rs.getString("sub_info"));
			productDTO.setMain_info(rs.getString("main_info"));
			productDTO.setPrice(rs.getInt("price"));
			productDTO.setBuy_price(rs.getInt("buy_price"));
			productDTO.setTotal_pcs(rs.getInt("total_pcs"));
			productDTO.setGuide_num(rs.getInt("guide_num"));
			productDTO.setData_num(rs.getInt("data_num"));
			productDTO.setSell_ox(rs.getInt("sell_ox"));
			productDTO.setOut_ox(rs.getInt("out_ox"));
			productDTO.setIndate(rs.getDate("indate"));
			productDTO.setSale(rs.getInt("sale"));
			productDTO.setOut_time(rs.getDate("out_date"));
			itemSearchList.add(productDTO);
		}
		
		return itemSearchList;
	}
	@Override
	public int searchCount(String searchField, String searchValue) throws Exception {
		int searchTotal = 0;
		String sql = "SELECT COUNT(*) as search FROM product WHERE "+searchField+" like '%"+searchValue+"%' ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			searchTotal = rs.getInt("search");
		}
		return searchTotal;
	}
}
