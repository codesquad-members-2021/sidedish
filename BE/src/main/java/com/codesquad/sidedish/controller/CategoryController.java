package com.codesquad.sidedish.controller;

import com.codesquad.sidedish.CategoryType;
import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Dish;
import com.codesquad.sidedish.repository.CategoryRepository;
import com.codesquad.sidedish.service.CategoryService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/categories")
public class CategoryController {

    private CategoryRepository categoryRepository;

    private CategoryService categoryService;

    public CategoryController(CategoryService categoryService, CategoryRepository categoryRepository) {
        this.categoryService = categoryService;
        this.categoryRepository = categoryRepository;
    }

    @PostMapping("/dishes")
    public void addDish(@RequestBody Dish dish) {
        Category category = categoryRepository.findById(dish.getCategoryId()).get();
        category.addDish(dish);
        categoryRepository.save(category);
    }

    @GetMapping("/main")
    public void readMainDishes() {
        categoryService.readDishesByCategory(CategoryType.MAIN);
    }

    @GetMapping("/soup")
    public void readSoupDishes() {
        categoryService.readDishesByCategory(CategoryType.SOUP);
    }

    @GetMapping("/side")
    public void readSideDishes() {
        categoryService.readDishesByCategory(CategoryType.SIDE);
    }

    @GetMapping("/main/{dishId}")
    public void readMainDish(@PathVariable String dishId) {
        categoryService.readDishByCategoryTypeAndDishId(CategoryType.MAIN, dishId);
    }

    @GetMapping("/soup/{dishId}")
    public void readSoupDish(@PathVariable String dishId) {
        categoryService.readDishByCategoryTypeAndDishId(CategoryType.SOUP, dishId);
    }

    @GetMapping("/side/{dishId}")
    public void readSideDish(@PathVariable String dishId) {
        categoryService.readDishByCategoryTypeAndDishId(CategoryType.SIDE, dishId);
    }
}
