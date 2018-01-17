package com.classic.comu.serviceImp;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.classic.comu.daoImp.QnaDAOImp;
import com.classic.comu.dto.QnaDTO;
import com.classic.comu.service.QnaService;
import com.classic.util.ClassicDBConnection;

public class QnaServiceImp implements QnaService{
	
	static Connection conn = null;

	@Override
	public List<QnaDTO> listQna() {
		List<QnaDTO> qnaList = new ArrayList<QnaDTO>();
		try {
			conn = ClassicDBConnection.getConnection();
			qnaList = new QnaDAOImp(conn).selectQna();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(conn);
		}
		return qnaList;
	}
	
/*	
	@Override
	public List<QnaDTO> listQna(pagingTest pagingDTO) {
		List<QnaDTO> qnaList = new ArrayList<QnaDTO>();
		try {
			conn = ClassicDBConnection.getConnection();
			qnaList = new QnaDAOImp(conn).selectQna(pagingDTO);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(conn);
		}
		return qnaList;
	}
*/
	@Override
	public QnaDTO readQna(int num) {
		QnaDTO qnaDTO = null;
		try {
			conn = ClassicDBConnection.getConnection();
			qnaDTO = new QnaDAOImp(conn).detailQna(num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(conn);
		}
		return qnaDTO;
	}

	@Override
	public boolean registerQna(QnaDTO qnaDTO) {
		boolean register = false;
		try {
			conn = ClassicDBConnection.getConnection();
			conn.setAutoCommit(false);
			conn.commit();
			int insert = new QnaDAOImp(conn).insertQna(qnaDTO);
			if(insert==1) {
				register = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally {
			ClassicDBConnection.close(conn);
		}
		
		return register;
	}

	@Override
	public boolean modifyQna(QnaDTO qnaDTO) {
		boolean modify = false;
		try {
			conn = ClassicDBConnection.getConnection();
			conn.setAutoCommit(false);
			conn.commit();
			int update = new QnaDAOImp(conn).updateQna(qnaDTO);
			if(update==1) {
				modify = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally {
			ClassicDBConnection.close(conn);
		}
		return modify;
	}

	@Override
	public boolean removeQna(int num) {
		boolean remove = false;
		try {
			conn = ClassicDBConnection.getConnection();
			conn.setAutoCommit(false);
			conn.commit();
			int qnaDel = new QnaDAOImp(conn).deleteQna(num);
			if(qnaDel==1) {
				remove = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally {
			ClassicDBConnection.close(conn);
		}
		return remove;
	}

	@Override
	public boolean viewQna() {
		// TODO Auto-generated method stub
		return false;
	}

}
