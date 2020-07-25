package com.nanicow.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nanicow.domain.ProductVO;
import com.nanicow.service.ProductService;

@Controller
@RequestMapping("/cate")
public class CategoryController {
	@Autowired
	private ProductService service;

	@RequestMapping("/{path}")
	public String list(@PathVariable("path") String path, Model model) {
		List<ProductVO> allList = service.getAllList(path);
		model.addAttribute("allList", allList);
		return "cate/cateList";
	}

}
