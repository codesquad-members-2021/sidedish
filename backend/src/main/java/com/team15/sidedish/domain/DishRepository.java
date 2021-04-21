package com.team15.sidedish.domain;

import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface DishRepository extends CrudRepository<Dish, String> {
    Optional<Dish> findById(String hash);
    //List<Dish> findAllBySectionName(String sectionName);
}
