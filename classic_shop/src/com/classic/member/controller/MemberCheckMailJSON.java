package com.classic.member.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.member.daoImp.MemberDAOImp;
import com.classic.member.dto.MemberDTO;
import com.classic.member.serviceImp.MemberServiceImp;

@WebServlet("/signup/checkMail.do")
public class MemberCheckMailJSON extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String mail = req.getParameter("mail");
		boolean checkEmailMsg = false; //email 사용 가능
		if(mail!=null && mail.trim()!="") {
			checkEmailMsg = new MemberServiceImp().checkMemMail(mail);
		} else {
			checkEmailMsg = true;
		}
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		resp.getWriter().append("{\"checkEmailMsg\":"+checkEmailMsg+"}");
	}
}
