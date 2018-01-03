package com.classic.controller.comu;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.dao.comu.NoticeDAO;
import com.classic.daoImp.comu.NoticeDAOImp;
import com.classic.dto.NoticeDTO;
import com.classic.util.ClassicDBConnection;


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
		req.getRequestDispatcher("/notice/list.jsp").forward(req, resp);
		
		
		}
	}