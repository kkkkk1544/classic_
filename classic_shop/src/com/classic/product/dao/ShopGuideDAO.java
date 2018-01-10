package com.classic.product.dao;

import java.util.List;

import com.classic.product.dto.ShopGuideDTO;

public interface ShopGuideDAO {

	public List<ShopGuideDTO> selectShopGuideList() throws Exception;
}
