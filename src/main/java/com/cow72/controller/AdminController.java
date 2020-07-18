package com.cow72.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping(value = "/admin/*")
public class AdminController {

	@GetMapping("/index")
	public void admin_Index() {
		log.info("welcome index");
	}

	@GetMapping("/sales")
	public void admin_entry() {
		log.info("welcome sales");
	}

	@GetMapping("/userEntry")
	public void user_Ref() {
		log.info("welcome admin-userentry");
	}

	@GetMapping("/AllProduct")
	public void admin_product() {
		log.info("welcome Allproduct");
	}

	@GetMapping("/userList")
	public void admin_userlist() {
		log.info("welcome userlist");
	}

	@GetMapping("/userRef")
	public void admin_userref() {
		log.info("welcome userref");
	}
}
