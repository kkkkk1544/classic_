package com.classic.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.dto.MemberDTO;
import com.classic.service.MemberService;
import com.classic.serviceImp.MemberServiceImp;


@WebServlet("/login.do")
public class MemberLoginController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String id = req.getParameter("memId");
		String pw = req.getParameter("memPw");
		MemberService memService = new MemberServiceImp();
		MemberDTO memDTO = memService.readMember(id, pw);
		String msg = "아이디 또는 비밀번호를 확인해주세요.";
		if(memDTO!=null) {
			msg = id+"님 접속을 환영합니다.";
			req.getSession().setAttribute("loginMem", memDTO);
		}
		req.getSession().setAttribute("msg", msg);
		resp.sendRedirect(req.getContextPath()+"/index.jsp");
	}
}
