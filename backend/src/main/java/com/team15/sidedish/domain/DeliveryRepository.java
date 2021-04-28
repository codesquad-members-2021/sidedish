package com.team15.sidedish.domain;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface DeliveryRepository extends CrudRepository<Delivery, Long> {

    @Query("SELECT `DELIVERY`.`ID` AS `ID`, IF(`DELIVERY`.`IS_MONDAY`, 'true', 'false') AS `IS_MONDAY`, `DELIVERY`.`DISH_HASH` AS `DISH_HASH`, `DELIVERY`.`DELIVERY_FEE` AS `DELIVERY_FEE`, `DELIVERY`.`DELIVERY_TYPE` AS `DELIVERY_TYPE`, `DELIVERY`.`DELIVERY_CONDITION` AS `DELIVERY_CONDITION` " +
            "FROM `DELIVERY` WHERE `DELIVERY`.`DISH_HASH` = :hash")
    Optional<Delivery> findByDishHash(String hash);

}
