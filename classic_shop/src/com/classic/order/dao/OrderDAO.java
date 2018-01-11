package com.classic.order.dao;

import java.sql.Connection;
import java.util.List;

import com.classic.order.dto.ListDTO;

public interface OrderDAO {
	public List<ListDTO> ListSelect(int mem_num) throws Exception;
	public List<ListDTO> DetailSelect() throws Exception;

}
