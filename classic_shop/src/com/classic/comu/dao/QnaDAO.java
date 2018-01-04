package com.classic.comu.dao;

import java.util.List;

import com.classic.comu.dto.QnaDTO;


public interface QnaDAO {
	
	public List<QnaDTO> selectQna() throws Exception; //페이징 전 qna 리스트
	public QnaDTO detailQna(int num) throws Exception; //qna 글 읽기
	public int insertQna(QnaDTO qnaDTO) throws Exception; //qna 글 등록
	public int updateQna(QnaDTO qnaDTO) throws Exception; //qna 글 수정
	public int deleteQna(int num) throws Exception; //qna 글 삭제
	public int qnaCount() throws Exception; //qna 조회수
	

}
