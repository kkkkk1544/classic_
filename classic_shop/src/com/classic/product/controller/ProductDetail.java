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
import com.classic.product.daoImp.ProductDataDAOImp;
import com.classic.product.daoImp.SizuDAOImp;
import com.classic.product.dto.ProductDTO;

@WebServlet("/product/detail.do")
public class ProductDetail extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String str_num = req.getParameter("num");
		ProductDTO productDTO=null;
		String productColour ="";
		String productSizu="";
		String productDetail=null;
		String productData="";
	
		try {
			productDTO=new ProductDAOImp().selectProduct(Integer.parseInt(str_num));
			productColour=new ColourDAOImp().selectProductColour(Integer.parseInt(str_num));
			productSizu = new SizuDAOImp().selectProductSizu(Integer.parseInt(str_num));
			productData = new ProductDataDAOImp().selectProductData(1).toString();
	
			productDetail="[{"+productDTO+", \"colour\":\""+productColour+"\", \"Sizu\":\""+productSizu+"\", "
					+productData+", \"deliv_info\":"+"\"deliv_info입니당~~~\""
					+", \"refund_info\":"+"\"refund_info입니당.\""
					+", \"trade_info\":"+"\"trade_info입니당.\""
					+", \"as_info\":"+"\"as_info입니당.\""
					+", \"unregi_info\":"+"\"unregi_info입니당.\""
					+"}]";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		//System.out.println(productDetail);
		req.setAttribute("productDetail", productDetail); 
		//HashMap으로 넣어서 보낼 것!
		req.getRequestDispatcher("/view/product/detail.jsp").forward(req, resp);
		
	}
}
