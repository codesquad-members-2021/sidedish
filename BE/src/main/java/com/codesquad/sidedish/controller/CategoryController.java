package com.codesquad.sidedish.controller;

import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Dish;
import com.codesquad.sidedish.dto.CategoryResponseDto;
import com.codesquad.sidedish.service.CategoryService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/categories/{type:main|soup|side}")
public class CategoryController {

    private CategoryService categoryService;

    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @PostMapping
    public void addDish(@PathVariable String type, @RequestBody Dish dish) {
        categoryService.addDishToCategory(type, dish);
    }

    @GetMapping
    public CategoryResponseDto readDishes(@PathVariable String type) {
        Category category = categoryService.findCategoryByType(type);
        return CategoryResponseDto.of(category);
    }
}
