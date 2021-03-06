package com.nanicow.mapper;

import java.util.List;
import java.util.Map;

import com.nanicow.domain.Criteria;
import com.nanicow.domain.FeesUsersVO;
import com.nanicow.domain.FeesVO;
import com.nanicow.domain.Send_addr;
import com.nanicow.domain.UserEntry;

public interface FeesMapper {

	public List<FeesVO> list();
	
	public List<FeesVO> SalesComm(Map<String, Object> map);

	public List<UserEntry> uriage();
	
	public int AllSales();
	
	public List<FeesUsersVO> UserFeesList(Criteria cri);
	
	public int sels(Map<String, Object> map);
	
	public void insertFee(FeesVO fvo);
	
	public void insertAddr(Send_addr sdvo);
}
