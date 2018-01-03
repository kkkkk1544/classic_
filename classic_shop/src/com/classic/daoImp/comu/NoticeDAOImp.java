package com.classic.daoImp.comu;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.classic.dao.comu.NoticeDAO;
import com.classic.dto.NoticeDTO;

public class NoticeDAOImp implements NoticeDAO{
	@Override
	public List<NoticeDTO> select(Connection conn) throws Exception {
		List<NoticeDTO> deptList = new ArrayList<NoticeDTO>();  //list 배열을 효율적으로 하는거!!일단이러케
		String sql="select * from notice"; //
		PreparedStatement pstmt = conn.prepareStatement(sql); //연결하고 sql던지고
		ResultSet rs = pstmt.executeQuery(); //결과값을 담고 나타내고
		while(rs.next()) { //복수니까 
			NoticeDTO notice = new NoticeDTO();
			notice.setNum(rs.getInt("num"));
			notice.setMem_num(rs.getInt("mem_num"));
			notice.setTitle(rs.getString("title"));
			notice.setContent(rs.getString("content"));
			notice.setCount(rs.getInt("count"));
			notice.setDate(rs.getDate("indate"));
			
			deptList.add(notice);
		}
		return deptList;
	}

	@Override
	public NoticeDTO select(Connection conn, int num) throws Exception {
		NoticeDTO notice = new NoticeDTO();
		String sql="select * from notice where num=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, num);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			notice.setNum(rs.getInt("num"));
			notice.setMem_num(rs.getInt("mem_num"));
			notice.setTitle(rs.getString("title"));
			notice.setContent(rs.getString("content"));
			notice.setCount(rs.getInt("count"));
			notice.setDate(rs.getDate("indate"));
		}
		return notice;
	}

}
