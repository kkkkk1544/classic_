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
		try{
		conn = ClassicDBConnection.getConnection();
		WishListDAO product  = new WishListDAOImp(conn);
			for(int i =0; i<productList.length; i++) {
				orderSheet.add(( product).seleteWish(Integer.parseInt(productList[i])));
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(null, null, conn);
		}
		req.getSession().setAttribute("productList", productList);
		req.getRequestDispatcher("/order/wish/wish.jsp").forward(req, resp);
	
		
	}
}
