package com.nanicow.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nanicow.domain.NoticeDTO;
import com.nanicow.mapper.NoticeMapper;

import lombok.Setter;

@Service
public class NoticeService  {

	@Setter(onMethod_ = { @Autowired })
	private NoticeMapper mapper;

	
	public void insert(NoticeDTO nvo) {
		mapper.insert(nvo);
	}
	

	public List<NoticeDTO> getNotice(){
		return mapper.getNotice();
	}
	

	public NoticeDTO NoticeModify(int num) {
		return mapper.NoticeModify(num);
	}
	
	public void noticeModifyOK(NoticeDTO nvo) {
		mapper.noticeModifyOK(nvo);
	}
	
	public void NoticeDelete(int num) {
		mapper.NoticeDelete(num);
	}
	
	
	
}
