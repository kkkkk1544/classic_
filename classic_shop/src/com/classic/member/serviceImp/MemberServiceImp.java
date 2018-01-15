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
		try {
			conn = ClassicDBConnection.getConnection();
			conn.setAutoCommit(false);
			conn.commit();
			int insert = new MemberDAOImp(conn).memberInsert(memDTO);
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
		return register;
	}

	@Override
	public boolean checkMail(String mail) {
		boolean checkEmailMsg = false;
		try {
			conn = ClassicDBConnection.getConnection();
			int mailNumber = new MemberDAOImp(conn).selectMail(mail);
			if(mailNumber==1) {
				checkEmailMsg = true; //true인 경우 email 중복
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(conn);
		}
		return checkEmailMsg;
	}
//주연 끝

	@Override
	public boolean modifyMember(MemberDTO memDTO) {
		boolean modify = false;
		try {
			conn = ClassicDBConnection.getConnection();
			conn.setAutoCommit(false);
			conn.commit();
			int update = new MemberDAOImp(conn).memberUpdate(memDTO);
			if(update==1) {
				modify = true;
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
		return modify;
	}


}
