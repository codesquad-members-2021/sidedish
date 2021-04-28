package com.team15.sidedish.domain;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface BestRepository extends CrudRepository<Best, Long> {

    @Override
    List<Best> findAll();

    @Query("select dish_hash from best_dishes where best_category_id = :categoryId")
    List<String> findByCategoryId(Long categoryId);

}
