package com.classic.order.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.order.dao.OrderDAO;
import com.classic.order.daoImp.ClassicConnection;
import com.classic.order.daoImp.OrderDaoImp;
import com.classic.order.dto.ListDTO;
import com.classic.order.dto.PaidDTO;

@WebServlet("/order/list.do")
public class OrderListController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Connection conn=null;
		OrderDAO orderDAO = new OrderDaoImp(conn);
		List<ListDTO> orderList=new ArrayList<ListDTO>();
		String str_mem_num = req.getParameter("mem_num");
		try {
			conn=ClassicConnection.getConnection();
			orderList = orderDAO.ListSelect(Integer.parseInt(str_mem_num));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicConnection.close(conn, null, null); //???
		}
		req.setAttribute("orderList", orderList);
		req.getRequestDispatcher("/order/list.jsp").forward(req, resp);	
		
	}
}
