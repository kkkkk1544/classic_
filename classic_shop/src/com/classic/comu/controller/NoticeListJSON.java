package com.classic.comu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.comu.dto.NoticeDTO;
import com.classic.comu.serviceImp.NoticeServiceImp;

@WebServlet("/community/notice.do")
public class NoticeListJSON extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<NoticeDTO> noticeList = new NoticeServiceImp().readNotice();
		req.setAttribute("noticeList", noticeList);
		req.getRequestDispatcher("/view/comu/noticeListView.jsp").forward(req, resp);
	}

}
