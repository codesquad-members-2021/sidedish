package com.codesquad.sidedish.controller;

import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.dto.CategoryDto;
import com.codesquad.sidedish.service.CategoryService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Set;

@RestController
public class CategoryController {

    CategoryService categoryService;

    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping("/main")
    public List<CategoryDto> getMain() {
        return categoryService.findAll();
    }


    @GetMapping("/soup")
    public String getSoup() {
        return null;
    }

    @GetMapping("/side")
    public String getSide() {
        return null;
    }

}
