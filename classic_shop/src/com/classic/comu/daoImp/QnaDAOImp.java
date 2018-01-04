package com.classic.comu.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.classic.comu.dao.QnaDAO;
import com.classic.comu.dto.QnaDTO;


public class QnaDAOImp implements QnaDAO{
	
	private Connection conn;
	public QnaDAOImp(Connection conn) {
		this.conn = conn;
	}

	@Override
	public List<QnaDTO> selectQna() throws Exception {
		List<QnaDTO> qnaList = new ArrayList<QnaDTO>();
		String sql = "SELECT q.num, m.id as name, q.subject, q.count, q.indate"
				+ " FROM qna q, member m"
				+ " WHERE q.mem_num=m.num"
				+ " ORDER BY q.num DESC";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			QnaDTO qnaDTO = new QnaDTO();
			qnaDTO.setNum(rs.getInt("num"));
			qnaDTO.setName(rs.getString("name"));
			qnaDTO.setSubject(rs.getInt("subject"));
			qnaDTO.setCount(rs.getInt("count"));
			qnaDTO.setIndate(rs.getDate("indate"));
			qnaList.add(qnaDTO);
		}
		return qnaList;
	}

	@Override
	public QnaDTO detailQna(int num) throws Exception {
		QnaDTO qnaDTO = null;
		return qnaDTO;
	}

	@Override
	public int insertQna(QnaDTO qnaDTO) throws Exception {
		int insert = 0;
		return insert;
	}

	@Override
	public int updateQna(QnaDTO qnaDTO) throws Exception {
		int update = 0;
		return update;
	}

	@Override
	public int deleteQna(int num) throws Exception {
		int delete = 0;
		return delete;
	}

	@Override
	public int qnaCount() throws Exception {
		int count = 0;
		return count;
	}

}
