package com.classic.product.serviceImp;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.classic.common.dto.PagingDTO;
import com.classic.comu.daoImp.QnaDAOImp;
import com.classic.product.daoImp.searchDAOImp;
import com.classic.product.dto.ProductDTO;
import com.classic.product.service.ProductService;
import com.classic.util.ClassicDBConnection;

public class ProductServiceImp implements ProductService{

	static Connection conn = null;
	
	@Override
	public List<ProductDTO> searchItems(PagingDTO pagingDTO, String searchField, String searchValue,
			String searchArray) {
		List<ProductDTO> searchItemList = new ArrayList<ProductDTO>();
		try {
			conn = ClassicDBConnection.getConnection();
			conn.setAutoCommit(false);
			conn.commit();
			searchItemList = new searchDAOImp(conn).searchProduct(pagingDTO, searchField, searchValue, searchArray);
		} catch (Exception e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally {
			ClassicDBConnection.close(conn);
		}
		return searchItemList;
	}

	@Override
	public int searchTotal(String searchField, String searchValue) {
		int searchCount = 0;
		try {
			conn = ClassicDBConnection.getConnection();
			conn.setAutoCommit(false);
			conn.commit();
			searchCount = new searchDAOImp(conn).searchCount(searchField, searchValue);
		} catch (Exception e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally {
			ClassicDBConnection.close(conn);
		}
		return searchCount;
	}
	

}
