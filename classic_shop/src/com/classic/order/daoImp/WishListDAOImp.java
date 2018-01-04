package com.classic.order.daoImp;

import java.sql.Connection;
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
				+ "count(w.product_num),"
				+ "(select price from product where num=w.product_num)as price" 
				+ "from product p ,wish w"
				+ "where p.num=w.product_num and w.mem_num=?" 
				+ "group by w.product_num";
		
		return wishList;
	}
	
}
