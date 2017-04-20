package com.troy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.troy.domain.User;
import com.troy.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userServie;
	
	@RequestMapping("/signup")
	public String signup(){
		return "signup";
	}
	
	@RequestMapping(value="/addUser", method=RequestMethod.POST)
	public String  addUser(){
		User user = new User();
		user.setUserEmail("d@troy.edu");
		user.setUserPassword("aaa");
		user.setUserFirstName("dhrumil");
		user.setUserLastName("munshi");
		user.setUserAddress("hiiii");
		user.setUserAddress2("hii2");
		userServie.addUser(user);
		return "login";
	}
	
}
