package com.codesquad.sidedish.repository;

import com.codesquad.sidedish.domain.Category;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface CategoryRepository extends CrudRepository<Category, Long> {
    Optional<Category> findCategoryByType(String categoryType);
}
