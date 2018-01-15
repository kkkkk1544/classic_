package com.classic.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.common.dto.PagingDTO;

@WebServlet("/product/search.do")
public class SearchProductJSON extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PagingDTO pagingDTO = new PagingDTO();
		String searchField = req.getParameter("searchField");
		String searchValue = req.getParameter("searchValue");
		
		if(searchField == null || searchField == "") {
			searchField = "name";
		}
		if(searchValue == null || searchValue == "") {
			searchValue = "";
		}
	}
}
