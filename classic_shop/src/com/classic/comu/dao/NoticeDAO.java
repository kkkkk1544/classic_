package com.classic.comu.dao;

import java.util.List;

import com.classic.common.dto.PagingDTO_syj;
import com.classic.comu.dto.NoticeDTO;



public interface NoticeDAO {
	
	/*public List<NoticeDTO> select(Connection conn) throws Exception; //1
	public NoticeDTO select(Connection conn, int deptno) throws Exception; //2
*/	
	public List<NoticeDTO> selectNotice() throws Exception; //notice list
	public NoticeDTO selectNotice(int num) throws Exception;
	
}