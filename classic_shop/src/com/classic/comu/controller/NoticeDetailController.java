package com.classic.comu.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.comu.dao.NoticeDAO;
import com.classic.comu.daoImp.NoticeDAOImp;
import com.classic.comu.dto.NoticeDTO;
import com.classic.util.ClassicDBConnection;


@WebServlet("/notice/detail.do")
public class NoticeDetailController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String str_num=req.getParameter("num");
	NoticeDTO noticeDTO = null;
	Connection conn=null;
	try {
		conn = ClassicDBConnection.getConnection();
		NoticeDAO noticeDAO = new NoticeDAOImp();
		noticeDTO=noticeDAO.select(conn, Integer.parseInt(str_num));
	}catch (Exception e) {
		e.printStackTrace();
	}
	System.out.println("detail.do(noticeDTO):"+noticeDTO);
	if(noticeDTO!=null) {
		req.setAttribute("noticeDTO", noticeDTO);
		req.getRequestDispatcher("/notice/read.jsp").forward(req, resp);
	}else {
		resp.sendRedirect(req.getContextPath()+"/dept/read.do");
	}
	
}
}

