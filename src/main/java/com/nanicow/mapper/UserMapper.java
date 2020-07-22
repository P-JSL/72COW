package com.nanicow.mapper;

import com.nanicow.domain.UsersVO;

public interface UserMapper {
	
	public int insert(UsersVO users);
	public int AuthInsert(UsersVO users);
	public UsersVO read(UsersVO users);
	
	public int list(); // 유저 전체 정보
}
