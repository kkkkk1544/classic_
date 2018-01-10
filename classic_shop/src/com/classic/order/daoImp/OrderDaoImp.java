package com.classic.order.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.classic.order.dao.OrderDAO;
import com.classic.order.dto.ListDTO;

public class OrderDaoImp implements OrderDAO{
	
	
	private Connection conn;
	public OrderDaoImp(Connection conn) {
		this.conn = conn;
	}
	
	//▼ 이거 나중에 개발 다 끝났을 땐 지우셔야 돼요(다른 곳에 있는 syso 포함!)
	public static void main(String[] args) {
		Connection conn=null;
		try {
			conn=ClassicConnection.getConnection();
			OrderDAO dao = new OrderDaoImp(conn);
			System.out.println(dao.ListSelect(1));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<ListDTO> ListSelect(int mem_num) throws Exception {
		List<ListDTO> orderList = new ArrayList<ListDTO>();
		String sql="select p.num paid_num,g.name as g_name,p.payment,p.order_state " + 
				"from paid p, product g, member m " + 
				"where m.num=? and " + 
				"p.product_num=g.num and " + 
				"p.mem_num=m.num";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, mem_num);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			ListDTO order = new ListDTO();
			order.setPaid_num(rs.getInt("paid_num"));
			order.setG_name(rs.getString("g_name"));
			order.setG_color(rs.getString("g_color"));
			order.setG_size(rs.getString("g_size"));
			order.setPayment(rs.getInt("payment"));
			order.setOrder_state(rs.getInt("order_state"));
			orderList.add(order);
		}
		System.out.println("orderList: "+orderList);
		return orderList;
	}

	@Override
	public List<ListDTO> DetailSelect() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
