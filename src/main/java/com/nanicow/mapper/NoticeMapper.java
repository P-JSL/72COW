package com.nanicow.mapper;

import java.util.List;

import com.nanicow.domain.NoticeDTO;

public interface NoticeMapper {
	
	public void insert(NoticeDTO nvo);
	public List<NoticeDTO> getNotice();
	public NoticeDTO NoticeModify(int num);
	public void noticeModifyOK(NoticeDTO nvo);
	public void NoticeDelete(int num);
	
}
