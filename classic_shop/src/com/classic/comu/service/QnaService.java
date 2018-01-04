package com.classic.comu.service;

import java.util.List;

import com.classic.comu.dto.QnaDTO;


public interface QnaService {
	
	public List<QnaDTO> readQna();
	public QnaDTO readQna(int num);
	public boolean registerQna(QnaDTO qnaDTO);
	public boolean modifyQna(QnaDTO qnaDTO);
	public boolean removeQna(int num);
	public boolean viewQna();
	
}
