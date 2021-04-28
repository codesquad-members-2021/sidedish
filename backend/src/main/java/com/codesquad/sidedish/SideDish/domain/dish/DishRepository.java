package com.codesquad.sidedish.SideDish.domain.dish;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface DishRepository extends CrudRepository<Dish, String> {
//    @Query("SELECT detail_hash FROM dish WHERE DISH.CATEGORY_ID =:categoryId"



    List<Dish> findAllByCategoryId(Long categoryId);

    Dish findByDetailHash(String detailHash);

    @Query("select count(*) from DISH where dish.category_id = :categoryId")
    int countDishforCategoryId(Long categoryId);
}
