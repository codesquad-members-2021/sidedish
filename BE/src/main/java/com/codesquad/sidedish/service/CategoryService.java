package com.codesquad.sidedish.service;

import com.codesquad.sidedish.exception.NotFoundException;
import com.codesquad.sidedish.domain.Category;
import com.codesquad.sidedish.domain.Dish;
import com.codesquad.sidedish.repository.CategoryRepository;
import com.codesquad.sidedish.util.Status;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {

    private CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public Category findCategoryByType(String type) {
        return categoryRepository.findByType(type).orElseThrow(() -> new NotFoundException(Status.NOTFOUND_CATEGORY.getMessage()));
    }

    public void addDishToCategory(String type, Dish dish) {
        Category category = findCategoryByType(type);
        category.addDish(dish);
        categoryRepository.save(category);
    }
}
