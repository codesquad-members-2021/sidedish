package com.codesquad.sidedish.SideDish.domain;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface DishRepository extends CrudRepository<Dish, String> {
    @Query("SELECT * from sidedish.dish WHERE dish.category_id = :categoryId")
    List<Dish> findAllByCategoryId(Long categoryId);

    @Query("SELECT * from sidedish.dish WHERE dish.detail_hash = :detailHash")
    Dish findByDetailHash(String detailHash);
}
