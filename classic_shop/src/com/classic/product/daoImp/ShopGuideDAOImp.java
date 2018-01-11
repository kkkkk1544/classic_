package com.classic.product.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.classic.product.dao.ShopGuideDAO;
import com.classic.product.dto.ShopGuideDTO;
import com.classic.util.ClassicDBConnection;

public class ShopGuideDAOImp implements ShopGuideDAO{
	Connection conn =null;
	public ShopGuideDAOImp() throws Exception {
		conn=ClassicDBConnection.getConnection();
	}

	@Override
	public List<ShopGuideDTO> selectShopGuideList() throws Exception {
		List<ShopGuideDTO> shopGuideList = new ArrayList<ShopGuideDTO>();
		
		String sql="select * from shop_guide";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs =pstmt.executeQuery();
		while(rs.next()) {
			ShopGuideDTO shopGuideDTO = new ShopGuideDTO();
			shopGuideDTO.setAs_info(rs.getString("as_info"));
			shopGuideDTO.setDeliv_info(rs.getString("deliv_info"));
			shopGuideDTO.setNum(rs.getInt("num"));
			shopGuideDTO.setRefund_info(rs.getString("refund_info"));
			shopGuideDTO.setState(rs.getInt("state"));
			shopGuideDTO.setSubject(rs.getInt("subject"));
			shopGuideDTO.setTrade_info(rs.getString("trade_info"));
			shopGuideDTO.setUnregi_info(rs.getString("unregi_info"));
			shopGuideList.add(shopGuideDTO);
		}
		return shopGuideList;
	}

	@Override
	public String selectShopGuide() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	public static void main(String[] args) {
		try {
			System.out.println(new ShopGuideDAOImp().selectShopGuideList());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
