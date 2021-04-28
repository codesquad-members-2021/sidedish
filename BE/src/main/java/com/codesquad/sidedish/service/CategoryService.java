package com.codesquad.sidedish.service;

import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Dish;
import com.codesquad.sidedish.dto.CategoryResponseDto;
import com.codesquad.sidedish.dto.DishDetailResponseDto;
import com.codesquad.sidedish.repository.CategoryRepository;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {

    private CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public Category findCategoryByType(String type) {
        return categoryRepository.findCategoryByType(type);
    }

    // 상세 조회
    public DishDetailResponseDto readDishByCategoryAndDishId(String categoryType, String dishId) {
        Category category = categoryRepository.findCategoryByType(categoryType);
        Dish dish = category.getDishByDishId(dishId);
        return DishDetailResponseDto.of(dish);
    }

    public void addDish(String categoryType, Dish dish) {
        Category category = categoryRepository.findCategoryByType(categoryType);
        category.addDish(dish);
        categoryRepository.save(category);
    }
}
