package com.mj_eno.sidedish.domain.dish;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface DishRepository extends CrudRepository<Dish, Long> {

    List<Dish> findAllByMenuCategoryId(Long menuCategoryId);
}
