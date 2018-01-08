package com.classic.banner.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.classic.banner.dao.BannerDAO;
import com.classic.banner.dto.BannerDTO;

public class BannerDAOImp implements BannerDAO{
	private Connection conn;
	public BannerDAOImp(Connection conn) {
		this.conn = conn;
	}
	@Override
	public List<BannerDTO> selectBanner() throws Exception {
		List<BannerDTO> bannerList = new ArrayList<BannerDTO>();
		String sql = "SELECT num, name, content, state FROM banner ORDER BY num DESC";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			BannerDTO bannerDTO = new BannerDTO();
			bannerDTO.setNum(rs.getInt("num"));
			bannerDTO.setName(rs.getString("name"));
			bannerDTO.setContent(rs.getString("content"));
			bannerDTO.setState(rs.getInt("state"));
			bannerList.add(bannerDTO);
		}
		return bannerList;
	}

}
