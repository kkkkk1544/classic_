package com.classic.dao.member;

import java.util.List;

import com.classic.dto.MemberDTO;

public interface MemberDAO {
	
//주연 시작
	public MemberDTO memberSelect(String id, String pw) throws Exception; //로그인
	public MemberDTO memberSelect(String id) throws Exception; //id 중복체크
	public int memberInsert(MemberDTO memDTO) throws Exception; //회원가입
//주연 끝
	
}
