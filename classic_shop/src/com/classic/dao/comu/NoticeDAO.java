package com.classic.dao.comu;

import java.sql.Connection;
import java.util.List;

import com.classic.dto.NoticeDTO;

public interface NoticeDAO {
	
	public List<NoticeDTO> select(Connection conn) throws Exception; //1
	public NoticeDTO select(Connection conn, int deptno) throws Exception; //2
	
}