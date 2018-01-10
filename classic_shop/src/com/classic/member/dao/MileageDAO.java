package com.classic.member.dao;

import java.util.List;

import com.classic.member.dto.MileageDTO;


public interface MileageDAO {
	public List<MileageDTO> addrBookSelect() throws Exception; //테이블 출력

}
