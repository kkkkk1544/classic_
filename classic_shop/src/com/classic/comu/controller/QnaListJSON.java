package com.classic.comu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.comu.dto.QnaDTO;
import com.classic.comu.serviceImp.QnaServiceImp;

@WebServlet("/community/qna.do")
public class QnaListJSON extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//qnaList
		
		List<QnaDTO> qnaList = new QnaServiceImp().listQna();
		req.setAttribute("qnaList", qnaList);
		req.getRequestDispatcher("/view/comu/qnaListView.jsp").forward(req, resp);
	}
}
