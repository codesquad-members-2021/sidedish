package com.codesquad.sidedish.SideDish.domain;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface DeliveryRepository extends CrudRepository<Delivery, String> {
    @Query("SELECT delivery.* from sidedish.delivery INNER JOIN sidedish.dish_delivery ON delivery.id = dish_delivery.delivery WHERE dish_delivery.dish = :detailHash;")
    List<Delivery> findAllByDish(String detailHash);
}
