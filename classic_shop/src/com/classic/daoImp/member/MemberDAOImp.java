package com.classic.daoImp.member;

import com.classic.dao.member.MemberDAO;
import com.classic.dto.MemberDTO;

public class MemberDAOImp implements MemberDAO{

//주연 시작
	@Override
	public MemberDTO memberSelect(String id, String pw) throws Exception {
		MemberDTO memDTO = null;
		String sql = "SELECT id, pw FROM member WHERE id=? AND pw=?";
		return memDTO;
	}

	@Override
	public MemberDTO memberSelect(String id) throws Exception {
		MemberDTO memDTO = null;
		String sql = "SELECT id FROM member WHERE id=?";
		return memDTO;
	}

	@Override
	public int memberInsert(MemberDTO memDTO) throws Exception {
		int insert = 0;
		String sql = "INSERT INTO member (num, id, pw, phone, mail, grade, indate) "
				+ "VALUES(member_seq.nextval, ?, ?, ?, ?, 1, sysdate)";
		return insert;
	}
//주연 끝	

}
