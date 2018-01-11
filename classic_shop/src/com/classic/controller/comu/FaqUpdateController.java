package com.classic.controller.comu;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.daoImp.comu.FaqDAOImp;
import com.classic.dao.comu.FaqDAO;
import com.classic.daoImp.comu.FaqDAOImp;
import com.classic.util.ClassicDBConnection;
import com.classic.dto.FaqDTO;

@WebServlet("/faq/user(alert).do")
public class FaqUpdateController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String str_num=req.getParameter("num");
		String setmem_num=req.getParameter("mem_num");
		String q_title=req.getParameter("q_title");
		String a_content=req.getParameter("a_content");
		
		String s_url="detail.do?num="+str_num;
		String f_url="modify.do?num="+str_num;
		
		int update = 0;
		Connection conn=null;
		FaqDAO faqDAO = new FaqDAOImp();
		try {
			conn = ClassicDBConnection.getConnection();
			FaqDTO faq = new FaqDTO();
			faq.setNum(Integer.parseInt(str_num));
			faq.setMem_num(Integer.parseInt(setmem_num));
			
			faq.setq_title(q_title);
			faq.seta_content(a_content);
			
			update = faqDAO.update(faq);
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			ClassicDBConnection.close(conn);
		}
		req.getSession().setAttribute("update", update);
		if(update>0) {
			resp.sendRedirect(s_url);
		}else {
			resp.sendRedirect(f_url);
		}

	}
}









