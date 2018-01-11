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
		String sql = "SELECT q.num, q.mem_num, m.id as name, q.subject, q.count, q.indate, q.secure"
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
			qnaDTO.setMem_num(rs.getInt("mem_num"));
			qnaDTO.setName(rs.getString("name"));
			qnaDTO.setSubject(rs.getInt("subject"));
			qnaDTO.setCount(rs.getInt("count"));
			qnaDTO.setIndate(rs.getDate("indate"));
			qnaDTO.setSecure(rs.getInt("secure"));
			qnaList.add(qnaDTO);
		}
		return qnaList;
	}
	
/*	@Override
	public List<QnaDTO> selectQna(PagingDTO pagingDTO) throws Exception {
		List<QnaDTO> qnaList = new ArrayList<QnaDTO>();
		String sql = "SELECT * FROM"
				+ " (SELECT ROWNUM row_num, qna.* FROM"
				+ " (SELECT q.num, m.id as name, q.subject, q.count, q.indate, q.secure"
				+ " FROM qna q, member m"
				+ " WHERE q.mem_num=m.num"
				+ " ORDER BY q.num DESC) qna"
				+ "WHERE ROWNUM <= ?)"
				+ "WHERE row_num >= ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, pagingDTO.getEndPage());
		pstmt.setInt(2, pagingDTO.getStartPage());
		rs = pstmt.executeQuery();
		while(rs.next()) {
			QnaDTO qnaDTO = new QnaDTO();
			qnaDTO.setNum(rs.getInt("num"));
			qnaDTO.setName(rs.getString("name"));
			qnaDTO.setSubject(rs.getInt("subject"));
			qnaDTO.setCount(rs.getInt("count"));
			qnaDTO.setIndate(rs.getDate("indate"));
			qnaDTO.setSecure(rs.getInt("secure"));
			qnaList.add(qnaDTO);
		}
		return qnaList;
	}*/

	@Override
	public QnaDTO detailQna(int num) throws Exception {
		QnaDTO qnaDTO = null;
		String sql = "SELECT q.num, m.id as name, q.subject, q.content, q.count, q.secure, q.pwd, q.indate"
				+ " FROM qna q, member m"
				+ " WHERE q.mem_num=m.num"
				+ " AND q.num=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, num);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			qnaDTO = new QnaDTO();
			qnaDTO.setNum(rs.getInt("num"));
			qnaDTO.setName(rs.getString("name"));
			qnaDTO.setSubject(rs.getInt("subject"));
			qnaDTO.setContent(rs.getString("content"));
			qnaDTO.setCount(rs.getInt("count"));
			qnaDTO.setSecure(rs.getInt("secure"));
			qnaDTO.setPwd(rs.getString("pwd"));
			qnaDTO.setIndate(rs.getDate("indate"));
		}
		return qnaDTO;
	}

	@Override
	public int insertQna(QnaDTO qnaDTO) throws Exception {
		int insert = 0;
		String sql = "INSERT INTO qna (num, mem_num, subject, content, count, secure, pwd, indate)"
				+ " VALUES(qna_seq.nextval,?,?,?,0,?,?,sysdate)";
		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, qnaDTO.getMem_num());
		pstmt.setInt(2, qnaDTO.getSubject());
		pstmt.setString(3, qnaDTO.getContent());
		pstmt.setInt(4, qnaDTO.getSecure());
		pstmt.setString(5, qnaDTO.getPwd());
		insert = pstmt.executeUpdate();
		return insert;
	}

	@Override
	public int updateQna(QnaDTO qnaDTO) throws Exception {
		int update = 0;
		String sql = "UPDATE qna SET subject=?, content=?, secure=?, pwd=? WHERE num=?";
		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, qnaDTO.getSubject());
		pstmt.setString(2, qnaDTO.getContent());
		pstmt.setInt(3, qnaDTO.getSecure());
		pstmt.setString(4, qnaDTO.getPwd());
		pstmt.setInt(5, qnaDTO.getNum());
		update = pstmt.executeUpdate();
		return update;
	}

	@Override
	public int deleteQna(int num) throws Exception {
		int delete = 0;
		String sql = "DELETE FROM qna WHERE num=?";
		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, num);
		delete = pstmt.executeUpdate();
		return delete;
	}

	@Override
	public int qnaCount() throws Exception {
		int count = 0;
		return count;
	}

}
