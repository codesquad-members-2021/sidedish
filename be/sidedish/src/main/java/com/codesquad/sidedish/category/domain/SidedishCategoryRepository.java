package com.codesquad.sidedish.category.domain;

import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface SidedishCategoryRepository extends CrudRepository<SidedishCategory, Long> {

    Optional<SidedishCategory> findByCategoryName(String categoryName);
}
