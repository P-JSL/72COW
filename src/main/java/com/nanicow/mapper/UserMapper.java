package com.nanicow.mapper;

import java.util.List;
import java.util.Map;

import com.nanicow.domain.QuestionDTO;
import com.nanicow.domain.UsersVO;

public interface UserMapper {
	
	public int insert(UsersVO users);
	public int AuthInsert(UsersVO users);
	public UsersVO read(UsersVO users);
	
	public int list(); // 유저 전체 정보
	public boolean idchk(Map<String, String> map); //아이디 중복 체크
	public void Question(QuestionDTO question);
	public int insertQna(QuestionDTO question);
	public List<QuestionDTO> getQnaList();
}
