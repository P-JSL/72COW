package com.nanicow.domain;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UsersVO{
	

	private int num;
	
	private String userid; //유저 아이디
	private String f_name,l_name; //유저 이름 (한자)
	private String f_e_name, l_e_name ; //유저 이름 (영어)
	private String password; //비밀번호
	private String email; //이메일
	private String phone; //핸드폰
	private String Address; //주소
	private int score; //평가 점수
	private Date rdate; //회원 등록 날짜
	private int point;
	
	private List<Users_AuthVO> authlist;
}
