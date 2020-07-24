package com.nanicow.domain;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductVO {

	private int num;
	private String userid, name, category;
	private int price, amount;
	private String picture;
	private Date pdate;
	private int views, DIBS;
	private String title, contents, addr, status;
	private List<MultipartFile> uploadfile; // ?
}
