package com.classic.member.dao;

import java.util.List;

import com.classic.member.dto.MileageDTO;


public interface MileageDAO {
	public List<MileageDTO> mileageSelect(int mem_num) throws Exception; //테이블 출력

}
