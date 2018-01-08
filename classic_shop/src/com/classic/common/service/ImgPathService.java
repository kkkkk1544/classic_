package com.classic.common.service;

import java.util.List;

import com.classic.common.dto.ImgPathDTO;

public interface ImgPathService {
	
	public List<ImgPathDTO> readQnaImg(int qna_num);
	public int registerQnaImg();
}
