package com.classic.product.dao;

import java.util.List;

import com.classic.product.dto.ShopGuideDTO;

public interface ShopGuideDAO {

	public ShopGuideDTO selectShopGuide(int state) throws Exception;
	//public String selectShopGuide() throws Exception;
}
