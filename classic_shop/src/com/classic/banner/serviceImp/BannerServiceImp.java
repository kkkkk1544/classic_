package com.classic.banner.serviceImp;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.classic.banner.dto.BannerDTO;
import com.classic.banner.service.BannerService;
import com.classic.util.ClassicDBConnection;

public class BannerServiceImp{

	static Connection conn = null;
	
	/*@Override
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
