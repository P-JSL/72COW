package com.nanicow.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.nanicow.domain.Contact_UserVO;
import com.nanicow.domain.FeesVO;
import com.nanicow.service.Contact_Service;
import com.nanicow.service.FeesService;
import com.nanicow.service.ProductService;

@RestController
public class AjaxController {

	@Autowired
	private FeesService service;

	@Autowired
	private ProductService pser;

	@Autowired
	private Contact_Service cser;
	
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
			hmap.put("psid", p.get(i).getPsid());
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

		for (int i = 0; i < 2; i++) {
			hmap.put("price" + i, fvo.get(i).getSum_price());
		}

		return new ResponseEntity<>(hmap, HttpStatus.OK);
	}

}
