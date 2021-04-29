package com.codesquad.sidedish.SideDish.domain;

import org.springframework.data.repository.CrudRepository;

public interface DeliveryRepository extends CrudRepository<Delivery, String> {
//    List<Delivery> findAllByDishDetailHash(String dishDetailHash);
}
