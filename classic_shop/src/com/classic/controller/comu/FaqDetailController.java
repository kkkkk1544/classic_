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
import com.classic.dto.FaqDTO;

@WebServlet("/faq/user(detail_list).do")
public class FaqDetailController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String str_num=req.getParameter("num");
		FaqDTO faqDto= new FaqDTO(); //null-> JSON.parse(null)->오류
		//FaqDTssO.toString-> JSON.parse("{\"ename\"=null}")->오류 x
		Connection conn = null;
		try {
			conn=ClassicDBConnection.getConnection();
			FaqDAO faqDao = new FaqDAOImp();
			faqDto=faqDao.select( Integer.parseInt(str_num));
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			ClassicDBConnection.close(conn);
		}
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("application/json");
		resp.getWriter().append(faqDto.toString());
	
	
	
	
	
	}
}












