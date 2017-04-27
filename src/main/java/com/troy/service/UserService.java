package com.troy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.troy.domain.Catalog;
import com.troy.domain.User;
import com.troy.repository.CatalogRepository;
import com.troy.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
//	private CatalogRepository catalogrepo;
	private UserRepository userRepo;
	
	public User addUser(User user){
		userRepo.save(user);
		return user;
	}
	
	public void updateUser(User user){
		userRepo.save(user);
	}
	
	public User getUser(String email,String password){
		return userRepo.findByUserEmailAndUserPassword(email,password);
		
	}
//	
//	public void addCatalog(Catalog catalog){
//		catalogrepo.save(catalog);
//	}

}
