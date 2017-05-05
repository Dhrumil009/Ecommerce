package com.troy.repository;

import org.springframework.data.repository.CrudRepository;

import com.troy.domain.Catalog;

public interface CatalogRepository extends CrudRepository<Catalog, Integer>{
	
	public Catalog findBycatalogName(String name);

}
