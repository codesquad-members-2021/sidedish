package com.codesquad.sidedish.repository;

import com.codesquad.sidedish.entity.Dish;
import org.springframework.data.repository.CrudRepository;

public interface DishRepository extends CrudRepository<Dish, String> {
}
