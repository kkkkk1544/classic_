package com.classic.banner.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.banner.dto.BannerDTO;
import com.classic.banner.serviceImp.BannerServiceImp;

@WebServlet("/event.do")
public class BannerController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		BannerDTO bannerDTO = new BannerServiceImp().readBanner();
		req.setAttribute("banner", bannerDTO);
		req.getRequestDispatcher("/common/openPop.jsp").forward(req, resp);
	}
}
