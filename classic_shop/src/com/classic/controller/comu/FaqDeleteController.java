package com.classic.controller.comu;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.dao.comu.FaqDAO;
import com.classic.daoImp.comu.FaqDAOImp;
import com.classic.util.ClassicDBConnection;

@WebServlet("/faq/user(del).do")
public class FaqDeleteController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//req.setCharacterEncoding("utf-8");
		//resp.setCharacterEncoding("utf-8");
		resp.setContentType("application/json");
		
		String str_num=req.getParameter("num");
		int delete =0;
		
		Connection conn = null;
		try {
			conn=ClassicDBConnection.getConnection();
			FaqDAO FaqDao = new FaqDAOImp();
			delete= FaqDao.delete(Integer.parseInt(str_num));
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			ClassicDBConnection.close(conn);
		}
		
		
		resp.getWriter().append("{\"delete\":\""+delete+"\"}");
		
	}
}








