package com.classic.member.service;

import com.classic.member.dto.MemberDTO;

public interface MemberService {

	/*service는 비지니스 로직 (Model)
	 * 
	 * Dao (DB ACCESS OBJECT) 단순히 DB 접속해서 SQL문 1개 실행-> 비지니스로직???
	 * 비지니스 로직은 1개의 일을 수행하기 위해 복수가 모인 것
	 * Member table이 update 되는것은 1개의 dao
	 * User가 생각하는 Member update는 Member 수정, 관심이 새롭게 등록(삭제후 등록)
	 * 복수의 수행을 1개처럼 동작을 시키는 것을 transaction 이라 부른다. == service
	 * 
	 * controller에서 dao를 호출하지 않고 service를 호출하게 된다.
	 * */
	
	
//주연 시작
	public MemberDTO readMember(String id, String pw);
	public MemberDTO readMember(String id);
	public MemberDTO checkMail(String mail);
	public boolean registerMember(MemberDTO memDTO);
//주연 끝

}
