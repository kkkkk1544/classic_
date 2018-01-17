package com.classic.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/address/insert.do")
public class AddrBookInsertController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String zip_code = req.getParameter("zip_code");
		String base_addr = req.getParameter("base_addr");
		String detail_addr = req.getParameter("detail_addr");
		
		
		
	}
}
