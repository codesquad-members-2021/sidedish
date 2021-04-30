package com.codesquad.sidedish.controller;

import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Dish;
import com.codesquad.sidedish.dto.CategoryResponseDto;
import com.codesquad.sidedish.dto.ResponseDto;
import com.codesquad.sidedish.service.CategoryService;
import com.codesquad.sidedish.util.Status;
import org.springframework.http.ResponseEntity;
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
    public ResponseEntity<ResponseDto> addDish(@PathVariable String type, @RequestBody Dish dish) {
        categoryService.addDishToCategory(type, dish);
        return ResponseEntity.ok().body(ResponseDto.of(Status.OK));
    }

    @GetMapping
    public ResponseEntity<CategoryResponseDto> readDishes(@PathVariable String type) {
        Category category = categoryService.findCategoryByType(type);
        return ResponseEntity.ok().body(CategoryResponseDto.of(category));
    }
}
