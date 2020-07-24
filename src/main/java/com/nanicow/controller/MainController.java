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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nanicow.domain.UsersVO;
import com.nanicow.service.UsersService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */
@Log4j
@Controller
public class MainController {

	@Setter(onMethod_ = { @Autowired })
	private UsersService service;

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

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
	public String login_confirm(UsersVO users,HttpServletRequest req,RedirectAttributes attr) {
		String auth = service.read(users, req);
		if(auth.equals("ADMIN")){
			return "redirect:/admin/index";
		}else if(auth.equals("USERS")){			
			return "redirect:/";
		}
		attr.addFlashAttribute("error","IDやパスワードが間違いました。");
		return "redirect:/login";
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
	
	//유저측
	@RequestMapping("/sellproduct")
	public String sellproduct() {
		return "sellproduct";
	}
	
	@RequestMapping("/productdetail")
	public String productDetail() {
		return "productdetail";
	}
	
	@RequestMapping("/buyproduct")
	public String buyproduct() {
		return "buyproduct";
	}
	
	@RequestMapping("/sellerinfo")
	public String sellerinfo() {
		return "sellerinfo";
	}
	
	@RequestMapping("/categoryex")
	public String categoryex() {
		return "categoryex";
	}
	@RequestMapping("faq")
	public String faq() {
		return "faq";
	}
	
	@RequestMapping("myfaq")
	public String myfaq() {
		return "myfaq";
	}
	
	@RequestMapping("chat")
	public String chat() {
		return "chat";
	}
	
	@RequestMapping("profileModify")
	public String profileModify() {
		return "profileModify";
	}
	@RequestMapping("notice")
	public String notice() {
		return "notice";
	}
	
	@RequestMapping("pay")
	public String pay() {
		return "pay";
	}
}
