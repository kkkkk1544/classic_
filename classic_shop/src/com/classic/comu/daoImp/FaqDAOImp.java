package com.classic.comu.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.classic.comu.controller.FaqListJSON;
import com.classic.comu.dao.FaqDAO;
import com.classic.comu.dto.FaqDTO;
import com.classic.util.ClassicDBConnection;

public class FaqDAOImp implements FaqDAO{

	private Connection conn;
	public FaqDAOImp(Connection conn) {
		this.conn = conn;
	}
	
	@Override
	public List<FaqDTO> selectFaq() throws Exception {
		List<FaqDTO> faqList = new ArrayList<FaqDTO>();
		String sql = "SELECT num, q_title, a_content FROM faq ORDER BY num DESC";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			FaqDTO faqDTO = new FaqDTO();
			faqDTO.setNum(rs.getInt("num"));
			faqDTO.setQ_title(rs.getString("q_title"));
			faqDTO.setA_content(rs.getString("a_content"));
			faqList.add(faqDTO);
		}
		return faqList;
	}

	@Override
	public FaqDTO selectFaq(int num) throws Exception {
		FaqDTO faqDTO = null;
		String sql = "SELECT num, q_title, a_content FROM faq WHERE num=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, num);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			faqDTO = new FaqDTO();
			faqDTO.setNum(rs.getInt("num"));
			faqDTO.setQ_title(rs.getString("q_title"));
			faqDTO.setA_content(rs.getString("a_content"));
		}
		return faqDTO;
	}
	public static void main(String[] args) {
		Connection conn=null;
		try {
			conn=ClassicDBConnection.getConnection();
			FaqDAO faqDao= new FaqDAOImp(conn);
			FaqDTO faqDTO  = new FaqDTO();
			/* FaqDTO.selectFaq(1);*/
		/*	System.out.println(FaqDTO.selectFaq(num));*/
			for(int i=1; i<1203; i++) {
			/*	FaqDTO faqDTO  = new FaqDTO();*/
				faqDTO.setNum(1);
				faqDTO.setQ_title("상품_"+i);
				faqDTO.setA_content("상품 정보입니다. 환불규정도 있습니다....");
				int insert=faqDao.insert(faqDTO);
				System.out.println(insert);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			 ClassicDBConnection.close(conn);
		}
	}

	@Override
	public int insert(FaqDTO faqDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectCount() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
}
