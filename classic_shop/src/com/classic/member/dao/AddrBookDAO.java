package com.classic.member.dao;

import java.util.List;

import com.classic.member.dto.AddrBookDTO;

public interface AddrBookDAO {
	public List<AddrBookDTO> addrBookSelect() throws Exception; //테이블 출력
	public int addrBookInsert(AddrBookDTO addrBookDTO) throws Exception; //주소 등록
}
