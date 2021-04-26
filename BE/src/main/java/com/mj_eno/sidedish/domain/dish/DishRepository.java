package com.mj_eno.sidedish.domain.dish;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface DishRepository extends CrudRepository<Dish, Long> {

    Optional<Dish> findByHash(String hash);

    List<Dish> findAllByMenuCategoryId(Long menuCategoryId);

    @Query("SELECT id FROM dish WHERE dish.best_menu_category_id = :bestMenuCategoryId")
    List<Long> findIdAllByBestMenuCategoryId(Long bestMenuCategoryId);

    @Query("SELECT id FROM dish")
    List<Long> findIdAllByDish();
}
