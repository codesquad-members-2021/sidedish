package com.codesquad.sidedish.SideDish.domain;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface DishRepository extends CrudRepository<Dish, String> {
    List<Dish> findAllByCategoryId(long categoryId);

    Dish findByDetailHash(String detailHash);
}
