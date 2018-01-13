package com.classic.common.controller;

import com.classic.common.dto.PagingDTO;

public class Paging {
	
	public static PagingDTO setPaging(PagingDTO pagingDTO) {
		
		String pageNum_temp = pagingDTO.getPageNum_temp(); //파라미터값 담을 곳
		if(pageNum_temp==null) {pageNum_temp="1";} //현재 페이지가 null 값이 경우, 초기값 "1"로 설정
		int pageNum = Integer.parseInt(pageNum_temp); //웹에서 받아온 "문자열" 데이터 타입의 현재 페이지 번호를 정수형으로 변환
		int totalBlock = 
				(pagingDTO.getTotalRecord()/pagingDTO.getRowNum())
				+ (pagingDTO.getTotalRecord() % pagingDTO.getRowNum() == 0 ? 0:1);
		/*
		  	totalBlock-EX)
		  	전체 게시물 수 : 100개 / rowNum : 10개 == 전체 페이징 블럭 : 10개
		  	전체 게시물 수 : 106개 / rowNum : 10개 == 전체 페이징 블럭 : 10개 + 남은 게시물 6개
		  		==> 이 경우, 페이징 블럭 수를 +1해서 전체 페이징 블럭을 11개로 설정 후 11페이지에는 6개의 게시물이 출력 
		 */
		//현재 페이지가 [3]인 경우, [1][2][4][5]를 출력하기 위한 설정
		int startBlock = pageNum - ((pagingDTO.getPageBlock()-1)/2);
		int endBlock = pageNum + ((pagingDTO.getPageBlock()-1)/2);
		if(startBlock<1) {
			startBlock = 1; //위의 계산대로라면, [2] 페이지인 경우 [0][1][2][3][4]가 돼야 하는데, 0페이지가 뭐란말임? 그래서 첫 시작 페이징 블록을 1로 설정
			endBlock = totalBlock; //▼ 얘랑 같은 논리
		}
		if(endBlock>totalBlock) {
			endBlock = totalBlock; //총 페이징 블럭이 [3]인데, 위의 계산대로라면 [3][4][5]로 출력이 될 수 밖에 없음. 이건 뭐 있는 것도 없는 것도 아녀.. 그래서 마지막 페이징 블록을 [3]에 맞추도록 설정
			startBlock = (endBlock-pagingDTO.getPageBlock())+1;//총 페이징 블럭이 [5]인 경우, [3][4][5][6][7]이 출력 돼야 하는데, ▲ 얘 때문에 [3][4][5]만 출력됨
																					//이럴 거면 pageBlock을 왜 설정했냔말임 그래서 startBlock을 재설정해서 [1][2][3][4][5]로 만들어줌
			if(startBlock<1) {startBlock=1;} //이거 누가 나 좀 알려줘라
		}
		int startRecord = pagingDTO.getRowNum()*(pageNum-1)+1;
		int endRecord = pagingDTO.getRowNum()*pageNum;
		
		//쌤은 VO 안에서 값을 설정하셨는데, 저는 그게 싫어서(이유없음) 따로 설정하는 페이지를 만든 것이므로 DTO에 담도록 하겠음
		pagingDTO.setPageNum(pageNum);
		pagingDTO.setTotalBlock(totalBlock);
		pagingDTO.setStartBlock(startBlock);
		pagingDTO.setEndBlock(endBlock);
		pagingDTO.setStartRecord(startRecord);
		pagingDTO.setEndRecord(endRecord);
		
		return pagingDTO;
	}
	//이제 pagingDTO와 얘를 가지고 백단으로 감
	//사용 예시는 Qna list 참고하시면 됨
	//prev, next는 별 거 없으므로 view에서 구현하였음
	//이 페이지에 있는 주석을 포함하여, 페이징 관련된 주석은 언젠가 사라짐..
}
