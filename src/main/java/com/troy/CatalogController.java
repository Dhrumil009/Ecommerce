package com.troy;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CatalogController {

	@RequestMapping("/")
	public String getCatalog(){
		
		return "index";
		
	}
}
