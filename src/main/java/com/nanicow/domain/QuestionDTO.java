package com.nanicow.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class QuestionDTO {
	
	private int num;
	private String content;
	private String send_to;
	private String send_from;
	private String name;
	private String title;
	private Date sdate;

}
