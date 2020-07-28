package com.nanicow.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nanicow.domain.FeesVO;
import com.nanicow.domain.ProductVO;
import com.nanicow.domain.QuestionDTO;
import com.nanicow.domain.Send_addr;
import com.nanicow.domain.UsersVO;
import com.nanicow.service.FeesService;
import com.nanicow.service.ProductService;
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
	@Setter(onMethod_ = { @Autowired })
	private ProductService pser;
	@Setter(onMethod_ = { @Autowired })
	private FeesService fser;
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		model.addAttribute("list", pser.productlist());
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
	public String login_confirm(UsersVO users, HttpServletRequest req, RedirectAttributes attr) {
		String auth = service.read(users, req);
		if (auth.equals("ADMIN")) {
			return "redirect:/admin/index";
		} else if (auth.equals("USERS")) {
			return "redirect:/";
		}
		attr.addFlashAttribute("error", "IDやパスワードが間違いました。");
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

	// 유저측
	@RequestMapping("/sellproduct")
	public String sellproduct() {
		return "sellproduct";
	}

	@GetMapping("/productdetail")
	public String productDetail(ProductVO pdto, Model model) {
		System.out.println(pdto);
		model.addAttribute("pdto", pdto);
		Map<String,Object> map =  new HashMap<String, Object>();
		map.put("userid", pdto.getUserid());
		List<String> pv = pser.getSellerList(map);
		System.out.println("pv : " + pv);
		model.addAttribute("selpic", pv);
		model.addAttribute("uri" ,pser.numsel(map));
		return "productdetail";
	}

	@RequestMapping(value = "/buyproduct", method = RequestMethod.GET)
	public String buyproduct(int num,String userid,Model model) {
		model.addAttribute("one",pser.oneList(num));
		model.addAttribute("userid",userid);
		return "buyproduct";
	}
	@PostMapping("/buyproduct")
	public String bpro(FeesVO fvo,Send_addr sdvo ,RedirectAttributes rttr) {
		fser.insertFee(fvo);
		fser.insertAddr(sdvo);
		rttr.addAttribute("userid",fvo.getUserid());
		return "redirect:/mypage/myshop";
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

	@GetMapping("/myfaq")
	public String qnalist(Model model) {
		log.info(service.getQnaList());
		model.addAttribute("qnalist", service.getQnaList());

		return "/myfaq";
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

	@RequestMapping("/search")
	public String Search(@RequestParam(required = false) String search, Model model) {
		List<ProductVO> allList = pser.getSearchList(search);
		model.addAttribute("allList", allList);
		return "/home";
	}

	@RequestMapping("/question")
	public String Question(@ModelAttribute QuestionDTO question) {
		service.question(question);
		return "/faq";
	}
}
