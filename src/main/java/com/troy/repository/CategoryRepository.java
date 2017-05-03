package com.troy.repository;

import org.springframework.data.repository.CrudRepository;

import com.troy.domain.Category;


public interface CategoryRepository extends CrudRepository<Category, Integer>{

}
