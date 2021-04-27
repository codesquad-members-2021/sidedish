package com.codesquad.team14.repository;

import com.codesquad.team14.domain.Category;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface CategoryRepository extends CrudRepository<Category, Long> {

    Optional<Category> findCategoryByName(String categoryName);

    List<Category> findAllByBestIsTrue();
}
