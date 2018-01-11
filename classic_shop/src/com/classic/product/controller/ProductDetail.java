package com.classic.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.comu.dto.NoticeDTO;
import com.classic.comu.serviceImp.NoticeServiceImp;
import com.classic.product.daoImp.ProductDAOImp;
import com.classic.product.dto.ProductDTO;

@WebServlet("/product/detail.do")
public class ProductDetail extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String str_num = req.getParameter("num");
		ProductDTO productDetail=null;
		try {
			productDetail=new ProductDAOImp().selectProduct(Integer.parseInt(str_num));
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(productDetail);
		req.setAttribute("productDetail", productDetail); 
		//HashMap으로 넣어서 보낼 것!
		req.getRequestDispatcher("/view/product/detail.jsp").forward(req, resp);
		
	}
}
