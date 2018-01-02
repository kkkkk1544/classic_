package com.classic.daoImp.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.classic.dao.member.MemberDAO;
import com.classic.dto.MemberDTO;

public class MemberDAOImp implements MemberDAO{

//주연 시작
	@Override
	public MemberDTO memberSelect(String id, String pw) throws Exception{
		MemberDTO memDTO = null;
		String sql = "SELECT id, pw FROM member WHERE id=? AND pw=?";
		Connection conn = null;
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			memDTO = new MemberDTO();
			memDTO.setId(rs.getString("id"));
			memDTO.setPw(rs.getString("pw"));
		}
		return memDTO;
	}

	@Override
	public MemberDTO memberSelect(String id) throws Exception {
		MemberDTO memDTO = null;
		String sql = "SELECT id FROM member WHERE id=?";
		Connection conn = null;
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			memDTO = new MemberDTO();
			memDTO.setId(rs.getString("id"));
		}
		return memDTO;
	}

	@Override
	public int memberInsert(MemberDTO memDTO) throws Exception {
		int insert = 0;
		String sql = "INSERT INTO member (num, id, pw, phone, mail, grade, indate) "
				+ "VALUES(member_seq.nextval, ?, ?, ?, ?, 1, sysdate)";
		Connection conn = null;
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, memDTO.getId());
		pstmt.setString(2, memDTO.getPw());
		pstmt.setString(3, memDTO.getPhone());
		pstmt.setString(4, memDTO.getMail());
		insert = pstmt.executeUpdate();
		return insert;
	}
//주연 끝	

}
