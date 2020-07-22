package com.nanicow.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FeesVO {

	private int num;
	private String psid, tdate, category;
	private int price, many, sum_price;
	private int separate;

}
