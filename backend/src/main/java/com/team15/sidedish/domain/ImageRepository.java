package com.team15.sidedish.domain;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ImageRepository extends CrudRepository<Image, Long> {

    @Query("SELECT `IMAGE`.`ID` AS `ID`, IF(`IMAGE`.`IS_THUMB`, 'true', 'false') AS `IS_THUMB`, `IMAGE`.`DISH_HASH` AS `DISH_HASH`, `IMAGE`.`IMAGE_URL` AS `IMAGE_URL` " +
            "FROM `IMAGE` WHERE `IMAGE`.`DISH_HASH` = :hash  AND (`IMAGE`.`IS_THUMB` = TRUE) ORDER BY ID ASC;")
    List<Image> findAllByDishHashAndIsThumbTrue(String hash);
    @Query("SELECT `IMAGE`.`ID` AS `ID`, IF(`IMAGE`.`IS_THUMB`, 'true', 'false') AS `IS_THUMB`, `IMAGE`.`DISH_HASH` AS `DISH_HASH`, `IMAGE`.`IMAGE_URL` AS `IMAGE_URL` " +
            "FROM `IMAGE` WHERE `IMAGE`.`DISH_HASH` = :hash  AND (`IMAGE`.`IS_THUMB` = FALSE) ORDER BY ID ASC;")
    List<Image> findAllByDishHashAndIsThumbFalse(String hash);
}
