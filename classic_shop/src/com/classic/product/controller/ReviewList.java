package com.classic.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/product/review.do")
public class ReviewList extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String str_num = req.getParameter("num");
		//여긴 관리자가 전체 출력할때 사용하거나 리뷰 작성때 처리하는 걸로
		//상품 디테일별 Review는 /product/detail.do에서 처리해야겠다.
	}
}
