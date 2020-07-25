package com.nanicow.domain;

import lombok.Data;

@Data
public class CommentVO {
	 	private int cno;
	    private int num;
	    private String content;
	    private String userid;
	    private String reg_date;
}
