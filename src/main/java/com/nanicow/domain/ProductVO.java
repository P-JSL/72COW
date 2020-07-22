package com.nanicow.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductVO {

	private int num;
	private String userid, psid, name, category;
	private int price, amount;
	private String picture;
	private Date pdate;
	private int views, DIBS;
}
