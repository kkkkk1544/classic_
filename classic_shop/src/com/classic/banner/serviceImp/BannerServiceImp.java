package com.classic.banner.serviceImp;

import java.sql.Connection;

import com.classic.banner.daoImp.BannerDAOImp;
import com.classic.banner.dto.BannerDTO;
import com.classic.banner.service.BannerService;
import com.classic.util.ClassicDBConnection;

public class BannerServiceImp implements BannerService{

	static Connection conn = null;

	@Override
	public BannerDTO readBanner() {
		BannerDTO bannerDTO = null;
		try {
			conn = ClassicDBConnection.getConnection();
			bannerDTO = new BannerDAOImp(conn).selectBanner();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(conn);
		}
		return bannerDTO;
	}
	
/*	@Override
	public List<BannerDTO> readBanner() {
		List<BannerDTO> bannerList = new ArrayList<BannerDTO>();
		try {
			conn = ClassicDBConnection.getConnection();
			bannerList = new BannerDAOImp(conn).selectBanner();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(conn);
		}
		return bannerList;
	}*/
	

}
