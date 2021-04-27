package com.codesquad.team14.controller;

import com.codesquad.team14.dto.CategoryDto;
import com.codesquad.team14.dto.DetailedItemDto;
import com.codesquad.team14.dto.ItemDto;
import com.codesquad.team14.service.CategoryService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CategoryController {

    private final CategoryService categoryService;

    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping("/best")
    public List<CategoryDto> readAllBest() {
        return categoryService.readAllBest();
    }

    @GetMapping("/best/{categoryId}")
    public CategoryDto readOneBestCategory(@PathVariable Long categoryId) {
        return categoryService.readOneBestCategory(categoryId);
    }

    @GetMapping("/{categoryName}")
    public List<ItemDto> getAllFromCategory(@PathVariable String categoryName) {
        return categoryService.readAllByCategoryName(categoryName);
    }

    @GetMapping("/{categoryName}/{itemId}")
    public DetailedItemDto readDetailedItem(@PathVariable String categoryName, @PathVariable Long itemId) {
        return categoryService.readDetailedItem(categoryName, itemId);
    }
}
