package com.codesquad.sidedish.controller;

import com.codesquad.sidedish.domain.Dish;
import com.codesquad.sidedish.dto.CategoryResponseDto;
import com.codesquad.sidedish.dto.DishDetailResponseDto;
import com.codesquad.sidedish.service.CategoryService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/categories/{category:main|soup|side}")
public class CategoryController {

    private CategoryService categoryService;

    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @PostMapping
    public void addDish(@PathVariable String category, @RequestBody Dish dish) {
        categoryService.addDish(category, dish);
    }

    @GetMapping
    public CategoryResponseDto readDishes(@PathVariable String category) {
        return categoryService.readDishesByCategory(category);
    }

    @GetMapping("/{dishId}")
    public DishDetailResponseDto readDish(@PathVariable String category, @PathVariable String dishId) {
        return categoryService.readDishByCategoryAndDishId(category, dishId);
    }
}
