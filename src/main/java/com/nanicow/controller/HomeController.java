package com.nanicow.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nanicow.domain.UsersVO;
import com.nanicow.service.UsersService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */
@Log4j
@Controller
public class HomeController {

	@Setter(onMethod_ = { @Autowired })
	private UsersService service;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signUp() {
		return "signup";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@PostMapping("/login")
	public String login_confirm(UsersVO users,HttpServletRequest req) {
		String auth = service.read(users, req);
		if(auth.equals("ADMIN")){
			return "redirect:/admin/index";
		}else {			
			return "redirect:/";
		}
	}
	
	@PostMapping("/signup")
	public String NewAccount(UsersVO users) {

		log.info("유저 : " + users);
		service.insert(users);
		return "redirect:/login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession(true);
		
		session.invalidate();
		
		return "/login";
	}

}
