package com.codesquad.sidedish.SideDish.domain;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface DishRepository extends CrudRepository<Dish, String> {
    List<Dish> findAllByCategoryId(Long categoryId);

    Dish findByDetailHash(String detailHash);

    @Query("select count(*) from DISH where dish.category_id = :categoryId")
    int countDishforCategoryId(Long categoryId);
}
