package com.classic.member.dao;


import com.classic.member.dto.MemberDTO;


public interface MemberDAO {
	
	public MemberDTO memberSelect(String id, String pw) throws Exception; //로그인
	public MemberDTO memberSelect(int num) throws Exception; //detail
	public int selectMemId(String id) throws Exception; //id 중복체크
	public int selectMemMail(String mail) throws Exception; //mail 중복체크
	public int memberInsert(MemberDTO memDTO) throws Exception; //회원가입
	public int memberUpdate(MemberDTO memDTO) throws Exception; //회원정보수정
	
}
