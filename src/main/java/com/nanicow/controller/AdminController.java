package com.nanicow.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.nanicow.domain.Contact_UserVO;
import com.nanicow.domain.Criteria;
import com.nanicow.domain.FeesUsersVO;
import com.nanicow.domain.FeesVO;
import com.nanicow.service.Contact_Service;
import com.nanicow.service.FeesService;
import com.nanicow.service.ProductService;
import com.nanicow.service.UsersService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping(value = "/admin/*")
public class AdminController {

	@Autowired
	private UsersService user;
	
	@Autowired
	private FeesService fser;
	
	@Autowired
	private ProductService pser;
	
	@Autowired
	private Contact_Service cser;
	
	@GetMapping("/index")
	public void admin_Index(Model model) {
		log.info("welcome index");
		
		// 1) 모든 매상 (- 관리자)
		// 2) 모든 수수료 (- 유저 출품자)
		// 1), 2) 는 AJAX에서 해결
		
		// 3) 모든 회원가입한 인원 ( 자기 제외 )
		model.addAttribute("usercount",user.UserCount());
		// 4) 그래프 : 하루마다의 매상 
		List<FeesVO> fvo= fser.list();
		Gson gson = new Gson();
		String jel = gson.toJson(fvo);
		model.addAttribute("data",jel);
		// 5) 월마다의 유저수, 상품 수, 매상, 수수료, 횟수
		// 아직 미정
		
		// 6) TOP4 인기 상품
		model.addAttribute("plist",pser.product_top4());
	}

	@GetMapping("/sales")
	public void admin_entry(Model model) {
		log.info("welcome sales");
		// 1) 이번달 매상
		// 2) 이번달 수수료
		// 3) 상품 목록
		model.addAttribute("product",pser.productList());
	}

	@GetMapping("/userEntry")
	public void user_Ref(Model model) {
		log.info("welcome admin-userentry");
		// 1) 모든 상품의 총 가격
		// 2) 제일 많이 판 출품자
		// 3) 유저(출품자)의 상품 리스트
		
		// 4) 출품자 정보
		model.addAttribute("seller",pser.SellerList());
	}

	@GetMapping("/AllProduct")
	public void admin_product(Model model) {
		log.info("welcome Allproduct");
		// 1) 상품 이미지 , 상품 코드, 상품 가격, 상품 제목
	
	}

	@GetMapping("/userList")
	public void admin_userlist(Model model, Criteria cri) {
		log.info("welcome userlist");
		// 1) 검색기능
		// 2) 유저 목록
		// 3) Ajax로 그 유저의 1:1문의 목록
		List<FeesUsersVO> lmap = fser.UserFeesList(cri);
		System.out.println(lmap);
		model.addAttribute("list",lmap);
		model.addAttribute("pageMaker", cri);
	}

	@GetMapping("/userRef")
	public void admin_userref(Model model,@RequestParam("userid") String userid) {
		log.info("welcome userref");
		// 1) 문의하기 --> 유저에서 감
		model.addAttribute("userid",userid);
	}
	@PostMapping("/userRef")
	public String admin_cont_send(Contact_UserVO cavo) {
		cser.insert(cavo);
		
		return "redirect:/admin/userList";
	}
	
	@GetMapping("/reflist")
	public void reflist(Model model) {
		model.addAttribute("list",cser.AllList());
	}
}
