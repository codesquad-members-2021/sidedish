package com.team15.sidedish.domain;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface DeliveryRepository extends CrudRepository<Delivery, Long> {

    @Query("select `delivery`.`id` as `id`, if(`delivery`.`is_monday`, 'true', 'false') as `is_monday`, `delivery`.`dish_hash` as `dish_hash`, `delivery`.`delivery_fee` as `delivery_fee`, `delivery`.`delivery_type` as `delivery_type`, `delivery`.`delivery_condition` as `delivery_condition` from `delivery` where `delivery`.`dish_hash` = :hash")
    Optional<Delivery> findByDishHash(String hash);

}
