package com.classic.common.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.classic.common.dao.ImgPathDAO;
import com.classic.common.dto.ImgPathDTO;

public class ImgPathDAOImp implements ImgPathDAO{
	private Connection conn;
	public ImgPathDAOImp(Connection conn) {
		this.conn = conn;
	}
	@Override
	public List<ImgPathDTO> selectQnaImg(int qna_num) throws Exception {
		List<ImgPathDTO> qnaImgList = new ArrayList<ImgPathDTO>();
		String sql = "SELECT i.name"
				+ " FROM img_path i, qna q"
				+ " WEHRE i.qna_num=q.num"
				+ " AND i.qna_num=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, qna_num);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			ImgPathDTO imgDTO = new ImgPathDTO();
			imgDTO.setName(rs.getString("name"));
			qnaImgList.add(imgDTO);
		}
		return qnaImgList;
	}

	@Override
	public int insertQnaImg(ImgPathDTO imgDTO) throws Exception {
		int insert = 0;
		String sql = "INSERT INTO img_path(num, qna_num, name)"
				+ "VALUES(img_path_seq.nextval, ?, ?)";
		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, imgDTO.getQna_num());
		pstmt.setString(2, imgDTO.getName());
		insert = pstmt.executeUpdate();
		return insert;
	}
	@Override
	public int deleteQnaImg(int num) throws Exception {
		int delete = 0;
		String sql = "DELETE FROM img_path WHERE num=?";
		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, num);
		delete = pstmt.executeUpdate();
		return delete;
	}

}
