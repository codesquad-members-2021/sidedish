package com.codesquad.sidedish.controller;

import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Dish;
import com.codesquad.sidedish.dto.CategoryResponseDto;
import com.codesquad.sidedish.dto.DishDetailResponseDto;
import com.codesquad.sidedish.dto.ResponseDto;
import com.codesquad.sidedish.service.CategoryService;
import org.springframework.http.ResponseEntity;
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
        categoryService.addDish(type, dish);
    }

    @GetMapping
    public CategoryResponseDto readDishes(@PathVariable String type) {
        Category category = categoryService.findCategoryByType(type);
        return CategoryResponseDto.of(category);
    }

    @GetMapping("/{dishId}")
    public DishDetailResponseDto readDish(@PathVariable String type, @PathVariable String dishId) {
        Dish dish = categoryService.findDishByTypeAndId(type, dishId);
        return DishDetailResponseDto.of(dish);
    }

    @PutMapping("/{dishId}")
    public ResponseEntity<ResponseDto> orderDish(@PathVariable String type, @PathVariable String dishId, @RequestParam("count") int orderSize) {
        if (categoryService.orderDish(type, dishId, orderSize)) {
            return ResponseEntity.ok().body(new ResponseDto("Success"));
        }
        return ResponseEntity.badRequest().body(new ResponseDto("반찬 재고 부족"));
    }
}
