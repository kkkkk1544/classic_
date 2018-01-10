package com.classic.order.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.classic.order.dao.WishListDAO;
import com.classic.order.dto.WishDTO;

public class WishListDAOImp implements WishListDAO{
	/*test�슜
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
	private Connection conn;
	public WishListDAOImp(Connection conn) {
		this.conn = conn;
	}
	@Override
	public List<WishDTO> selectWish(int mem_num) throws Exception {
		List<WishDTO> wishList =new ArrayList<WishDTO>();
		String sql ="select (select name from product where num=w.product_num) as product_name, "
				+ "(select num from product where num=w.product_num) as product_num ,"
				+ "(select sizu from product where num=w.product_num) as sizu, "
				+ "(select name from colour where product_num=w.product_num) as colour, "
				+ "count(w.product_num) as count, "
				+ "(select price from product where num=w.product_num)as price " 
				+ "from product p ,wish w "
				+ "where p.num=w.product_num and w.mem_num=? " 
				+ "group by w.product_num";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, mem_num);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			WishDTO wish = new WishDTO();
			wish.setProductName(rs.getString("product_name"));
			wish.setProductNum(rs.getInt("product_num"));
			wish.setSizu(rs.getString("sizu"));
			wish.setColour(rs.getString("colour"));
			wish.setWishQuantity(rs.getInt("count"));
			wish.setPrice(rs.getInt("price"));
			wishList.add(wish);
		}
		return wishList;
	}

	@Override
	public int WishDel(int mem_num) throws Exception {
	//전체삭제
		int delete = 0;
		String sql = "delete from wish where mem_num=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, mem_num);
		delete = pstmt.executeUpdate();
		return delete;
	}
	
	@Override
	public int WishDel(int mem_num,int product_num) throws Exception {
	//선택된 wishList만 삭제
		int delete = 0;
		String sql="delete from wish where mem_num = ? and product_num = ? ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, mem_num);
		pstmt.setInt(2, product_num);
		delete = pstmt.executeUpdate();
		return delete;
	}
	
}
