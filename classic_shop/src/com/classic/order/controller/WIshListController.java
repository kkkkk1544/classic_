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
		WishListDAO wish = new WishListDAOImp();
		List<WishDTO> wishList = new ArrayList<WishDTO>();
		try {
			conn = ClassicDBConnection.getConnection();
			wishList = wish.selectWish(conn, Integer.parseInt(strMemNum));//�굹以묒뿉 mem_num�쑝濡� 諛붽퓭�빞�븿
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(null,null,conn);
		}
		if(wishList==null) {
			resp.sendRedirect("/order/wish/wish.jsp");
		} else {
			/*System.out.println(req.getServerName());
			System.out.println(req.getServerPort());
			System.out.println(req.getRealPath(getServletName()));*/
			req.getSession().setAttribute("wishList", wishList);
			//System.out.println(req.getRequestURL());
			/*String url = req.getRequestURL().substring(0,req.getRequestURL().indexOf("/"));
			System.out.println(req.getRequestURL().indexOf("/",4));*/
			//System.out.println("url : "+url);
			//System.out.println(req.getServerName()+req.getServletPath()+req.getContextPath()+"/order/wish/wish.jsp");
			req.getRequestDispatcher("/order/wish/wish.jsp").forward(req, resp);
		}
	}
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("application/json");
		String strMemNum = req.getParameter("num");
		Connection conn = null;
		int delete = 0;
		try {
			conn = ClassicDBConnection.getConnection();
			WishListDAO wish = new WishListDAOImp();
			delete = wish.allWishDel(conn, Integer.parseInt(strMemNum));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(null, null, conn);
		}
		resp.getWriter().append("{\"delete\":"+delete+"}");
	}
}
