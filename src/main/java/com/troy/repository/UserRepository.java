package com.troy.repository;

import org.springframework.data.repository.CrudRepository;

import com.troy.domain.User;

public interface UserRepository  extends CrudRepository<User, Integer>{

}
