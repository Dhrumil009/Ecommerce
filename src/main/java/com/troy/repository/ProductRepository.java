package com.troy.repository;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.troy.domain.Product;

public interface ProductRepository extends CrudRepository<Product, Integer> {

//	@Query("SELECT TOP 8 * FROM product")
//	List<Product> findTop8();
}
