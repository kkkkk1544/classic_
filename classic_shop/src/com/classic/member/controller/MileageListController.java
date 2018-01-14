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

import com.classic.member.dao.MileageDAO;
import com.classic.member.daoImp.MileageDAOImp;
import com.classic.member.dto.MileageDTO;
import com.classic.util.ClassicDBConnection;

@WebServlet("/mileagelist.do")
public class MileageListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String mem_num = req.getParameter("mem_num");
		Connection conn = null;
		List<MileageDTO> mileageList = new ArrayList<MileageDTO>();
		try {
			conn = ClassicDBConnection.getConnection();
			MileageDAO mileageDAO = new MileageDAOImp(conn);
			mileageList = mileageDAO.mileageSelect(Integer.parseInt(mem_num));
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			ClassicDBConnection.close(conn);
		}
		System.out.println(mileageList);
		req.setAttribute("mileageList", mileageList);
		req.getRequestDispatcher("/view/member/mypage/mileage.jsp").forward(req, resp);
		
	
	}

}
