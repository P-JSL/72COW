package com.nanicow.domain;


import java.sql.Date;

import lombok.Data;
import lombok.extern.log4j.Log4j;

@Log4j
@Data
public class NoticeDTO {

	private int num;
	private String title;
	private String content;
	private Date regdate;
	private String writer;
	
}
