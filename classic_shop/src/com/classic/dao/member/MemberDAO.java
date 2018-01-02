package com.classic.dao.member;

import java.util.List;

import com.classic.dto.MemberDTO;

public interface MemberDAO {
	
//주연 시작
	
	//로그인
	public MemberDTO memberSelect(String id, String pw) throws Exception;
	
	//id 중복체크
	public MemberDTO memberSelect(String id) throws Exception;
	
	//회원가입
	public int memberInsert(MemberDTO memDTO) throws Exception;

//주연 끝
	
}
