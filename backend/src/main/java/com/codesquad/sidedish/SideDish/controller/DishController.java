package com.codesquad.sidedish.SideDish.controller;

import com.codesquad.sidedish.SideDish.dto.CategoryDto;
import com.codesquad.sidedish.SideDish.dto.DishDetailDto;
import com.codesquad.sidedish.SideDish.dto.DishDto;
import com.codesquad.sidedish.SideDish.service.CategoryService;
import com.codesquad.sidedish.SideDish.service.DishService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class DishController {
    private final CategoryService categoryService;
    private final DishService dishService;

    DishController(CategoryService categoryService, DishService dishService) {
        this.categoryService = categoryService;
        this.dishService = dishService;
    }

    @GetMapping
    @RequestMapping("/categories")
    public ResponseEntity<List<CategoryDto>> getCategories() {
        List<CategoryDto> categories = categoryService.getList();
        return ResponseEntity.ok().body(categories);
    }

    @GetMapping("/detail/{hash}")
    public ResponseEntity<DishDetailDto> getDetail(@PathVariable("hash") String hash) {
        DishDetailDto dishDetailDto = dishService.getDetail(hash);
        return ResponseEntity.ok().body(dishDetailDto);
    }

    @GetMapping("/main")
    public ResponseEntity<List<DishDto>> getMainList() {
        List<DishDto> dishes = dishService.getList(1);
        return ResponseEntity.ok().body(dishes);
    }

    @GetMapping("/side")
    public ResponseEntity<List<DishDto>> getSideList() {
        List<DishDto> dishes = dishService.getList(1);
        return ResponseEntity.ok().body(dishes);
    }

    @GetMapping("/soup")
    public ResponseEntity<List<DishDto>> getSoupList() {
        List<DishDto> dishes = dishService.getList(1);
        return ResponseEntity.ok().body(dishes);
    }
}
