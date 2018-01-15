package com.classic.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.comu.dto.QnaDTO;
import com.classic.comu.serviceImp.QnaServiceImp;
import com.classic.member.dto.MemberDTO;
import com.classic.member.serviceImp.MemberServiceImp;

@WebServlet("/mypage.do")
public class MemberMypageController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//회원정보, 주문내역, 내가쓴글
		String id = req.getParameter("id");
		String mem_num = req.getParameter("num");
		MemberDTO memDTO = new MemberServiceImp().readMember(id);
		List<QnaDTO> qnaList = new QnaServiceImp().readQnaMem(Integer.parseInt(mem_num));
		req.setAttribute("memDTO", memDTO);
		req.setAttribute("qnaList", qnaList);
		req.getRequestDispatcher("/view/member/mypage/detail.jsp").forward(req, resp);
	}
}
