package com.classic.member.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.classic.member.dao.MileageDAO;
import com.classic.member.dto.MileageDTO;

public class MileageDAOImp implements MileageDAO{
	private Connection conn = null;
	public MileageDAOImp(Connection conn) {
		this.conn = conn;
	}
	@Override
	public List<MileageDTO> mileageSelect(int mem_num) throws Exception {
		List<MileageDTO> mileageList = new ArrayList<MileageDTO>();
		String sql = "select * from mileage where mem_num=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, mem_num);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			MileageDTO mileageDTO = new MileageDTO();
			mileageDTO.setNum(rs.getInt("num"));
			mileageDTO.setMem_num(rs.getInt("mem_num"));
			mileageDTO.setPaid_num(rs.getInt("paid_num"));
			mileageDTO.setNow_mileage(rs.getInt("now_mileage"));
			mileageDTO.setIndate(rs.getDate("indate"));
			mileageDTO.setState(rs.getInt("state"));
			mileageList.add(mileageDTO);
		}
		return mileageList;
	}

}
