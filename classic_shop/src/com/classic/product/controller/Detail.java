package com.classic.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/productDetail.do")
public class Detail extends HttpServlet{
//!!!나중에 ctroller, dto, dao, servie... 분리 해서 만들거임! 참고할 사람은 이거 참고하지마세요
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
