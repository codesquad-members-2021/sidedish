package com.codesquad.sidedish.repository;

import com.codesquad.sidedish.domain.Category;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CategoryRepository extends CrudRepository<Category, Long> {
    @Override
    List<Category> findAll();
}
