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

@WebServlet("/faq/user(insert).do")
public class FaqInsertController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String q_title = req.getParameter("q_title");
		String	str_num = req.getParameter("num");
		String	str_mem_num = req.getParameter("mem_num");
		String a_content = req.getParameter("a_content");
		
		String s_url="/faq/list.do";
		
		int insert = 0;
		Connection conn=null;
		FaqDAO FaqDAO = new FaqDAOImp();
		try {
			conn = ClassicDBConnection.getConnection();
			FaqDTO Faq = new FaqDTO();
			Faq.setq_title(q_title);
			Faq.setNum(Integer.parseInt(str_num));
			Faq.setMem_num(Integer.parseInt(str_mem_num));
		
			insert =FaqDAO.insert(Faq);
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			ClassicDBConnection.close(conn);
		}
		resp.getWriter().append("{\"insert\":\""+insert+"\"}");
	}
}



