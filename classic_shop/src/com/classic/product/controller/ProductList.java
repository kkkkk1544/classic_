package com.classic.product.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classic.product.dao.ProductDAO;
import com.classic.product.daoImp.ProductDAOImp;
import com.classic.product.dto.ProductDTO;

@WebServlet("/product/list.do")
public class ProductList extends HttpServlet {
	//!!!나중에 ctroller, dto, dao, servie... 분리 해서 만들거임! 참고할 사람은 이거 참고하지마세요

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		List<ProductDTO> productList = new ArrayList<ProductDTO>();
		try {
			ProductDAO productDAO=new ProductDAOImp();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		/*StringBuffer products= new StringBuffer();
		String className="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@192.168.0.2:1521:xe";
		String user="classic_admin";
		String password="admin1234";
		String sql="select * from product";
		//String sql="select num, name, sub_info, price, data_num from product";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		products.append("[");
		try {
			Class.forName(className);
			conn=DriverManager.getConnection(url, user, password);
			pstmt=conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, 
		             ResultSet.CONCUR_UPDATABLE);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				products.append("{");
				
				products.append("\"num\":"+rs.getInt("num")+",");
				products.append("\"name\":\""+rs.getString("name")+"\",");
				products.append("\"sub_info\":\""+rs.getString("sub_info")+"\",");
				products.append("\"price\":"+rs.getInt("price")+",");
				products.append("\"data_num\":"+rs.getInt("data_num"));
				products.append("}");
				if(!rs.isLast()) {
					products.append(",");
					
				}
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null) {try {rs.close();} catch (SQLException e) {e.printStackTrace();}}
			if(pstmt!=null) {try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}}
			if(conn!=null) {try {conn.close();} catch (SQLException e) {e.printStackTrace();}}
		}
		products.append("]");
		//System.out.println(products);
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		resp.getWriter().append(products.toString());
		*/
	}
	
}
