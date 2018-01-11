package com.classic.product.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.classic.product.dao.SizuDAO;
import com.classic.product.dto.ColourDTO;
import com.classic.product.dto.SizuDTO;
import com.classic.util.ClassicDBConnection;

public class SizuDAOImp implements SizuDAO {
	Connection conn=null;
	public SizuDAOImp() throws Exception {
		conn=ClassicDBConnection.getConnection();
	}
	@Override
	public List<SizuDTO> selectSizuList(int product_num) throws Exception {
		
		SizuDTO sizu = null;
		List<SizuDTO> sizuList = new ArrayList<SizuDTO>();
		String sql = "select * from sizu where product_num=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, product_num);
		ResultSet rs= pstmt.executeQuery();
		
		while(rs.next()) {
			sizu= new SizuDTO();
			sizu.setNum(rs.getInt("num"));
			sizu.setProduct_num(rs.getInt("product_num"));
			sizu.setSizu(rs.getString("sizu"));
			sizuList.add(sizu);
		}
		
		return sizuList;
	}

	@Override
	public String selectProductSizu(int product_num) throws Exception {
		List<SizuDTO>sizuList =new SizuDAOImp().selectSizuList(product_num);
		String sizu="";
		for(int i=0; i<sizuList.size(); i++) {
			sizu+= sizuList.get(i).getSizu();
			if(i!=sizuList.size()-1) {
				sizu+=",";
			}
		}
		return sizu;
	}

	/*public static void main(String[] args) {
		try {
			System.out.println(new SizuDAOImp().selectProductSizu(1));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/
}
