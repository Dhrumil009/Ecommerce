package com.troy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.troy.domain.Catalog;
import com.troy.domain.Product;
import com.troy.repository.CatalogRepository;
import com.troy.repository.ProductRepository;

@Service
public class FrontEndService {
	
	@Autowired
	private CatalogRepository catalogRepo;
	@Autowired
	private ProductRepository productRepo;
	
	
	public Iterable<Catalog> getAllCatalog(){
		return catalogRepo.findAll();
	}
	
	public Iterable<Product> getAllProduct(){
		return productRepo.findAll();
	}
	
//	public List<Product> getTop8Product(){
//		return productRepo.findTop8();
//	}

}
