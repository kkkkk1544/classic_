package com.classic.comu.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.comu.dao.FaqDAO;
import com.classic.comu.daoImp.FaqDAOImp;
import com.classic.comu.dto.FaqDTO;
import com.classic.comu.serviceImp.FaqServiceImp;
import com.classic.util.ClassicDBConnection;


@WebServlet("/community/faq.do")
public class FaqListJSON extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<FaqDTO> faqList = new FaqServiceImp().readFaq();
		Connection conn=null;
		FaqDTO faqDTO = new FaqDTO();
		try {
			conn=ClassicDBConnection.getConnection();
			FaqDAO faqDao = new FaqDAOImp(conn);
			int total_row = faqDao.selectCount();
			faqList = faqDao.selectFaq();
			System.out.println(faqList);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			ClassicDBConnection.close(conn);
		}

		
		
		
		
		
		
		
		
		req.setAttribute("faqList", faqList);
		req.getRequestDispatcher("/comu/faqListView.jsp").forward(req, resp);
	
	
	
	
	}
}
