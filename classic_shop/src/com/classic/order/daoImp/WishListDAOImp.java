package com.classic.order.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;


import com.classic.order.dao.WistListDAO;
import com.classic.order.dto.WishDTO;

public class WishListDAOImp implements WistListDAO{

	@Override
	public List<WishDTO> selectWish(Connection conn, int mem_num) throws Exception {
		List<WishDTO> wishList =null;
		String sql ="select (select name from product where num=w.product_num) as product_name,"
				+ "(select sizu from product where num=w.product_num) as sizu, "
				+ "(select name from colour where product_num=w.product_num) as colour, "
				+ "count(w.product_num) as c,"
				+ "(select price from product where num=w.product_num)as price" 
				+ "from product p ,wish w"
				+ "where p.num=w.product_num and w.mem_num=?" 
				+ "group by w.product_num";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, mem_num);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			WishDTO wish= new WishDTO();
			wish.setProductName(rs.getString("product_name"));
			wish.setSizu(rs.getString("sizu"));
			wish.setColour(rs.getString("colour"));
			wish.setWishQuantity(rs.getInt("c"));
			wish.setPrice(rs.getInt("price"));
		}
		return wishList;
	}
	
}
