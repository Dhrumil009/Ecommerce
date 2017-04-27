package com.troy.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.troy.domain.User;

public interface UserRepository  extends CrudRepository<User, Integer>{
	
	@Query("SELECT u FROM user u where u.UserEmail = ?1 AND u.UserPassword = ?2")
	User findByUserEmailAndUserPassword(String UserEmail,String UserPassword);

}
