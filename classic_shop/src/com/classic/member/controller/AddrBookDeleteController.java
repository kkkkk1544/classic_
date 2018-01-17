package com.classic.member.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.member.dao.AddrBookDAO;
import com.classic.member.daoImp.AddrBookDAOImp;
import com.classic.util.ClassicDBConnection;

@WebServlet("/addresslist/delete.do")
public class AddrBookDeleteController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json");
		Connection conn = null;
		int delete = 0;
		String str_num = req.getParameter("num");
		try {
			conn=ClassicDBConnection.getConnection();
			AddrBookDAO addrDAO = new AddrBookDAOImp(conn);
			delete = addrDAO.addrBookDelete(Integer.parseInt(str_num));
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			ClassicDBConnection.close(conn);
		}
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().append("{\"delete\":\""+delete+"\"}");
	
	}

}
