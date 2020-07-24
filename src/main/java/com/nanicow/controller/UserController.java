package com.nanicow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/user")
public class UserController {
	
	@GetMapping("/lindex")
	public void lindex() {
		
	}
	
	@GetMapping("/myshop")
	public void myshop() {
		
	}
	
	@GetMapping("/hidenshop")
	public void hidenshop() {
		
	}
	
	@GetMapping("/selected")
	public void selected() {
		
	}
	

}
