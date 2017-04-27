package com.troy.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.troy.domain.User;
import com.troy.service.EmailService;
import com.troy.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userServie;
	@Autowired
	public EmailService emailService;
	
	@RequestMapping("/index")
	public String index(){
		return "index";
	}
	
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
	@RequestMapping("/signup")
	public String signup(){
		return "signup";
	}
	
	@RequestMapping(value="/addUser", method=RequestMethod.POST)
	public String  addUser(@ModelAttribute("user") User user,@RequestParam("file") MultipartFile file){
		
		user=userServie.addUser(user);
		
		if (user != null && !file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = "D:\\c\\Projects\\SpringBoot\\troy\\src\\main\\resources\\static";
				File dir = new File(rootPath + File.separator + "usrimg");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator +user.getUserID()+file.getOriginalFilename());
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				user.setImage(user.getUserID()+file.getOriginalFilename());
				userServie.addUser(user);
				
			} catch (Exception e) {
				 e.printStackTrace();
			}
			
			String mailContent="Hello";
			
			emailService.sendMail(user.getUserEmail(), "Welcome to Troy Ecommerce "+user.getUserFirstName(),mailContent );
			
		} 
		
		return "login";
	}
	
	@RequestMapping("/doLogin")
	public ModelAndView doLogin(@RequestParam("email") String email ,  @RequestParam("password") String password ,HttpSession session){
		
		ModelAndView model = null;

		if(email!=null && password!=null){
			User user=userServie.getUser(email,password);
			if(user != null){
				if(user.isUserType() == false){
					if(user.isUserEmailVerified() == true){
						session.setAttribute("user", user);
						model=new ModelAndView("index");
					}else{
						model=new ModelAndView("login");
						model.addObject("msg", "Please Verify your email address.");
					}
				}else{
					session.setAttribute("user", user);
					model=new ModelAndView("webtool");
				}
				
			}else{
				model=new ModelAndView("login");
				model.addObject("msg", "Wrong email or Wrong password. Try again.");
			}
		}
		
		return model;
	}
	
}
