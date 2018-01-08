package com.classic.member.serviceImp;

import java.sql.Connection;

import com.classic.member.dao.MemberDAO;
import com.classic.member.daoImp.MemberDAOImp;
import com.classic.member.dto.MemberDTO;
import com.classic.member.service.MemberService;
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
		System.out.println("seri memDTO : "+memDTO);
		try {
			conn = ClassicDBConnection.getConnection();
			conn.setAutoCommit(false);
			conn.commit();
			int insert = new MemberDAOImp(conn).memberInsert(memDTO);
			System.out.println("service memDTO : "+memDTO);
			if(insert==1) {
				register = true;
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
		System.out.println("regiFlag"+register);
		return register;
	}
//주연 끝

}
