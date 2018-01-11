package com.classic.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.member.dto.MemberDTO;
import com.classic.member.serviceImp.MemberServiceImp;

@WebServlet("/signup.do")
public class MemberJoinFormController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/view/member/join.jsp").forward(req, resp);
	}
}
