package com.nanicow.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class zip_codeVO {
	private String state; // 현
	private String city; // 도시명
	private String address; // 주소
	private String company; //현 + 쵸
	/*
	 *    <value state="愛知県" /> 
		  <value city="名古屋市中区" /> 
		  <value address="三の丸３丁目１−２" /> 
		  <value company="愛知県庁" />
	 * */

}
