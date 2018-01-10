package com.classic.daoImp.comu;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.classic.controller.comu.FaqListController;
import com.classic.dao.comu.FaqDAO;
import com.classic.dto.FaqDTO;
import com.classic.util.ClassicDBConnection;
import com.classic.dto.FaqDTO;


public class FaqDAOImp implements FaqDAO{
	public static void main(String[] args) {
		Connection conn = null;
		
		try {
			conn = ClassicDBConnection.getConnection();
			FaqDAO FaqDao = new FaqDAOImp();
			System.out.println(FaqDao.selectList(conn));
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
		
		
	@Override
	public List<FaqDTO> selectList(Connection conn) throws Exception {
		List<FaqDTO> faqList = new ArrayList<FaqDTO>();
		String sql = "select num,mem_num,q_title,a_content from faq";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		
		while(rs.next()) {
			FaqDTO FaqDTO = new FaqDTO();
			FaqDTO.setSelect(rs);
			faqList.add(FaqDTO);
		}
		return faqList;
	}

	

	@Override
	public int delete(int num) throws Exception {
		int delete=0;
		String sql = "delete from faq where num=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, num);
		
		delete=pstmt.executeUpdate();
		return delete;
	}

	@Override
	public int update(FaqDTO faq) throws Exception {
		int update=0;
		
		String sql="update faq set mem_num=? q_title=? a_content=? where num=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, faq.getNum());
		pstmt.setString(2, faq.getq_title());
		pstmt.setInt(3, faq.getMem_num());
		pstmt.setString(4, faq.geta_content());	
		update = pstmt.executeUpdate();
		return update;
	}
	@Override
	public int insert(FaqDTO FaqDTO) throws Exception {
		int insert=0;
		String sql = "insert into faq(num,mem_num,q_title,a_content) "
				+ "values( (select max(num)+1 from faq),?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, FaqDTO.getNum());
		pstmt.setString(2, FaqDTO.getq_title());
		pstmt.setInt(3, FaqDTO.getMem_num());
		pstmt.setString(4, FaqDTO.geta_content());	
		insert=pstmt.executeUpdate();
		return insert;
	}
	
	@Override
	public FaqDTO select(int num) throws Exception {
		FaqDTO FaqDTO = null;
		String sql="select num,mem_num,q_title,a_content from faq";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,num);

		
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			FaqDTO = new FaqDTO();
			
			FaqDTO.setSelect(rs);
			
		}
		return FaqDTO;
	}
	
}












