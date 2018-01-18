package com.classic.member.service;

import com.classic.member.dto.MemberDTO;

public interface MemberService {
	
	public MemberDTO readMember(String id, String pw);
	public MemberDTO readMember(int num);
	public boolean checkMemId(String id);
	public boolean checkMemMail(String mail);
	public boolean registerMember(MemberDTO memDTO);
	public boolean modifyMember(MemberDTO memDTO);

}
