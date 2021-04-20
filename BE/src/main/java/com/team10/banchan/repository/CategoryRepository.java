package com.team10.banchan.repository;

import com.team10.banchan.model.Category;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CategoryRepository extends CrudRepository<Category, Long> {
    @Override
    List<Category> findAll();
}
