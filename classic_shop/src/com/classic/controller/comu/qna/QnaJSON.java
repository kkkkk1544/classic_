package com.classic.controller.comu.qna;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.dto.QnaDTO;
import com.classic.service.QnaService;
import com.classic.serviceImp.QnaServiceImp;

@WebServlet("/qna.do")
public class QnaJSON extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		QnaService qnaService = new QnaServiceImp();
		List<QnaDTO> qnaList = qnaService.readQna();
		
		resp.setContentType("application/json");
		resp.setCharacterEncoding("UTF-8");
		resp.getWriter().append(qnaList.toString());
		
	}
	
	
}
