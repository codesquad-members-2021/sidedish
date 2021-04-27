package com.codesquad.sidedish.repository;

import com.codesquad.sidedish.domain.Category;
import org.springframework.data.repository.CrudRepository;

public interface CategoryRepository extends CrudRepository<Category, Long> {
    Category findCategoryByType(String categoryType);
}
