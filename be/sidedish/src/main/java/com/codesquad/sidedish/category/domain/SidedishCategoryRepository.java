package com.codesquad.sidedish.category.domain;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface SidedishCategoryRepository extends CrudRepository<SidedishCategory, Long> {

    SidedishCategory findByCategoryName(String categoryName);
}
