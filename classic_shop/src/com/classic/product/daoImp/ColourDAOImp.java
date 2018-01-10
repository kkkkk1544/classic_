package com.classic.product.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.classic.product.dao.ColourDAO;
import com.classic.product.dto.ColourDTO;
import com.classic.util.ClassicDBConnection;

public class ColourDAOImp implements ColourDAO {

	/*public static void main(String[] args) {
		
		try {
			System.out.println(new ColourDAOImp().selectProductColour(1));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}*/
	@Override
	public List<ColourDTO> selectColourList(int product_num) throws Exception {
		ColourDTO colour = null;
		List<ColourDTO> colourList = new ArrayList<ColourDTO>();
		String sql = "select * from colour where product_num=?";
		Connection conn=ClassicDBConnection.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, product_num);
		ResultSet rs= pstmt.executeQuery();
		
		while(rs.next()) {
			colour= new ColourDTO();
			colour.setCode(rs.getString("code"));
			colour.setName(rs.getString("name"));
			colour.setNum(rs.getInt("num"));
			colour.setProduct_num(rs.getInt("product_num"));
			colourList.add(colour);
		}
		
		return colourList;
	}
	@Override
	public String selectProductColour(int product_num) throws Exception {
		List<ColourDTO>colourList =new ColourDAOImp().selectColourList(product_num);
		String colour="";
		for(int i=0; i<colourList.size(); i++) {
			colour+= colourList.get(i).getCode();
			if(i!=colourList.size()-1) {
				colour+=",";
			}
			
		}
		return colour;
		
	}
	
}
