package com.nanicow.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nanicow.domain.Contact_UserVO;
import com.nanicow.mapper.Contact_UserMapper;

@Service
public class Contact_Service {

	@Autowired
	private Contact_UserMapper mapper;
	
	public Contact_UserVO getUserContactList(Map<String,Object> map) {
		
		return mapper.getUserContactList(map);
	}
	
	public int insert(Contact_UserVO cavo) {
		
		return mapper.insert(cavo);
	}
	
	public List<Contact_UserVO> AllList(){
		
		return mapper.AllContList();
	}
	
	public List<Contact_UserVO> contusermsg(Map<String,Object> map){
		
		return mapper.contusermsg(map);
	}

}
