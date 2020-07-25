package com.nanicow.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nanicow.domain.ProductVO;
import com.nanicow.domain.UsersVO;
import com.nanicow.mapper.MypageMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MypageService {
	
	@Autowired
	private MypageMapper mapper;
	
	public UsersVO getUser(String userid) {
		return mapper.getUser(userid);
	};
	
	public List<ProductVO> getgoods(String userid){
		return mapper.getgoods(userid);
	};
	
	public List<ProductVO> getSoldout(String userid){
		return mapper.getSoldout(userid);
	};
	
	public int Mcount(String userid){
		return mapper.Mcount(userid);
	};
	
	public int Scount(String userid){
		return mapper.Scount(userid);
	};
	
	public void GoodsDelete(int num) {
		 mapper.GoodsDelete(num);
	};
	
	public void profileModify(UsersVO uvo) {
		mapper.profileModify(uvo);
	};
	
	public void outmember(String userid) {
		mapper.outmember(userid);
	}

	
 

}
