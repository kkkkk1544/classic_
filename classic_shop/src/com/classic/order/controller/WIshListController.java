package com.classic.order.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.order.dao.WishListDAO;
import com.classic.order.daoImp.WishListDAOImp;
import com.classic.order.dto.WishDTO;
import com.classic.util.ClassicDBConnection;

@WebServlet("/order/wishlist.do")
public class WIshListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		String strMemNum = req.getParameter("num");
		Connection conn =null;
		List<WishDTO> wishList = null;
		try {
			conn = ClassicDBConnection.getConnection();
			WishListDAO wish = new WishListDAOImp(conn);
			wishList = wish.selectWish(Integer.parseInt(strMemNum));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(null,null,conn);
		}
		req.getSession().setAttribute("wishList", wishList);
		req.getRequestDispatcher("/order/wish/wish.jsp").forward(req, resp);
	}
}
