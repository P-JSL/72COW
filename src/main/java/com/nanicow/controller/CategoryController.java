package com.nanicow.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nanicow.domain.ProductVO;
import com.nanicow.service.ProductService;

@Controller
@RequestMapping("/cate/*")
public class CategoryController {
	@Autowired
	private ProductService service;

	@RequestMapping(value = "/{search}",method = {RequestMethod.GET,RequestMethod.POST})
	public String list(@PathVariable("search") String search, Model model) {
		List<ProductVO> allList = service.getAllList(search);
		model.addAttribute("allList", allList);
		return "cate/cateList";
	}

}
