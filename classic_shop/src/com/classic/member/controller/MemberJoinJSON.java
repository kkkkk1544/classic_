package com.classic.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.member.dto.MemberDTO;
import com.classic.member.serviceImp.MemberServiceImp;
@WebServlet("/join.do")
public class MemberJoinJSON extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String phone = req.getParameter("phone");
		String mail = req.getParameter("mail");
		System.out.println("memjoin string : "+id+"/"+pw+"/"+phone+"/"+mail+"/");
		MemberDTO memDTO = new MemberDTO();
		memDTO.setId(id);
		memDTO.setPw(pw);
		memDTO.setPhone(phone);
		memDTO.setMail(mail);
		System.out.println("memjoin dto: " + memDTO);
		boolean register = false;
		register = new MemberServiceImp().registerMember(memDTO);
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		resp.getWriter().append("{\"register\":"+register+"}");
	}

}
