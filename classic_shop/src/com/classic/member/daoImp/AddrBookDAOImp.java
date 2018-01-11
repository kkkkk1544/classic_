package com.classic.member.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.classic.member.dao.AddrBookDAO;
import com.classic.member.dto.AddrBookDTO;


public class AddrBookDAOImp implements AddrBookDAO {
	
	private Connection conn;
	public AddrBookDAOImp(Connection conn) {
		this.conn = conn;
	}

	@Override
	public List<AddrBookDTO> addrBookSelect(int mem_num) throws Exception {
		List<AddrBookDTO> addrBookList = new ArrayList<AddrBookDTO>();
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		String sql="select a.num, a.zip_code, a.base_addr, a.mem_num, a.detail_addr from addr_book a, member m where a.mem_num=m.num and m.num=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, mem_num);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			AddrBookDTO addrBookDTO = new AddrBookDTO();
			addrBookDTO.setNum(rs.getInt("num"));
			addrBookDTO.setZip_code(rs.getString("zip_code"));
			addrBookDTO.setMem_num(rs.getInt("mem_num"));
			addrBookDTO.setBase_addr(rs.getString("base_addr"));
			addrBookDTO.setDetail_addr(rs.getString("detail_addr"));
			addrBookList.add(addrBookDTO);
		}
		return addrBookList;
	}

	@Override
	public int addrBookInsert(AddrBookDTO addrBookDTO) throws Exception {
		int insert=0;
		String sql="INSERT INTO addr_book(num, mem_num, zip_code, base_addr, detail_addr)"
				+ " VALUES(addr_book_seq.nextval, ?, ?, ?, ?)";
		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, addrBookDTO.getMem_num());
		pstmt.setString(2, addrBookDTO.getZip_code());
		pstmt.setString(3, addrBookDTO.getBase_addr());
		pstmt.setString(4, addrBookDTO.getDetail_addr());
		insert = pstmt.executeUpdate();
		return insert;
	}
}
