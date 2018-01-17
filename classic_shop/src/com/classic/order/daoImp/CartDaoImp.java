package com.classic.order.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.classic.order.dao.CartDao;
import com.classic.order.dto.WishDTO;

public class CartDaoImp implements CartDao{
	private Connection conn;
	public CartDaoImp(Connection conn) {
		this.conn = conn;
	}
	@Override
	public WishDTO fromWishMoveCart(int mem_num, int product_num) throws Exception {
		WishDTO product = null; 
		String sql = "select (select name from product where num=w.product_num) as product_name, "
					+ "(select num from product where num=w.product_num) as product_num, "
					+ "count(w.product_num) as count, "
					+ "(select price from product where num=w.product_num)as price "
					+ "from product p ,wish w "
					+ "where p.num=w.product_num and w.mem_num=? and w.product_num =? "
					+ "group by w.product_num";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, mem_num);
		pstmt.setInt(2, product_num);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			product = new WishDTO();
			product.setProductName(rs.getString("product_name"));
			product.setProductNum(rs.getInt("product_num"));
			product.setWishQuantity(rs.getInt("count"));
			product.setPrice(rs.getInt("price"));
		}
		return product;
	}

}
