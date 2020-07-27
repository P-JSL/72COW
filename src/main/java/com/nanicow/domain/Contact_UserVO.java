package com.nanicow.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Contact_UserVO {
	
	private String send_to;
	private String send_from;
	private String message;
	private Date sdate;
	
	//
	private String user_num;
	
}
