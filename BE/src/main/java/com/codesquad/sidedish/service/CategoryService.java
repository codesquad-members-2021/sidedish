package com.codesquad.sidedish.service;

import com.codesquad.sidedish.CategoryType;
import com.codesquad.sidedish.domain.Dish;
import com.codesquad.sidedish.repository.CategoryRepository;

import java.util.List;

public class CategoryService {

    private CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public List<Dish> readDishesByCategory(CategoryType categoryType) {
        return categoryRepository.findDishesByCategory(categoryType.name());
    }

//    public Dish readDishByDishId(CategoryType categoryType, String dishId) {
//        return categoryRepository.findDishByCategoryAndDishId(categoryType.name(), dishId);
//    }
}
