package com.nanicow.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FeesUsersVO {

	private String f_name;
	private String l_name,o;
	private int count;
	private String userid;
	private Date rdate;
}
