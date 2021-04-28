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

    public Dish findDishByTypeAndId(String type, String dishId) {
        Category category = findCategoryByType(type);
        return category.getDishByDishId(dishId);
    }

    public void addDish(String categoryType, Dish dish) {
        Category category = categoryRepository.findCategoryByType(categoryType);
        category.addDish(dish);
        categoryRepository.save(category);
    }
}
