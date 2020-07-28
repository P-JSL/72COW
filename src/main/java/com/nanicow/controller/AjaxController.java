package com.nanicow.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.nanicow.domain.Contact_UserVO;
import com.nanicow.domain.FeesVO;
import com.nanicow.domain.zip_codeVO;
import com.nanicow.service.CommentService;
import com.nanicow.service.Contact_Service;
import com.nanicow.service.FeesService;
import com.nanicow.service.ProductService;
import com.nanicow.service.UsersService;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
public class AjaxController {

	@Autowired
	private FeesService service;

	@Autowired
	private UsersService user;
	
	@Autowired
	private ProductService pser;

	@Autowired
	private Contact_Service cser;


	@Autowired
	private CommentService cmer;

	@PostMapping(value = "/admin/info", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<Object> UserInfo(@RequestBody String userid) {

		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(userid).getAsJsonObject().get("userid");
		String usercode = element.getAsString();

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("userid", usercode);

		List<FeesVO> p = pser.list(map);

		Map<String, Object> hmap = new HashMap<String, Object>();

		for (int i = 0; i < p.size(); i++) {
			hmap.put("psid", p.get(i).getUserid());
			hmap.put("sumprice", p.get(i).getSum_price());
			hmap.put("count", p.get(i).getPrice());
			hmap.put("pdate", p.get(i).getTdate());
		}
		int iss = pser.productcount(usercode);
		if (iss != 0) {
			hmap.put("pcount", iss);
		}

		return new ResponseEntity<>(hmap, HttpStatus.OK);
	}

	@PostMapping(value = "/admin/entry_uri", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<Object> ichibannuri() {

		Map<String, Object> hmap = new HashMap<String, Object>();
		hmap.put("uriichi", service.uriage());
		hmap.put("sales", service.AllSales());
		return new ResponseEntity<>(hmap, HttpStatus.OK);

	}

	@PostMapping(value = "/admin/chart", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<Object> chartlist() {

		Map<String, Object> hmap = new HashMap<String, Object>();
		hmap.put("uriichi", service.uriage());
		return new ResponseEntity<>(hmap, HttpStatus.OK);

	}

	@PostMapping(value = "/admin/codefind", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<Object> UserCodeInfo(@RequestBody String userid) {

		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(userid).getAsJsonObject().get("userid");
		String id = element.getAsString();

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("userid", id);
		List<Contact_UserVO> cvo = cser.contusermsg(map);
		Map<String, Object> hmap = new HashMap<String, Object>();

		hmap.put("otoi", cvo);
		return new ResponseEntity<>(hmap, HttpStatus.OK);
	}

	@PostMapping(value = "/admin/month", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<Object> SalesMonth() {

		Calendar cal = Calendar.getInstance();

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("tdate", cal.getTime());

		List<FeesVO> fvo = service.SalesComm(map);
		Map<String, Object> hmap = new HashMap<String, Object>();

		for (int i = 0; i < fvo.size(); i++) {
			hmap.put("price" + i, fvo.get(i).getSum_price());
		}
			log.info("hamp : " + map);
		return new ResponseEntity<>(hmap, HttpStatus.OK);
	}

	public static final String ZIPCODE_API_URL = "http://zip.cgis.biz/xml/zip.php?zn=";

	@PostMapping(value = "/zip_code_find", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String zip_code_find(@RequestBody String zip_code) throws IOException {
		Map<String, Object> paramMap = new HashMap<String, Object>();

		JsonParser parser = new JsonParser();
		JsonElement elem = parser.parse(zip_code).getAsJsonObject().get("zip_code");
		String el = elem.getAsString();
		System.out.println(el);
		String url = "";
		if (el.length() < 6) {
			url = ZIPCODE_API_URL + el + "&ver=1";
			Document document = Jsoup.connect(url).get();
			String errorCode = document.select("error_code").text();

			System.out.println(document);
			if (null == errorCode || "".equals(errorCode)) {
				Elements elements = document.select("ADDRESS_value");
				List<zip_codeVO> list = new ArrayList<zip_codeVO>();
				zip_codeVO zip_codeVO = null;

				for (Element element : elements) {
					zip_codeVO = new zip_codeVO();
					zip_codeVO.setState(element.select("value").get(4).attr("state"));
					zip_codeVO.setCity(element.select("value").get(5).attr("city"));
					zip_codeVO.setAddress(element.select("value").get(6).attr("address"));
					zip_codeVO.setCompany(element.select("value").get(7).attr("company"));
					list.add(zip_codeVO);
				}
				// list 결과 put
				paramMap.put("list", list);
			} else {
				String errorMessage = document.select("message").text();
				paramMap.put("errorCode", errorCode);
				paramMap.put("errorMessage", errorMessage);
			}
		} else {
			url = ZIPCODE_API_URL + el;
			Document document = Jsoup.connect(url).get();
			String errorCode = document.select("error_code").text();

			System.out.println(document);
			if (null == errorCode || "".equals(errorCode)) {
				Elements elements = document.select("ADDRESS_value");
				List<zip_codeVO> list = new ArrayList<zip_codeVO>();
				zip_codeVO zip_codeVO = null;

				for (Element element : elements) {
					zip_codeVO = new zip_codeVO();
					zip_codeVO.setState(element.select("value").get(4).attr("state"));
					zip_codeVO.setCity(element.select("value").get(5).attr("city"));
					zip_codeVO.setAddress(element.select("value").get(6).attr("address"));
					zip_codeVO.setCompany(element.select("value").get(7).attr("company"));
					list.add(zip_codeVO);
				}
				// list 결과 put
				paramMap.put("list", list);
			} else {
				String errorMessage = document.select("message").text();
				paramMap.put("errorCode", errorCode);
				paramMap.put("errorMessage", errorMessage);
			}
		}
		// document 선언
		
		System.out.println(paramMap);
		return (new Gson()).toJson(paramMap);

	}

	@PostMapping(value = "/idconfirm", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<Boolean> idconfirm(@RequestBody String userid) {
		
		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(userid).getAsJsonObject().get("id");
		String id = element.getAsString();

		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		
		boolean ok  = user.idchk(map);
		System.out.println("ok : " + ok);
		return new ResponseEntity<>(ok, HttpStatus.OK);
	}
	

	@PostMapping(value = "/comment", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<Object> comment(@RequestBody String data) throws Exception {

		JsonParser parser = new JsonParser();
		String userid = parser.parse(data).getAsJsonObject().get("userid").getAsString(); // 댓글
		String content = parser.parse(data).getAsJsonObject().get("content").getAsString(); // 댓글
		int num = parser.parse(data).getAsJsonObject().get("num").getAsInt();

		log.info("id : " + userid + ", content : " + content + ", num : " + num);

		Map<String, Object> rep = new HashMap<String, Object>();
		rep.put("userid", userid);
		rep.put("content", content);
		rep.put("num", num);
		// 댓글 DB 넣기
		cmer.commentInsertService(rep);

		// 댓글 DB에 넣은거 뽑아오기
		Map<String, Object> maps = new HashMap<String, Object>();
		List<?> list = cmer.commentListService();

		maps.put("list", list);

		return new ResponseEntity<>(maps, HttpStatus.OK);

	}

	@PostMapping(value = "/commread", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<Object> commread() throws Exception {

		// 댓글 DB에 넣은거 뽑아오기
		Map<String, Object> maps = new HashMap<String, Object>();
		List<?> list = cmer.commentListService();

		maps.put("list", list);

		return new ResponseEntity<>(maps, HttpStatus.OK);

	}
}
