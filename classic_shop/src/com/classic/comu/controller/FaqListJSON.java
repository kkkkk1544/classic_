package com.classic.comu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.comu.dto.FaqDTO;
import com.classic.comu.serviceImp.FaqServiceImp;


@WebServlet("/community/faq.do")
public class FaqListJSON extends HttpServlet{
	/*@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<FaqDTO> faqList = new FaqServiceImp().readFaq();
		req.setAttribute("faqList", faqList);
		req.getRequestDispatcher("/view/comu/faqListView.jsp").forward(req, resp);
	}*/
}
