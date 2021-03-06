package com.classic.product.dao;

import java.util.List;

import com.classic.product.dto.ReviewDTO;

public interface ReviewDAO {
	public List<ReviewDTO> selectReviewList(int product_num) throws Exception;
	public List<ReviewDTO> selectReviewListAll() throws Exception;
	public Boolean checkPaid() throws Exception;
}
