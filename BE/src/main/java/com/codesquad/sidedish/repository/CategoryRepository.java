package com.codesquad.sidedish.repository;

import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Dish;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CategoryRepository extends CrudRepository<Category, Long> {
    @Query("Select * from category Where type = :categoryType")
    public List<Dish> findDishesByCategory(String categoryType);
}
