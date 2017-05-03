package com.troy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.troy.service.FrontEndService;

@Controller
public class FrontEndController {
	
	@Autowired
	FrontEndService service;
	
	@RequestMapping("/")
	public ModelAndView getIndex(){
		ModelAndView model=new ModelAndView("index");
		model.addObject("catalogList", service.getAllCatalog());
		model.addObject("productList", service.getAllProduct());
		model.addObject("bodyType", "index");
		return model;
	}
	
	@RequestMapping("/products")
	public ModelAndView getProducts(){
		ModelAndView model=new ModelAndView("productList");
//		model.addObject("bodyType", "category");
		return model;
	}
	
	
	@RequestMapping("/productDetails")
	public ModelAndView getProductDetails(){
		ModelAndView model=new ModelAndView("productDetails");
//		model.addObject("bodyType", "category");
		return model;
	}
	
	@RequestMapping("/contact")
	public ModelAndView getcontact(){
		ModelAndView model=new ModelAndView("ContactUs");
//		model.addObject("bodyType", "category");
		return model;
	}
}
