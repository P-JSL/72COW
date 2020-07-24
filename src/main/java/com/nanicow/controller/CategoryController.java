package com.nanicow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/cate")
public class CategoryController {

	@GetMapping("/gagu")
	public void gagupage() {
		
	}
	
	@GetMapping("/book")
	public void handmade() {
		
	}
	@GetMapping("/dress")
	public void dress() {
		
	}
	@GetMapping("/food")
	public void food() {
		
	}
	@GetMapping("/living")
	public void living() {
		
	}
	@GetMapping("/outside")
	public void outside() {
		
	}
}
