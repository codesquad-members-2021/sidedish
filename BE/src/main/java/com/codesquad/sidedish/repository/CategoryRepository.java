package com.codesquad.sidedish.repository;

import com.codesquad.sidedish.domain.Category;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface CategoryRepository extends CrudRepository<Category, Long> {

    Optional<Category> findByType(String categoryType);

    @Query("SELECT category.id, category.type, category.name FROM category " +
            "INNER JOIN dish ON dish.category_id = category.id " +
            "WHERE dish.id = :dishId")
    Optional<Category> findByDishId(String dishId);
}
