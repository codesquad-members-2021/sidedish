package com.team15.sidedish.domain;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ImageRepository extends CrudRepository<Image, Long> {

    @Query("select `image`.`id` as `id`, if(`image`.`is_thumb`, 'true', 'false') as `is_thumb`, `image`.`dish_hash` as `dish_hash`, `image`.`image_url` as `image_url` from `image` where `image`.`dish_hash` = :hash  and (`image`.`is_thumb` = true) order by id asc")
    List<Image> findAllByDishHashAndIsThumbTrue(String hash);
    @Query("select `image`.`id` as `id`, if(`image`.`is_thumb`, 'true', 'false') as `is_thumb`, `image`.`dish_hash` as `dish_hash`, `image`.`image_url` as `image_url` from `image` where `image`.`dish_hash` = :hash  and (`image`.`is_thumb` = false) order by id asc;")
    List<Image> findAllByDishHashAndIsThumbFalse(String hash);
}
