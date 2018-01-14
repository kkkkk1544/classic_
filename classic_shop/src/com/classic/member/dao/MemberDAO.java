package com.classic.member.dao;

import java.util.List;

import com.classic.member.dto.MemberDTO;


public interface MemberDAO {
	
	public MemberDTO memberSelect(String id, String pw) throws Exception; //로그인
	public MemberDTO memberSelect(String id) throws Exception; //detail
	public int selectMail(String mail) throws Exception; //mail 중복체크
	public int memberInsert(MemberDTO memDTO) throws Exception; //회원가입
	public int memberUpdate(MemberDTO memDTO) throws Exception; //회원정보수정
	
}
