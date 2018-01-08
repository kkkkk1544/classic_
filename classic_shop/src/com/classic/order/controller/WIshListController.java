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
		resp.setCharacterEncoding("utf-8");
		String strMemNum = req.getParameter("num");
		Connection conn =null;
		List<WishDTO> wishList = null;
		try {
			conn = ClassicDBConnection.getConnection();
			WishListDAO wish = new WishListDAOImp(conn);
			wishList = wish.selectWish(Integer.parseInt(strMemNum));//�굹以묒뿉 mem_num�쑝濡� 諛붽퓭�빞�븿
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(null,null,conn);
		}
		if(wishList.isEmpty()) {
			resp.sendRedirect(req.getContextPath()+"/order/wish/wish.jsp");
		} else {
			req.getSession().setAttribute("wishList", wishList);
			req.getRequestDispatcher("/order/wish/wish.jsp").forward(req, resp);
		}
	}
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String strMemNum = req.getParameter("num");
		Connection conn = null;
		WishListDAO wish = null;
		int delete = 0;
		try {
			conn = ClassicDBConnection.getConnection();
			wish  = new WishListDAOImp(conn);
			delete = wish.WishDel(Integer.parseInt(strMemNum));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(null, null, conn);
		}
		resp.setContentType("application/json");
		resp.setCharacterEncoding("utf-8");
		System.out.println(delete);
		resp.getWriter().append("{\"delete\":"+delete+"}");
	}
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
