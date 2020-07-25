package com.nanicow.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nanicow.domain.UsersVO;
import com.nanicow.service.MypageService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@Setter(onMethod_ = { @Autowired })
	private MypageService service;
	
	@GetMapping("/myshop")
	public void myshop(@RequestParam("userid") String userid, Model model) {
		System.out.println(userid);
		model.addAttribute("goodslist", service.getgoods(userid));
		model.addAttribute("userlist", service.getUser(userid));
		model.addAttribute("count", service.Mcount(userid));
		log.info(service.getgoods(userid));
		
	}
	
	@GetMapping("/soldout")
	public void soldout(@RequestParam("userid") String userid,Model model) {
		model.addAttribute("userlist", service.getUser(userid));
		model.addAttribute("soldoutlist", service.getSoldout(userid));
		model.addAttribute("count", service.Scount(userid));
		
	}
	
	@GetMapping("/GoodsDelete")
	public String GoodsDelete(@RequestParam("num") int num,@RequestParam("userid") String userid,RedirectAttributes rttr) {
		service.GoodsDelete(num);
		rttr.addAttribute("userid", userid);
		return "redirect:/mypage/myshop";
	}
	
	@GetMapping("/SoldDelete")
	public String SoldDelete(@RequestParam("num") int num,@RequestParam("userid") String userid,RedirectAttributes rttr) {
		service.GoodsDelete(num);
		rttr.addAttribute("userid", userid);
		return "redirect:/mypage/soldout";
	}
	
	@GetMapping("/outmember")
	public String outmember(@RequestParam("userid") String userid) {
		service.outmember(userid);
		
		return "redirect:/logout";
	}
	
	@GetMapping("/profileModify")
	public String profileModify(@RequestParam("userid") String userid,Model model) {
		model.addAttribute("userlist", service.getUser(userid));
		return "/mypage/profileModify";
	}
	
	@PostMapping("/profileModify")
	public String PsofileModify(UsersVO uvo,RedirectAttributes rttr) {
		System.out.println(uvo);
		String pw = BCrypt.hashpw(uvo.getPassword(), BCrypt.gensalt());
		uvo.setPassword(pw);
		service.profileModify(uvo);
		rttr.addAttribute("userid", uvo.getUserid());
		return "redirect:/mypage/myshop";
	}
}
