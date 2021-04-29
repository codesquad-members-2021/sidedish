package com.mj_eno.sidedish.domain.dishBadge;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface DishBadgeRepository extends CrudRepository<DishBadge, Long> {

    List<DishBadge> findAllByDishId(Long dishId);
}
