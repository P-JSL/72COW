package com.nanicow.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FeesVO {

	private int num;
	private String userid, tdate, category,picture;
	private int price, many, sum_price;
	private int separate;

}
