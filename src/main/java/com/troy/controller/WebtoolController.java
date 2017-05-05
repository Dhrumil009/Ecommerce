package com.troy.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.troy.domain.Catalog;
import com.troy.domain.Category;
import com.troy.domain.Product;
import com.troy.domain.User;
import com.troy.service.WebtoolService;

@Controller
public class WebtoolController {
	
	@Autowired
	WebtoolService webtool;
	
	@RequestMapping("/webtools")
	public ModelAndView getIndex(HttpSession sesion){
		ModelAndView model=new ModelAndView();
		
		User user=(User)sesion.getAttribute("user");
		if(user != null){
			model.setViewName("webtools");
			model.addObject("headerMsg", "Dashboard");
		}else{
			model.setViewName("login");
		}
		
		return model;
	}
	
	@RequestMapping("/catalog")
	public ModelAndView catalogView(HttpSession sesion){
		ModelAndView model=new ModelAndView();
		User user=(User)sesion.getAttribute("user");
		if(user != null){
			model.addObject("headerMsg", "Catalog Management");
			model.addObject("catalogList", webtool.getAllCatalog());
			model.setViewName("catalog");
		}else{
			model.setViewName("login");
		}
		return model;
	}
	
	@RequestMapping("/addCatalog")
	public RedirectView  addCatalog(@ModelAttribute("catalog") Catalog catalog,@RequestParam("file") MultipartFile file){
		
		catalog=webtool.AddCatalog(catalog);
		
		if (catalog != null && !file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = "D:\\c\\Projects\\SpringBoot\\troy\\src\\main\\resources\\static";
				File dir = new File(rootPath + File.separator + "catalog");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator +catalog.getCatalogID()+file.getOriginalFilename());
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				catalog.setCatalogImage("catalog/"+catalog.getCatalogID()+file.getOriginalFilename());
				webtool.AddCatalog(catalog);
				
			} catch (Exception e) {
				 e.printStackTrace();
			}
			
		} 
		
		return new RedirectView("catalog");
	}
	
	@RequestMapping("/DeleteCatalog")
	public RedirectView  DeleteCatalog(@RequestParam("catalogId") String catalogId){
		webtool.DeleteCatalog(Integer.parseInt(catalogId));
		return new RedirectView("catalog");
	}
	
	
	@RequestMapping("/category")
	public ModelAndView categoryView(HttpSession sesion){
		ModelAndView model=new ModelAndView();
		User user=(User)sesion.getAttribute("user");
		if(user != null){
			model.addObject("headerMsg", "Category Management");
			model.addObject("catalogList", webtool.getAllCatalog());
			model.addObject("categoryList", webtool.getAllCategory());
			model.setViewName("category");
		}else{
			model.setViewName("login");
		}
		return model;
	}
	
	@RequestMapping("/addCategory")
	public RedirectView  addCategory(@ModelAttribute("category") Category category,@RequestParam("file") MultipartFile file){
		
		category=webtool.AddCategory(category);
		
		if (category != null && !file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = "D:\\c\\Projects\\SpringBoot\\troy\\src\\main\\resources\\static";
				File dir = new File(rootPath + File.separator + "category");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator +category.getCategoryID()+file.getOriginalFilename());
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				category.setCategoryImage("category/"+category.getCategoryID()+file.getOriginalFilename());
				webtool.AddCategory(category);
				
			} catch (Exception e) {
				 e.printStackTrace();
			}
			
		} 
		
		return new RedirectView("category");
	}
	
	@RequestMapping("/DeleteCategory")
	public RedirectView  DeleteCategory(@RequestParam("categoryID") String categoryID){
		webtool.DeleteCategory(Integer.parseInt(categoryID));
		return new RedirectView("category");
	}
	
	@RequestMapping("/product")
	public ModelAndView productView(HttpSession sesion){
		ModelAndView model=new ModelAndView();
		User user=(User)sesion.getAttribute("user");
		if(user != null){
			model.setViewName("product");
			model.addObject("menu", "menu");
			model.addObject("headerMsg", "Product Management");
			model.addObject("categoryList", webtool.getAllCategory());
			model.addObject("productList",webtool.getAllProduct() );
		}else{
			model.setViewName("login");
		}
		
		return model;
	}
	
	@RequestMapping("/addProduct")
	public RedirectView  addProduct(@ModelAttribute("product") Product product,@RequestParam("file") MultipartFile file){
		product=webtool.AddProduct(product);
		
		if (product != null && !file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = "D:\\c\\Projects\\SpringBoot\\troy\\src\\main\\resources\\static";
				File dir = new File(rootPath + File.separator + "product");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator +product.getProductID()+file.getOriginalFilename());
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				product.setProductImage("product/"+product.getProductID()+file.getOriginalFilename());
				webtool.AddProduct(product);
				
			} catch (Exception e) {
				 e.printStackTrace();
			}
			
		} 
		
		return new RedirectView("product");
	}
	
	@RequestMapping("/Deleteproduct")
	public RedirectView  Deleteproduct(@RequestParam("productID") String productID){
		webtool.deleteProduct(Integer.parseInt(productID));
		return new RedirectView("product");
	}

}
