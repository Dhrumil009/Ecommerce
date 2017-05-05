package com.troy.repository;

import org.springframework.data.repository.CrudRepository;

import com.troy.domain.TroyOrder;

public interface OrderRepository extends CrudRepository<TroyOrder, Integer> {

}
