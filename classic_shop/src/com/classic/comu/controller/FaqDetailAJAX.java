package com.classic.comu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.comu.dto.FaqDTO;
import com.classic.comu.serviceImp.FaqServiceImp;

@WebServlet("/faqDetail.do")
public class FaqDetailAJAX extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String str_num = req.getParameter("num");
		FaqDTO faqDTO = new FaqServiceImp().readFaq(Integer.parseInt(str_num));
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		resp.getWriter().append(faqDTO.toString());
	}

}
