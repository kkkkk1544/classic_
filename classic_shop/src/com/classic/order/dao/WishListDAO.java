package com.classic.order.dao;

import java.sql.Connection;
import java.util.List;

import com.classic.order.dto.WishDTO;

public interface WishListDAO {
	public List<WishDTO> selectWish (int mem_num) throws Exception;
	public int allWishDel (int mem_num) throws Exception;
}
