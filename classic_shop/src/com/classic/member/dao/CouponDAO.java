package com.classic.member.dao;
import java.util.List;

import com.classic.member.dto.CouponDTO;


public interface CouponDAO {
	public List<CouponDTO> addrBookSelect() throws Exception; //리스트 출력
	public int addrBookInsert(CouponDTO couponDTO) throws Exception; //쿠폰 등록
}
