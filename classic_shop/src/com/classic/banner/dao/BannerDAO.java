package com.classic.banner.dao;

import java.util.List;

import com.classic.banner.dto.BannerDTO;

public interface BannerDAO {
	
	public List<BannerDTO> selectBanner() throws Exception;
	
}
