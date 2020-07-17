package com.cow72.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

@RestController
public class AjaxController {

	@ResponseBody
	@PostMapping(value = "/admin/info", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<Object> UserInfo(@RequestBody String userid) {

		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(userid).getAsJsonObject().get("userid");
		String usercode = element.getAsString();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("info", usercode);
		
		return new ResponseEntity<>(map, HttpStatus.OK);
	}
}