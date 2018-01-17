package com.classic.comu.serviceImp;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.classic.comu.daoImp.NoticeDAOImp;
import com.classic.comu.dto.NoticeDTO;
import com.classic.util.ClassicDBConnection;

public class NoticeServiceImp{
	
	static Connection conn = null;

	/*@Override
	public List<NoticeDTO> readNotice() {
		List<NoticeDTO> noticeList = new ArrayList<NoticeDTO>();
		try {
			conn = ClassicDBConnection.getConnection();
			noticeList = new NoticeDAOImp(conn).selectNotice();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(conn);
		}
		return noticeList;
	}

	@Override
	public NoticeDTO readNotice(int num) {
		NoticeDTO noticeDTO = null;
		try {
			conn = ClassicDBConnection.getConnection();
			noticeDTO = new NoticeDAOImp(conn).selectNotice(num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ClassicDBConnection.close(conn);
		}
		return noticeDTO;
	}*/

}
