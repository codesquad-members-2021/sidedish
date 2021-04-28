package com.codesquad.sidedish.SideDish.domain.dish;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface DishRepository extends CrudRepository<Dish, String> {
//    @Query("SELECT detail_hash FROM dish WHERE DISH.CATEGORY_ID =:categoryId"

    @Query("select * from DISH where dish.category_id = :categoryId")
    List<Dish> findAllByCategoryId(@Param("categoryId")Long categoryId);

    @Query("SELECT * FROM DISH where dish.detail_hash =:detailHash")
    Dish findByDetailHash(String detailHash);

    @Query("select count(*) from DISH where dish.category_id = :categoryId")
    int countDishforCategoryId(Long categoryId);
}
