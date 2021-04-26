package com.codesquad.sidedish.service;

import com.codesquad.sidedish.CategoryType;
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

    //카테고리별 조회
    public CategoryResponseDto readDishesByCategory(CategoryType categoryType) {
        Category category = categoryRepository.findByType(categoryType.name());
        return CategoryResponseDto.of(category);
    }

    // 상세 조회
    public DishDetailResponseDto readDishByCategoryTypeAndDishId(CategoryType categoryType, String dishId) {
        Dish tempDish = categoryRepository.findDishByCategoryTypeAndDishId(categoryType.getTypeNum(), dishId);
        return DishDetailResponseDto.of(tempDish);
    }
}
