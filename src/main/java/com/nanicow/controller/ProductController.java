package com.nanicow.controller;

import java.io.File;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nanicow.domain.ProductVO;
import com.nanicow.service.ProductService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class ProductController {

	@Autowired
	private ProductService service;

	@RequestMapping("/register")
	public void register() {
	}

	@PostMapping("/register")
	public String register(ProductVO product, RedirectAttributes rttr) {
		System.out.println(product);
		String uploadPath = "C:\\upload";
		// c:\\upload\\2020\\05\\14

		String piclist = "*"; // 2개이상의 사진 , 구분자 "-"
		String updateFilename = "";
		File saveFile = null;
		for (MultipartFile multi : product.getUploadfile()) {
			updateFilename = multi.getOriginalFilename();
			System.out.println("updatefilename : " + updateFilename.isEmpty());

			if (!updateFilename.isEmpty()) {
				updateFilename = updateFilename.substring(updateFilename.lastIndexOf("//") + 1);

				UUID uuid = UUID.randomUUID();
				updateFilename = uuid.toString() + "_" + updateFilename;
				piclist += updateFilename + "*";
				saveFile = new File(uploadPath, updateFilename);
				if (saveFile.exists() == false) { // 폴더 존재여부
					saveFile.mkdirs(); // 폴더생성
				}
			}
			try {
				if (!updateFilename.isEmpty()) {
					multi.transferTo(saveFile);
				}
				/*
				 * // 섬네일 파일 만드는 것 if (checkImageType(saveFile)) { FileOutputStream thumbnail =
				 * new FileOutputStream(new File(uploadPath, "s_" + updateFilename));
				 * Thumbnailator.createThumbnail(multipart.getInputStream(), thumbnail, 100,
				 * 100); thumbnail.close(); }
				 */
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}
		product.setPicture(piclist);
		service.register(product);
		rttr.addFlashAttribute("result", product.getNum());
		return "redirect:/";
	}
}
