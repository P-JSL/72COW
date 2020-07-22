package com.nanicow.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nanicow.domain.Criteria;
import com.nanicow.domain.FeesUsersVO;
import com.nanicow.domain.FeesVO;
import com.nanicow.domain.UserEntry;
import com.nanicow.mapper.FeesMapper;

@Service
public class FeesService {

	@Autowired
	private FeesMapper mapper;

	public List<FeesVO> list() {

		return mapper.list();
	}

	public List<FeesVO> SalesComm(Map<String, Object> map) {

		return mapper.SalesComm(map);
	}

	public List<UserEntry> uriage() {

		return mapper.uriage();
	}
	
	public int AllSales() {
		
		return mapper.AllSales();
	}
	
	public List<FeesUsersVO> UserFeesList(Criteria cri){
		
		return mapper.UserFeesList(cri);
	}
}
