package com.nanicow.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nanicow.domain.NoticeDTO;
import com.nanicow.service.NoticeService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Log4j
@Controller
@RequestMapping("/yeeun")
public class NoticeController {

	
	@Setter(onMethod_ = { @Autowired })
	private NoticeService service;
	
	@GetMapping("/notice")
	public void notice(Model model) {
		model.addAttribute("nlist", service.getNotice());
	}
	
	@GetMapping("/noticeInsert")
	public String noticeInsert(NoticeDTO nvo ,RedirectAttributes rttr) {
		service.insert(nvo);
		return "redirect:/yeeun/notice";
	}
	
	@GetMapping("/noticeWrite")
	public void noticewtite() {
		
	}
	
	@GetMapping("/NoticeModify")
	public void NoticeModify(@RequestParam("num") int num, Model model) {
		model.addAttribute("notice", service.NoticeModify(num));
	}
	
	@GetMapping("/noticeModifyOK")
	public String noticeModifyOK(NoticeDTO nvo) {
		service.noticeModifyOK(nvo);
		
		return "redirect:/yeeun/notice";
	}
	
	@GetMapping("/NoticeDelete")
	public String NoticeDelete(@RequestParam("num") int num) {
		service.NoticeDelete(num);
		return "redirect:/yeeun/notice";
	}
	
}
