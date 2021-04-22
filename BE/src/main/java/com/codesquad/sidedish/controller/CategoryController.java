package com.codesquad.sidedish.controller;

import com.codesquad.sidedish.entity.Category;
import com.codesquad.sidedish.repository.CategoryRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class CategoryController {
    private CategoryRepository categoryRepository;

    public CategoryController(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    @PostMapping("/category")
    public void add(@RequestBody Category category) {
        categoryRepository.save(category);
    }
}
