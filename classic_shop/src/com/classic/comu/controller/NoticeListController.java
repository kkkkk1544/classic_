package com.classic.comu.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.comu.dao.NoticeDAO;
import com.classic.comu.daoImp.NoticeDAOImp;
import com.classic.comu.dto.NoticeDTO;
import com.classic.util.ClassicDBConnection;

//유정이가 전에 해놨던 거(NoticeJSON 안에 doGet 메소드 내용이랑 동일함)
/*
@WebServlet("/notice/list.do")
public class NoticeListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Connection conn = null;
		NoticeDAO noticeDAO = new NoticeDAOImp();
		List<NoticeDTO> noticeList = new ArrayList<NoticeDTO>();
		try {
			conn = ClassicDBConnection.getConnection();
			noticeList = noticeDAO.select(conn);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			ClassicDBConnection.close(null, null, conn);
		}
		req.setAttribute("noticeList", noticeList);
		req.getRequestDispatcher("/comu/community.jsp").forward(req, resp);
		
		
		}
	}
*/