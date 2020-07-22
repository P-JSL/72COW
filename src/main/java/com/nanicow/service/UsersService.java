package com.nanicow.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;

import com.nanicow.domain.UsersVO;
import com.nanicow.mapper.UserMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class UsersService {

	@Setter(onMethod_ = { @Autowired })
	private UserMapper mapper;

	public int insert(UsersVO users) {

		users.setPassword(BCrypt.hashpw(users.getPassword(), BCrypt.gensalt()));
		mapper.insert(users);

		return mapper.AuthInsert(users);
	}

	public String read(UsersVO users, HttpServletRequest req) {
		HttpSession session = req.getSession();

		UsersVO uvo = mapper.read(users);
		boolean confirm = BCrypt.checkpw(users.getPassword(), uvo.getPassword());
		List<String> roleNames = new ArrayList<String>();
		if (confirm) {
			uvo.getAuthlist().stream().forEach(auth -> roleNames.add(auth.getAuth()));
		}

		if (roleNames.contains("ADMIN")) {
			System.out.println("ADMIN");
			session.setAttribute("user", uvo);
			return "ADMIN";
		} 
		if (roleNames.contains("USER")) {
			System.out.println("USER");
			session.setAttribute("user", uvo);
		}
		return "USERS";
	}
	
	//
	
	public int UserCount() {
		
		return mapper.list();
	}
}
