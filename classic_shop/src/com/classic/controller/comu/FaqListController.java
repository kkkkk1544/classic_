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

import com.classic.dao.comu.FaqDAO;
import com.classic.daoImp.comu.FaqDAOImp;
import com.classic.util.ClassicDBConnection;
import com.classic.dto.FaqDTO;

@WebServlet("/faq/test.do")
public class FaqListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("application/json");//text/html
		Connection conn =null;
		List<FaqDTO> faqList= new ArrayList<FaqDTO>();
	
		try {
			conn=ClassicDBConnection.getConnection();
			FaqDAO FaqDao = new FaqDAOImp();
			faqList=FaqDao.selectList(conn);			

			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			ClassicDBConnection.close(conn);
		}
		resp.getWriter().append(faqList.toString());
		//ie 낮은 버전은 json으로 응답 받을 수 없다.
	}

	
}









