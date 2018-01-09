package com.classic.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.member.dto.MemberDTO;
import com.classic.member.serviceImp.MemberServiceImp;

@WebServlet("/signup/checkMail.do")
public class MemberCheckMailJSON extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String mail = req.getParameter("mail");
		boolean checkEmailMsg = false;
		if(mail!=null && mail.trim()!="") {
			MemberDTO memDTO = new MemberServiceImp().checkMail(mail);
			if(memDTO==null) {
				checkEmailMsg = true;
			}
		} else {
			checkEmailMsg = true;
		}
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		resp.getWriter().append("{\"checkEmailMsg\":"+checkEmailMsg+"}");
	}
}
