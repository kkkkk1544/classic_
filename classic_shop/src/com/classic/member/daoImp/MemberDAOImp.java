package com.classic.member.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.classic.member.dao.MemberDAO;
import com.classic.member.dto.MemberDTO;

public class MemberDAOImp implements MemberDAO{
	
	private Connection conn;
	public MemberDAOImp(Connection conn) {
		this.conn = conn;
	}
	
	@Override
	public MemberDTO memberSelect(String id, String pw) throws Exception {
		MemberDTO memDTO = null;
		String sql = "SELECT * FROM member WHERE id=? AND pw=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			memDTO = new MemberDTO();
			memDTO.setNum(rs.getInt("num"));
			memDTO.setId(rs.getString("id"));
			memDTO.setPw(rs.getString("pw"));
			memDTO.setPhone(rs.getString("phone"));
			memDTO.setMail(rs.getString("mail"));
			memDTO.setGrade(rs.getInt("grade"));
			memDTO.setIndate(rs.getDate("indate"));
		}
		return memDTO;
	}
	
	@Override
	public MemberDTO memberSelect(int num) throws Exception {
		MemberDTO memDTO = null;
		String sql = "SELECT * FROM member WHERE num=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, num);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			memDTO = new MemberDTO();
			memDTO.setNum(rs.getInt("num"));
			memDTO.setId(rs.getString("id"));
			memDTO.setPw(rs.getString("pw"));
			memDTO.setPhone(rs.getString("phone"));
			memDTO.setMail(rs.getString("mail"));
			memDTO.setGrade(rs.getInt("grade"));
			memDTO.setIndate(rs.getDate("indate"));
		}
		return memDTO;
	}
	
	@Override
	public int selectMemId(String id) throws Exception {
		int idNumber = 0;
		String sql = "SELECT * FROM member WHERE id=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			idNumber = 1;
		}
		return idNumber;
	}
	@Override
	public int selectMemMail(String mail) throws Exception {
		int mailNumber = 0;
		String sql = "SELECT * FROM member WHERE mail=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, mail);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			mailNumber = 1;
		}
		return mailNumber;
	}
	@Override
	public int memberInsert(MemberDTO memDTO) throws Exception {
		int insert = 0;
		String sql = "INSERT INTO member (num, id, pw, phone, mail, grade, indate) "
				+ "VALUES(member_seq.nextval, ?, ?, ?, ?, 1, sysdate)";
		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, memDTO.getId());
		pstmt.setString(2, memDTO.getPw());
		pstmt.setString(3, memDTO.getPhone());
		pstmt.setString(4, memDTO.getMail());
		insert = pstmt.executeUpdate();
		return insert;
	}
	@Override
	public int memberUpdate(MemberDTO memDTO) throws Exception {
		int update = 0;
		String sql = "UPDATE member SET pw=?, phone=? WHERE num=?";
		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, memDTO.getPw());
		pstmt.setString(2, memDTO.getPhone());
		pstmt.setInt(3, memDTO.getNum());
		update = pstmt.executeUpdate();
		return update;
	}

}
