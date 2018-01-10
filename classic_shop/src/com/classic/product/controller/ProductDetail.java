package com.classic.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.comu.dto.NoticeDTO;
import com.classic.comu.serviceImp.NoticeServiceImp;
import com.classic.product.daoImp.ColourDAOImp;
import com.classic.product.daoImp.ProductDAOImp;
import com.classic.product.dto.ProductDTO;

@WebServlet("/product/detail.do")
public class ProductDetail extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String str_num = req.getParameter("num");
		ProductDTO productDTO=null;
		String productColour ="";
		String productDetail=null;
		try {
			productDTO=new ProductDAOImp().selectProduct(Integer.parseInt(str_num));
			productColour=new ColourDAOImp().selectProductColour(Integer.parseInt(str_num));
			productDetail="{"+productDTO+", \"colour\":\""+productColour+"\"}";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		System.out.println(productDetail);
		req.setAttribute("productDetail", productDetail); 
		
		req.getRequestDispatcher("/product/detail.jsp").forward(req, resp);
		
	}
}
