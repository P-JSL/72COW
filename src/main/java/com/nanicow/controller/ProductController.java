package com.nanicow.controller;

import java.io.File;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nanicow.domain.Criteria;
import com.nanicow.domain.ProductVO;
import com.nanicow.service.ProductService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class ProductController {

	@Autowired
	private ProductService service;

	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date); // 2020-05-14
		return str.replace("-", File.separator);
		// 파일경로 구분자 2020\05\14
	}

	@RequestMapping("/register")
	public void register() {
	}

	@PostMapping("/register")
	public String register(ProductVO product, RedirectAttributes rttr) {
		System.out.println("product : " + product);
		String uploadFolder = "C:\\uploads";

		String uploadFolderPath = getFolder();

		File uploadPath = new File(uploadFolder, uploadFolderPath);
		// c:\\upload\\2020\\05\\14

		if (uploadPath.exists() == false) { // 폴더 존재여부
			uploadPath.mkdirs(); // 폴더생성
		}
		String piclist =""; // 2개이상의 사진 , 구분자  "-"
		String updateFilename = "";
		File saveFile = null;
		for (MultipartFile multi : product.getUploadfile()) {
			updateFilename= multi.getOriginalFilename();
			System.out.println("updatefilename : " +  updateFilename.isEmpty());

			updateFilename = updateFilename.substring(updateFilename.lastIndexOf("//") + 1);

			UUID uuid = UUID.randomUUID();
			updateFilename = uuid.toString() + "_" + updateFilename;
			piclist += updateFilename + "-";
			
			if(!updateFilename.isEmpty()) {					
			saveFile= new File(uploadPath, updateFilename);
			}
			try {
				if( !updateFilename.isEmpty()) {					
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

	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("num") int num, Model model, @ModelAttribute("cri") Criteria cri) { // 이다음에 서비스
		service.viewCount(num);
		cri.setPageNum(num);
		// num을 넘기는거.. 어느 num ?
		model.addAttribute("product", service.read(cri));
	}

	@PostMapping("/modify")
	public String modifyOK(ProductVO product, RedirectAttributes rttr, @ModelAttribute("cri") Criteria cri,
			@RequestParam("upload") String upload) {

		String uploadFolder = "C:\\upload";
		String uploadPathm = uploadFolder + "\\" + upload;
		String uploadFolderPath = getFolder();
		File file = new File(uploadPathm);
		File uploadPath = new File(uploadFolder, uploadFolderPath);
		// c:\\upload\\2020\\05\\14

		if (uploadPath.exists() == false) { // 폴더 존재여부
			uploadPath.mkdirs(); // 폴더생성
		}
		String updateFilename = "";
		for (MultipartFile multi : product.getUploadfile()) {

			updateFilename = multi.getOriginalFilename();
			updateFilename = updateFilename.substring(updateFilename.lastIndexOf("//") + 1);

			UUID uuid = UUID.randomUUID();
			updateFilename = uuid.toString() + "_" + updateFilename;

			File saveFile = new File(uploadPath, updateFilename);

			try {
				multi.transferTo(saveFile);
				// 섬네일 파일 만드는 것
//			if (checkImageType(saveFile)) {
//				FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + updateFilename));
//				Thumbnailator.createThumbnail(multipart.getInputStream(), thumbnail, 100, 100);
//				thumbnail.close();
//			}
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}
		product.setPicture(uploadFolderPath + "\\" + updateFilename);
		if (service.modify(product)) {
			if (file.exists()) {
				file.delete();
			}
			rttr.addFlashAttribute("result", "수정완료");
		}
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("keyword", cri.getKeyword());
		rttr.addAttribute("type", cri.getType());
		return "/";
	}

	@RequestMapping("/delete")
	public String delete(@RequestParam("num") int num, RedirectAttributes rttr,
			@RequestParam("uploadfile") String upload) {
		String uploadFolder = "C:\\upload";
		String uploadPath = uploadFolder + "\\" + upload;
		File file = new File(uploadPath);
		if (service.remove(num)) {
			if (file.exists()) {
				file.delete();
			}
			rttr.addFlashAttribute("result", "삭제처리완료");
		}
		return "/";
	}

	private boolean checkImageType(File file) {// 이미지 파일 판단
		try {
			String contentType = Files.probeContentType(file.toPath());
			// probeContentType():실제 파일의 내용이 아니라 파일의 확장자를
			// 이용하여 마임 타입을 판단한다
			// file.topath() : File객체를 path객체로 변경한다
			return contentType.startsWith("image");
			// "image"문자열 값으로 시작되는 여부를 확인하고 true/false 리턴한다
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
