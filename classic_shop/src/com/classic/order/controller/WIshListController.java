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

import com.classic.order.dao.WishListDAO;
import com.classic.order.daoImp.WishListDAOImp;
import com.classic.order.dto.WishDTO;
import com.classic.util.ClassicDBConnection;

@WebServlet("/order/wishlist.do")
public class WIshListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String strMemNum = req.getParameter("num");
		Connection conn =null;
		WishListDAO wish = new WishListDAOImp();
		List<WishDTO> wishList = new ArrayList<WishDTO>();
		try {
			conn = ClassicDBConnection.getConnection();
			wishList = wish.selectWish(conn, Integer.parseInt(strMemNum));//나중에 mem_num으로 바꿔야함
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(null,null,conn);
		}
		if(wishList==null) {
			resp.sendRedirect(req.getContextPath()+"/order/wish/wish.jsp");
		} else {
			req.getSession().setAttribute("wishList", wishList);
			req.getRequestDispatcher("/order/wish/wish.jsp").forward(req, resp);
			
		}
	}
}
