package com.classic.dao.comu;

import java.sql.Connection;
import java.util.List;

import com.classic.dto.FaqDTO;

public interface FaqDAO {
	// Create Read Update Delete
	// InsertSelectUpdateDelete -> CRUD

	Connection conn = null;

	public List<FaqDTO> selectList(Connection conn) throws Exception;

	public FaqDTO select(int num) throws Exception;

	public int delete(int num) throws Exception;

	public int update(FaqDTO faq) throws Exception;

	public int insert(FaqDTO faq) throws Exception;

}
