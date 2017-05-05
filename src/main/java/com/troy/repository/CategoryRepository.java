package com.troy.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.troy.domain.Category;


public interface CategoryRepository extends CrudRepository<Category, Integer>{
	
	public List<Category> findBycatalogID(Integer catalogID);

}
