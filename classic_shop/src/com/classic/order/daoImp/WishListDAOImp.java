package com.classic.order.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
<<<<<<< HEAD
import java.util.List;


import com.classic.order.dao.WistListDAO;
=======
import java.util.ArrayList;
import java.util.List;

import com.classic.order.dao.WishListDAO;
>>>>>>> 046dbb
import com.classic.order.dto.WishDTO;
import com.classic.util.ClassicDBConnection;

public class WishListDAOImp implements WishListDAO{
	/*test용
	 * public static void main(String[] args) {
		try {
			Connection conn = ClassicDBConnection.getConnection();
			List<WishDTO> wish = new ArrayList<WishDTO>();
			WishListDAO wishDao = new WishListDAOImp();
			wish = wishDao.selectWish(conn,22);
			System.out.println(wish);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}*/
	@Override
	public List<WishDTO> selectWish(Connection conn, int mem_num) throws Exception {
		List<WishDTO> wishList =new ArrayList<WishDTO>();
		String sql ="select (select name from product where num=w.product_num) as product_name, "
				+ "(select sizu from product where num=w.product_num) as sizu, "
				+ "(select name from colour where product_num=w.product_num) as colour, "
<<<<<<< HEAD
				+ "count(w.product_num) as c,"
				+ "(select price from product where num=w.product_num)as price" 
				+ "from product p ,wish w"
				+ "where p.num=w.product_num and w.mem_num=?" 
=======
				+ "count(w.product_num) as count, "
				+ "(select price from product where num=w.product_num)as price " 
				+ "from product p ,wish w "
				+ "where p.num=w.product_num and w.mem_num=? " 
>>>>>>> 046dbb
				+ "group by w.product_num";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, mem_num);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
<<<<<<< HEAD
			WishDTO wish= new WishDTO();
			wish.setProductName(rs.getString("product_name"));
			wish.setSizu(rs.getString("sizu"));
			wish.setColour(rs.getString("colour"));
			wish.setWishQuantity(rs.getInt("c"));
			wish.setPrice(rs.getInt("price"));
=======
			WishDTO wish = new WishDTO();
			wish.setProductName(rs.getString("product_name"));
			wish.setSizu(rs.getString("sizu"));
			wish.setColour(rs.getString("colour"));
			wish.setWishQuantity(rs.getInt("count"));
			wish.setPrice(rs.getInt("price"));
			wishList.add(wish);
>>>>>>> 046dbb
		}
		return wishList;
	}
	
}
