package com.classic.comu.service;

import java.util.List;

import com.classic.comu.dto.NoticeDTO;

public interface NoticeService {
	
	public List<NoticeDTO> readNotice();
	public NoticeDTO readNotice(int num);
}
