package com.troy.repository;

import org.springframework.data.repository.CrudRepository;

import com.troy.domain.OrderItem;

public interface OrderItemRepository extends CrudRepository<OrderItem, Integer> {

}
