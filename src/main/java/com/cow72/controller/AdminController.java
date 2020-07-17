package com.cow72.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/admin/*")
public class AdminController {
	
	@GetMapping("/index")
	public void admin_Index() {
		
	}
	@GetMapping("/sales")
	public void admin_entry() {
		
	}
	
	@GetMapping("/userEntry")
	public void user_Ref() {
		
	}
}
