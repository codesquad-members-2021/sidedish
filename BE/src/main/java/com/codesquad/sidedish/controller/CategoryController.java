package com.codesquad.sidedish.controller;

import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Dish;
import com.codesquad.sidedish.dto.CategoryResponseDto;
import com.codesquad.sidedish.dto.DishesDto;
import com.codesquad.sidedish.service.CategoryService;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/categories/{type}")
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
    public DishesDto readDishes(@PathVariable String type) {
        Category category = categoryService.findCategoryByType(type);
        List<CategoryResponseDto> dishList = new ArrayList<>();
        dishList.add(CategoryResponseDto.of(category));
        return new DishesDto(dishList);
    }
}
