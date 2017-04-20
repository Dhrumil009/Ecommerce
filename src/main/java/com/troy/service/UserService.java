package com.troy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.troy.domain.User;
import com.troy.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepo;
	
	public void addUser(User user){
		
		userRepo.save(user);
	}

}
