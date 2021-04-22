package com.codesquad.team14.repository;

import com.codesquad.team14.domain.Category;
import com.codesquad.team14.domain.Item;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryRepository extends CrudRepository<Category, Long> {
}
