package com.codesquad.sidedish.repository;

import com.codesquad.sidedish.entity.Category;
import org.springframework.data.repository.CrudRepository;

public interface CategoryRepository extends CrudRepository<Category, Long> {
}
