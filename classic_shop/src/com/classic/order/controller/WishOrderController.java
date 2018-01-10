package com.classic.order.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.order.dto.WishDTO;
import com.sun.xml.internal.ws.api.ha.HaInfo;

@WebServlet("/order/order_sheet.do")
public class WishOrderController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		String strProductnum = req.getParameter("product_num");
		String[] productList = strProductnum.split("_");
		Connection conn =null;
		List<WishDTO> orderSheet =null;
		
		
	}
}
