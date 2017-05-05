package com.troy.controller;

import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.troy.domain.Cart;
import com.troy.domain.Product;
import com.troy.domain.User;
import com.troy.service.EmailService;
import com.troy.service.FrontEndService;
import com.troy.service.UserService;



@Controller
public class FrontEndController {
	
	@Autowired
	FrontEndService service;
	@Autowired
	public EmailService emailService;
	@Autowired
	private UserService userServie;
	
	
	@RequestMapping("/")
	public ModelAndView getIndex(){
		ModelAndView model=new ModelAndView("index");
		model.addObject("catalogList", service.getAllCatalog());
		model.addObject("productList", service.getProductbyLive(1));
		model.addObject("bodyType", "index");
		return model;
	}
	
	@RequestMapping("/products")
	public ModelAndView getProducts(String categoryId){
		ModelAndView model=new ModelAndView("productList");
		model.addObject("category", service.getcategory(Integer.parseInt(categoryId)));
		model.addObject("productList", service.getProductByCategory(Integer.parseInt(categoryId)));
		return model;
	}
	
	
	
	
	@RequestMapping("/productDetails")
	public ModelAndView getProductDetails(String productID){
		ModelAndView model=new ModelAndView("productDetails");
		model.addObject("product",service.getProductbyId(Integer.parseInt(productID)));
		return model;
	}
	
	@RequestMapping("/getcategory")
	public ModelAndView getcategory(String catalogID){
		ModelAndView model=new ModelAndView("categoryList");
		model.addObject("catalog", service.getCatalogById(Integer.parseInt(catalogID)));
		model.addObject("categoryList",service.getcategoryList(Integer.parseInt(catalogID)));
		return model;
	}
	
	@RequestMapping("/addtoCart")
	public String addtoCart(HttpServletRequest request,String productID,HttpSession session){
		
		Integer proId=Integer.parseInt(productID);
		boolean flage=true;
		User user=(User)session.getAttribute("user");
		if(user != null){
			
			List<Cart> cart=(List<Cart>)session.getAttribute("cart");
			if(cart != null){
				for(int i=0 ; i<cart.size(); i++){
					if( proId == cart.get(i).getProductID()){
						cart.get(i).setProductQuantity(cart.get(i).getProductQuantity()+1.0f);
						flage=false;
					}
				}
				if(flage){
					Product product=service.getProductbyId(proId);
					Cart cartObj=new Cart();
					cartObj.setProductID(product.getProductCategoryID());
					cartObj.setProductName(product.getProductName());
					cartObj.setProductImage(product.getProductImage());
					cartObj.setProductPrice(product.getProductPrice());
					cartObj.setProductQuantity(1.0f);
					cartObj.setProductShortDesc(product.getProductShortDesc());
					cart.add(cartObj);
				}
			}else{
				cart=new ArrayList<Cart>();
				Product product=service.getProductbyId(proId);
				Cart cartObj=new Cart();
				cartObj.setProductID(product.getProductID());
				cartObj.setProductName(product.getProductName());
				cartObj.setProductImage(product.getProductImage());
				cartObj.setProductPrice(product.getProductPrice());
				cartObj.setProductQuantity(1.0f);
				cartObj.setProductShortDesc(product.getProductShortDesc());
				cart.add(cartObj);
				session.setAttribute("cart", cart);
			}
			
			String referer = request.getHeader("Referer");
		    return "redirect:"+ referer;
		}else{
			return "login";
		}
	}
	
	@RequestMapping("/removefromCart")
	public ModelAndView removefromCart(String productID, HttpSession session){
		Integer proId=Integer.parseInt(productID);
		ModelAndView model=new ModelAndView("cart");
		List<Cart> cart=(List<Cart>)session.getAttribute("cart");
		if(cart != null){
			if(cart.size() ==1){
				cart.clear();
				session.removeAttribute("cart");
			}else{
				for(int i=0 ; i<cart.size();i++){
					if( proId == cart.get(i).getProductID() && cart.get(i) != null){
						cart.remove(cart.get(i));
					}
				}
			}
		}
		return model;
	}
	
	
	@RequestMapping("/cart")
	public ModelAndView cart(){
		ModelAndView model=new ModelAndView("cart");
		return model;
	}
	
	@RequestMapping("/shipping")
	public ModelAndView shipping(HttpSession session,String message){
		ModelAndView model=new ModelAndView("shipping");
		session.setAttribute("OrderMessage", message);
		return model;
	}
	
	@RequestMapping("/address")
	public ModelAndView address(){
		ModelAndView model=new ModelAndView("address");
//		model.addObject("bodyType", "category");
		return model;
	}
	
	@RequestMapping("/payment")
	public ModelAndView payment(){
		ModelAndView model=new ModelAndView("payment");
//		model.addObject("bodyType", "category");
		return model;
	}
	@RequestMapping("/summary")
	public ModelAndView summary(){
		ModelAndView model=new ModelAndView("summary");
//		model.addObject("bodyType", "category");
		return model;
	}
	
	@RequestMapping("/contact")
	public ModelAndView getcontact(){
		ModelAndView model=new ModelAndView("ContactUs");
//		model.addObject("bodyType", "category");
		return model;
	}
	
	@RequestMapping("/aboutus")
	public ModelAndView getaboutus(){
		ModelAndView model=new ModelAndView("aboutus");
//		model.addObject("bodyType", "category");
		return model;
	}
	
	@RequestMapping("/contactUs")
	public ModelAndView contactUs(String email,String id_order,String message){
		ModelAndView model=new ModelAndView("ContactUs");
		model.addObject("msg", "Thank you for Contacting US ");
		System.out.println("sending mail....	");
		emailService.sendMail(email, "Support question from"+email+"Order Id number"+id_order,message );
		return model;
	}
	
	@RequestMapping("/processOrder")
	public ModelAndView processOrder(String amount,HttpSession session){
		ModelAndView model=new ModelAndView("orderAck");
		User user=(User)session.getAttribute("user");
		List<Cart> cart=(List<Cart>)session.getAttribute("cart");
		Float amt=Float.parseFloat(amount);
		DecimalFormat df = new DecimalFormat("##.##");
		df.setRoundingMode(RoundingMode.DOWN);
		String msg=(String)session.getAttribute("OrderMessage");
//		boolean flag=service.ProcessOrder(user, cart, msg,Float.parseFloat(df.format( amt)));
		boolean flag=true;
		Integer ram=new Random(1000).nextInt();
		if(flag){
			System.out.println("sending mail....	");
			try{
//				emailService.sendMail(user.getUserEmail(), "order Conformation #"+ram+"troyOrder","Your Order Has been Placed !" );
			}catch(Exception e){
				return model;
			}
		}
		
		return model;
	}
	
	@RequestMapping("/profile")
	public ModelAndView contactUs(){
		ModelAndView model=new ModelAndView("profile");
		return model;
	}
	
	
	@RequestMapping("/updateProfile")
	public ModelAndView updateProfile(HttpSession session,@ModelAttribute("user") User user){
		User user1=(User)session.getAttribute("user");
		user.setUserType(user1.isUserType()); 
		user.setUserRegistrationDate(user1.getUserRegistrationDate());
		user.setUserEmailVerified(true);
		user=userServie.addUser(user);
		session.setAttribute("user", user);
		ModelAndView model=new ModelAndView("profile");
		return model;
	}
	
	
	
}
