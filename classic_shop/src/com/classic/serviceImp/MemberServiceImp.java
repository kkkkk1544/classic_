package com.classic.serviceImp;

import java.sql.Connection;

import com.classic.dao.member.MemberDAO;
import com.classic.daoImp.member.MemberDAOImp;
import com.classic.dto.MemberDTO;
import com.classic.service.MemberService;
import com.classic.util.ClassicDBConnection;

public class MemberServiceImp implements MemberService{
	static Connection conn = null;
//주연 시작
	@Override
	public MemberDTO readMember(String id, String pw) {
		MemberDTO memDTO = null;
		try {
			conn = ClassicDBConnection.getConnection();
			memDTO = new MemberDAOImp(conn).memberSelect(id, pw);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(conn);
		}
		return memDTO;
	}

	@Override
	public MemberDTO readMember(String id) {
		MemberDTO memDTO = null;
		try {
			conn = ClassicDBConnection.getConnection();
			memDTO = new MemberDAOImp(conn).memberSelect(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(conn);
		}
		return memDTO;
	}


	@Override
	public boolean registerMember(MemberDTO memDTO) {
		boolean register = false;
		try {
			conn = ClassicDBConnection.getConnection();
			conn.setAutoCommit(false);
			conn.commit();
			MemberDAO memDAO = new MemberDAOImp(conn);
			int insert = memDAO.memberInsert(memDTO);
			if(insert==1) {
				memDTO = memDAO.memberSelect(memDTO.getId());
			}
		} catch (Exception e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally {
			ClassicDBConnection.close(conn);
		}
		return register;
	}
//주연 끝

}
