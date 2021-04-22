package com.codesquad.sidedish.category.domain;

import org.springframework.data.repository.CrudRepository;

public interface SidedishCategoryRepository extends CrudRepository<SidedishCategory, Long> {

    SidedishCategory findByCategoryName(String categoryName);
}
