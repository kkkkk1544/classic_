package com.classic.member.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.member.dao.AddrBookDAO;
import com.classic.member.daoImp.AddrBookDAOImp;
import com.classic.member.dto.AddrBookDTO;
import com.classic.util.ClassicDBConnection;

@WebServlet("/address/list.do")
public class AddrBookListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String strMemNum = req.getParameter("num");
		req.setCharacterEncoding("UTF-8");
		Connection conn=null;
		List<AddrBookDTO> addrBookList = new ArrayList<AddrBookDTO>();
		try {
			conn=ClassicDBConnection.getConnection();
			AddrBookDAO addrBookDAO = new AddrBookDAOImp(conn);
			addrBookList = addrBookDAO.addrBookSelect(Integer.parseInt(strMemNum));
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			ClassicDBConnection.close(conn);
		}
		System.out.println(addrBookList);
		req.setAttribute("addrBookList", addrBookList);
		req.getRequestDispatcher("/member/mypage/address.jsp").forward(req, resp);
	}
}
