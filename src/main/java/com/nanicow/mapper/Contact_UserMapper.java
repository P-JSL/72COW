package com.nanicow.mapper;

import java.util.List;
import java.util.Map;

import com.nanicow.domain.Contact_UserVO;

public interface Contact_UserMapper {

	public Contact_UserVO getUserContactList(Map<String,Object> map);
	
	public int insert(Contact_UserVO cavo);
	
	public List<Contact_UserVO> AllContList();
	
	public List<Contact_UserVO> contusermsg(Map<String,Object> map);
}
