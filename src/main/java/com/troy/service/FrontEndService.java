package com.troy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.troy.domain.Cart;
import com.troy.domain.Catalog;
import com.troy.domain.Category;
import com.troy.domain.OrderItem;
import com.troy.domain.Product;
import com.troy.domain.TroyOrder;
import com.troy.domain.User;
import com.troy.repository.CatalogRepository;
import com.troy.repository.CategoryRepository;
import com.troy.repository.OrderItemRepository;
import com.troy.repository.OrderRepository;
import com.troy.repository.ProductRepository;

@Service
public class FrontEndService {
	
	@Autowired
	private CatalogRepository catalogRepo;
	@Autowired
	private ProductRepository productRepo;
	@Autowired
	private CategoryRepository categoryRepo;
	@Autowired 
	private OrderRepository orderRepo;
	@Autowired 
	private OrderItemRepository orderItemRepo;
	
	
	public Iterable<Catalog> getAllCatalog(){
		return catalogRepo.findAll();
	}
	
	public Catalog getCatalogById(Integer catalogID){
		return catalogRepo.findOne(catalogID);
	}
	
	
	public Iterable<Product> getAllProduct(){
		return productRepo.findAll();
	}
	
	public List<Product> getProductbyLive(Integer live){
		return productRepo.findByproductLive(live);
	}
	
	
	public Product getProductbyId(Integer productID){
		return productRepo.findOne(productID);
	}
	
	public List<Category> getcategoryList(Integer CatalogId){
		return categoryRepo.findBycatalogID(CatalogId);
	}
	
	public boolean ProcessOrder(User user, List<Cart> cart, String msg	,Float amount){
		try{
			if(user!=null && cart != null){
//				TroyOrder order =new TroyOrder(); 
//				order.setOrderUserID(user.getUserID());
//				order.setOrderAmount(amount);
//				order.setOrderShipName(user.getUserFirstName());
//				order.setOrderShipAddress(user.getUserAddress());
//				order.setShipaddresstwo(user.getUserAddress2());
//				order.setOrderCity(user.getUserCity());
////				order.setOrderState(user.getUserState());
//				order.setOrderCountry(user.getUserCountry());
//				order.setOrderZip(user.getUserZip());
//				order.setOrderPhone(user.getUserPhone());
//				order.setOrderEmail(user.getUserEmail());
////				order.setOrderDate(new Date().toString());
////				order.setOrderStatus("Created");
//				order.setOrderComments(msg);
//				System.out.println(order);
//				order=orderRepo.save(order);
//				
//				for(int i=0; i<cart.size();i++){
//					OrderItem item=new OrderItem();
//					item.setOrderID(order.getOrderID());
//					item.setProductID(cart.get(i).getProductID());
//					item.setProductName(cart.get(i).getProductName());
//					item.setProductPrice(cart.get(i).getProductPrice());
//					item.setProductQuantity(cart.get(i).getProductQuantity());
//					orderItemRepo.save(item);
//				}
//				
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return true;
	}
	
	public Category getcategory(Integer categoryId){
		return categoryRepo.findOne(categoryId);
	}
	
	public List<Product> getProductByCategory(Integer categoryId){
		return productRepo.findByproductCategoryID(categoryId);
	}
	
	
//	public List<Product> getTop8Product(){
//		return productRepo.findTop8();
//	}

}
