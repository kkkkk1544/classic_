package com.classic.serviceImp;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.classic.dao.comu.QnaDAO;
import com.classic.daoImp.comu.qna.QnaDAOImp;
import com.classic.dto.QnaDTO;
import com.classic.service.QnaService;
import com.classic.util.ClassicDBConnection;

public class QnaServiceImp implements QnaService{
	
	static Connection conn = null;

	@Override
	public List<QnaDTO> readQna() {
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
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean modifyQna(QnaDTO qnaDTO) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeQna(int num) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean viewQna() {
		// TODO Auto-generated method stub
		return false;
	}

}
