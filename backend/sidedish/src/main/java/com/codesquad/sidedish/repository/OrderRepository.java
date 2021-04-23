package com.codesquad.sidedish.repository;

import com.codesquad.sidedish.domain.Order;
import org.springframework.data.repository.CrudRepository;

public interface OrderRepository extends CrudRepository<Order, Long> {
}
