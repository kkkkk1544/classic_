package com.classic.product.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.classic.common.dto.PagingDTO;
import com.classic.product.dao.ProductDAO;
import com.classic.product.dto.ProductDTO;

public class ProductDAOImp implements ProductDAO{
	
	private Connection conn;
	public ProductDAOImp(Connection conn) {
		this.conn = conn;
	}

	@Override
	public List<ProductDTO> searchProduct(ProductDTO productDTO, PagingDTO pagingDTO) throws Exception {
		List<ProductDTO> productList = new ArrayList<ProductDTO>();
		String sql = "SELECT * FROM product WHERE"+ pagingDTO.getKeyword() +" like ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "%" + pagingDTO.getKeyValue() + "%");
		rs = pstmt.executeQuery();
		while(rs.next()) {
			
		}
		return productList;
	}

}
