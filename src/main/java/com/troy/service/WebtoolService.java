package com.troy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.troy.domain.Catalog;
import com.troy.domain.Category;
import com.troy.domain.Product;
import com.troy.repository.CatalogRepository;
import com.troy.repository.CategoryRepository;
import com.troy.repository.ProductRepository;

@Service
public class WebtoolService {
	
	@Autowired
	CatalogRepository catalogRepo;
	@Autowired
	CategoryRepository categoryRepo;
	@Autowired
	ProductRepository productRepo;
	
	public Iterable<Catalog> getAllCatalog(){
		return catalogRepo.findAll();
	}
	
	
	public Catalog AddCatalog(Catalog catalog){
		return catalogRepo.save(catalog);
	}
	
	public void DeleteCatalog(Integer CatalogID){
		catalogRepo.delete(CatalogID);
	}
	
	public Iterable<Category> getAllCategory(){
		return categoryRepo.findAll();
	}
	
	
	public Category AddCategory(Category category){
		return categoryRepo.save(category);
	}
	
	public void DeleteCategory(Integer categoryID){
		categoryRepo.delete(categoryID);
	}
	
	public Iterable<Product> getAllProduct(){
		return productRepo.findAll();
	}
	
	public Product AddProduct(Product product){
		return productRepo.save(product);
	}
	
	public void deleteProduct(Integer productID){
		productRepo.delete(productID);
	}

}
