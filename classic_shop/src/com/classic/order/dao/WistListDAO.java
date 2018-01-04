package com.classic.order.dao;

import java.sql.Connection;
import java.util.List;

import com.classic.order.dto.WishDTO;

public interface WistListDAO {
	public List<WishDTO> selectWish (Connection conn,int mem_num) throws Exception; 
}
